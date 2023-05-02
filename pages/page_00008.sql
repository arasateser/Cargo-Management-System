prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
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
 p_id=>8
,p_name=>'Calculate Price'
,p_alias=>'CALCULATE-PRICE'
,p_step_title=>'Calculate Price'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'    function getVal(pNd){',
'    return ($v(pNd)!="")?parseFloat($v(pNd)):0',
'    }',
'    function calcItems(){',
'',
'    if (getVal(''HEIGHT_FIELD'') > 1) {',
'        $s(''P8_TOTAL'',getVal(''DISTANCE'')*(getVal(''HEIGHT_FIELD'')*getVal(''LENGTH_FIELD'')*getVal(''WEIGTH_FIELD''))/3000);',
'    }',
'        else {',
'        $s(''P8_TOTAL'',getVal(''DISTANCE'')*20);',
'    }',
'    }',
'</script>'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'ARASATESER@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230117183923'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12819067148038241281)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12788928813037699007)
,p_name=>'DISTANCE'
,p_item_sequence=>60
,p_prompt=>'DISTANCE(KM)'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'onchange="calcItems();"'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(1771644068812878356)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12788928980023699008)
,p_name=>'LENGTH_FIELD'
,p_item_sequence=>40
,p_prompt=>'LENGTH (CM)'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(1771644068812878356)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12788929098849699009)
,p_name=>'P8_TOTAL'
,p_item_sequence=>70
,p_prompt=>'Estimated Price'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(1771644068812878356)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12788929191770699010)
,p_name=>'WEIGTH_FIELD'
,p_item_sequence=>50
,p_prompt=>'WEIGTH (CM)'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(1771644068812878356)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12788929204427699011)
,p_name=>'HEIGHT_FIELD'
,p_item_sequence=>30
,p_prompt=>'HEIGHT (CM)'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(1771644068812878356)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12788929830773699017)
,p_name=>'CARGOTYPE_CBOX'
,p_is_required=>true
,p_item_sequence=>10
,p_prompt=>'Cargo Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Package;Package,Document;Document'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(1771644068812878356)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20106224691773472147)
,p_name=>'P8_INFO'
,p_item_sequence=>80
,p_item_default=>'If the type is Package, enter all the measurements and click; Document, onyl enter distance and click.'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(20106224212703472143)
,p_validation_name=>'New'
,p_validation_sequence=>10
,p_validation=>'HEIGHT_FIELD'
,p_validation2=>'10'
,p_validation_type=>'ITEM_IN_VALIDATION_EQ_STRING2'
,p_error_message=>'DOCUMANT SECTIN'
,p_associated_item=>wwv_flow_imp.id(12788929830773699017)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
