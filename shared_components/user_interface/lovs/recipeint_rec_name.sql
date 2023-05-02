prompt --application/shared_components/user_interface/lovs/recipeint_rec_name
begin
--   Manifest
--     RECIPEINT.REC_NAME
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
 p_id=>wwv_flow_imp.id(28963911694984345141)
,p_lov_name=>'RECIPEINT.REC_NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'RECIPEINT'
,p_return_column_name=>'REC_NO'
,p_display_column_name=>'REC_NAME'
,p_default_sort_column_name=>'REC_NAME'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
