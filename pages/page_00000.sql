prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
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
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
,p_last_updated_by=>'ARASATESER@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20221015120828'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1781960654399089637)
,p_button_sequence=>10
,p_button_name=>'LogInButton'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(1771646603558878358)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Log In'
,p_button_position=>'BEFORE_NAVIGATION_BAR'
);
wwv_flow_imp.component_end;
end;
/
