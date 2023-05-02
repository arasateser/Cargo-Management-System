prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'CAMAS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'home page help'
,p_page_component_map=>'13'
,p_last_updated_by=>'ARASATESER@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230113141719'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1771685930057878387)
,p_plug_name=>'CAMAS'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(1771540480553878308)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(12788932330833699042)
,p_name=>'KargoDetayRapor'
,p_template=>wwv_flow_imp.id(1771573412726878323)
,p_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cargo_type,delivery_price, cargo_delivery, delivery_time, cargo_warning',
'from cargo',
'where TRACKING_NO =NVL(:P1_NUMBER, TRACKING_NO)'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1_NUMBER'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(1771611578044878340)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12788932841374699047)
,p_query_column_id=>1
,p_column_alias=>'CARGO_TYPE'
,p_column_display_sequence=>20
,p_column_heading=>'Cargo Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(20057570814001519301)
,p_query_column_id=>2
,p_column_alias=>'DELIVERY_PRICE'
,p_column_display_sequence=>60
,p_column_heading=>'Delivery Price'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(20057575792244519350)
,p_query_column_id=>3
,p_column_alias=>'CARGO_DELIVERY'
,p_column_display_sequence=>110
,p_column_heading=>'Cargo Delivery'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(20057571181834519304)
,p_query_column_id=>4
,p_column_alias=>'DELIVERY_TIME'
,p_column_display_sequence=>90
,p_column_heading=>'Delivery Time'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(20057575694941519349)
,p_query_column_id=>5
,p_column_alias=>'CARGO_WARNING'
,p_column_display_sequence=>100
,p_column_heading=>'Cargo Warning'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12788932516761699044)
,p_name=>'P1_NUMBER'
,p_item_sequence=>60
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tracking Number'
,p_source=>'0'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(1771644068812878356)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20057571499886519307)
,p_name=>'arama'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_NUMBER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20057571551433519308)
,p_event_id=>wwv_flow_imp.id(20057571499886519307)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12788932330833699042)
);
wwv_flow_imp.component_end;
end;
/