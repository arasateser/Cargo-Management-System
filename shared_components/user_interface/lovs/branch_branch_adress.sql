prompt --application/shared_components/user_interface/lovs/branch_branch_adress
begin
--   Manifest
--     BRANCH.BRANCH_ADRESS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.0-16'
,p_default_workspace_id=>11151152342368489839
,p_default_application_id=>166271
,p_default_id_offset=>0
,p_default_owner=>'WKSP_CARGOMANAGEMENTSYSTEM'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(12818720377287954900)
,p_lov_name=>'BRANCH.BRANCH_ADRESS'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'BRANCH'
,p_return_column_name=>'BRANCH_NO'
,p_display_column_name=>'BRANCH_ADRESS'
,p_default_sort_column_name=>'BRANCH_ADRESS'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
