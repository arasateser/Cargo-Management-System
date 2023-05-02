prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 166271
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.0-16'
,p_default_workspace_id=>11151152342368489839
,p_default_application_id=>166271
,p_default_id_offset=>0
,p_default_owner=>'WKSP_CARGOMANAGEMENTSYSTEM'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(1771649526332878360)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(1771497329280878288)
,p_default_dialog_template=>wwv_flow_imp.id(1771492075103878285)
,p_error_template=>wwv_flow_imp.id(1771482038261878281)
,p_printer_friendly_template=>wwv_flow_imp.id(1771497329280878288)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(1771482038261878281)
,p_default_button_template=>wwv_flow_imp.id(1771646548919878358)
,p_default_region_template=>wwv_flow_imp.id(1771573412726878323)
,p_default_chart_template=>wwv_flow_imp.id(1771573412726878323)
,p_default_form_template=>wwv_flow_imp.id(1771573412726878323)
,p_default_reportr_template=>wwv_flow_imp.id(1771573412726878323)
,p_default_tabform_template=>wwv_flow_imp.id(1771573412726878323)
,p_default_wizard_template=>wwv_flow_imp.id(1771573412726878323)
,p_default_menur_template=>wwv_flow_imp.id(1771585908299878328)
,p_default_listr_template=>wwv_flow_imp.id(1771573412726878323)
,p_default_irr_template=>wwv_flow_imp.id(1771563616017878318)
,p_default_report_template=>wwv_flow_imp.id(1771611578044878340)
,p_default_label_template=>wwv_flow_imp.id(1771644068812878356)
,p_default_menu_template=>wwv_flow_imp.id(1771648135927878358)
,p_default_calendar_template=>wwv_flow_imp.id(1771648200267878358)
,p_default_list_template=>wwv_flow_imp.id(1771627928986878348)
,p_default_nav_list_template=>wwv_flow_imp.id(1771639711379878354)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(1771639711379878354)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(1771634358448878351)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(1771510242421878294)
,p_default_dialogr_template=>wwv_flow_imp.id(1771507406730878293)
,p_default_option_label=>wwv_flow_imp.id(1771644068812878356)
,p_default_required_label=>wwv_flow_imp.id(1771645315688878357)
,p_default_navbar_list_template=>wwv_flow_imp.id(1771633949055878351)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/22.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
