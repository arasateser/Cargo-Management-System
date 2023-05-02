prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.0-16'
,p_default_workspace_id=>11151152342368489839
,p_default_application_id=>166271
,p_default_id_offset=>0
,p_default_owner=>'WKSP_CARGOMANAGEMENTSYSTEM'
);
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Cargo Management'
,p_alias=>'CARGO-MANAGEMENT'
,p_step_title=>'Cargo Management'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'    function getVal(pNd){',
'    return ($v(pNd)!="")?parseFloat($v(pNd)):0',
'    }',
'    function calcItems(){',
'',
'    if (getVal(''HEIGHT_FIELD'') > 1) {',
'        $s(''P6_DELIVERY_PRICE'',(getVal(''P6_CARGO_HEIGHT'')*getVal(''P6_CARGO_LENGTH'')*getVal(''''P6_CARGO_WIDTH''))/3000);',
'    }',
'        else {',
'        $s(''P8_TOTAL'',2000);',
'    }',
'    }',
'</script>'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'ARASATESER@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230105132120'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20544866894220758003)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1771585908299878328)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(1771470653587878275)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(1771648135927878358)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20544867975301758106)
,p_plug_name=>'Cargo Details'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(1771573412726878323)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'CARGO'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33864227354719298402)
,p_plug_name=>'Recipient Detail'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(1771573412726878323)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'TABLE'
,p_query_table=>'RECIPIENT'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33864228062033298409)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(33864227354719298402)
,p_button_name=>'Create'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(1771646548919878358)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20106221712398472118)
,p_name=>'P6_CARGO_LCOATION_FROM'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(20544867975301758106)
,p_prompt=>'From -'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BRANCH.BRANCH_ADRESS'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(1771644068812878356)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20544868226124758106)
,p_name=>'P6_TRACKING_NO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(20544867975301758106)
,p_item_source_plug_id=>wwv_flow_imp.id(20544867975301758106)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tracking No'
,p_source=>'TRACKING_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(1771644068812878356)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20544868607652758107)
,p_name=>'P6_CARGO_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(20544867975301758106)
,p_item_source_plug_id=>wwv_flow_imp.id(20544867975301758106)
,p_prompt=>'Cargo Type'
,p_source=>'CARGO_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Package;Package,Document;Documant'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(1771645315688878357)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20544869095148758107)
,p_name=>'P6_CARGO_WIDTH'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(20544867975301758106)
,p_item_source_plug_id=>wwv_flow_imp.id(20544867975301758106)
,p_prompt=>'Width'
,p_source=>'CARGO_WIDTH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(1771644068812878356)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20544869408716758108)
,p_name=>'P6_CARGO_LENGTH'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(20544867975301758106)
,p_item_source_plug_id=>wwv_flow_imp.id(20544867975301758106)
,p_prompt=>'Length'
,p_source=>'CARGO_LENGTH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(1771644068812878356)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20544869894517758108)
,p_name=>'P6_CARGO_HEIGHT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(20544867975301758106)
,p_item_source_plug_id=>wwv_flow_imp.id(20544867975301758106)
,p_prompt=>'Height'
,p_source=>'CARGO_HEIGHT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(1771644068812878356)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20544870290893758108)
,p_name=>'P6_DELIVERY_PRICE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(20544867975301758106)
,p_item_source_plug_id=>wwv_flow_imp.id(20544867975301758106)
,p_source=>'DELIVERY_PRICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20544870651552758109)
,p_name=>'P6_PACKAGE_WEIGHT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(20544867975301758106)
,p_item_source_plug_id=>wwv_flow_imp.id(20544867975301758106)
,p_prompt=>'Weight'
,p_source=>'PACKAGE_WEIGHT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(1771644068812878356)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20544871093815758109)
,p_name=>'P6_CARGO_LOCATION_TO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(20544867975301758106)
,p_item_source_plug_id=>wwv_flow_imp.id(20544867975301758106)
,p_prompt=>'To -'
,p_source=>'CARGO_LOCATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BRANCH.BRANCH_ADRESS'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(1771644068812878356)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20544871421564758109)
,p_name=>'P6_DELIVERY_TIME'
,p_source_data_type=>'DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(20544867975301758106)
,p_item_source_plug_id=>wwv_flow_imp.id(20544867975301758106)
,p_prompt=>'Delivery Time'
,p_source=>'DELIVERY_TIME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(1771644068812878356)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20544871884417758109)
,p_name=>'P6_BRANCH_BRANCH_NO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(20544867975301758106)
,p_item_source_plug_id=>wwv_flow_imp.id(20544867975301758106)
,p_source=>'BRANCH_BRANCH_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20544872296446758110)
,p_name=>'P6_CARGO_WARNING'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(20544867975301758106)
,p_item_source_plug_id=>wwv_flow_imp.id(20544867975301758106)
,p_source=>'CARGO_WARNING'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20544872694475758110)
,p_name=>'P6_CARGO_DELIVERY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(20544867975301758106)
,p_item_source_plug_id=>wwv_flow_imp.id(20544867975301758106)
,p_item_default=>'Not Delivered'
,p_source=>'CARGO_DELIVERY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33864227520415298404)
,p_name=>'P6_RECIP_NO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(33864227354719298402)
,p_item_source_plug_id=>wwv_flow_imp.id(33864227354719298402)
,p_item_default=>'SEQ_TRACKINGNO'
,p_item_default_type=>'SEQUENCE'
,p_source=>'RECIP_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33864227622082298405)
,p_name=>'P6_RECIP_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(33864227354719298402)
,p_item_source_plug_id=>wwv_flow_imp.id(33864227354719298402)
,p_prompt=>'Name'
,p_source=>'RECIP_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_field_template=>wwv_flow_imp.id(1771644068812878356)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33864227731839298406)
,p_name=>'P6_RECIP_SURNAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(33864227354719298402)
,p_item_source_plug_id=>wwv_flow_imp.id(33864227354719298402)
,p_prompt=>'Surname'
,p_source=>'RECIP_SURNAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_field_template=>wwv_flow_imp.id(1771644068812878356)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33864227874715298407)
,p_name=>'P6_RECIP_ADRESS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(33864227354719298402)
,p_item_source_plug_id=>wwv_flow_imp.id(33864227354719298402)
,p_prompt=>'Adress'
,p_source=>'RECIP_ADRESS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(1771644068812878356)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33864227911204298408)
,p_name=>'P6_BRANCH_BRANCH_NO_1'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(33864227354719298402)
,p_item_source_plug_id=>wwv_flow_imp.id(33864227354719298402)
,p_source=>'BRANCH_BRANCH_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20544878841014758115)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(20544867975301758106)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Cargo Management'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>20544878841014758115
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20544878490414758114)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(20544867975301758106)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form cargo Cargo Management'
,p_internal_uid=>20544878490414758114
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33864227490463298403)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(33864227354719298402)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Cargo Management'
,p_internal_uid=>33864227490463298403
);
wwv_flow_imp.component_end;
end;
/
