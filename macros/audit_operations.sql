{% macro insert_model_audit(action_name) %}

insert into nyc_taxi.logs.dbt_audit (audit_type) 
values (concat('{{ this }}', ' ', '{{ action_name }}'));

commit;

{% endmacro %}

{% macro insert_project_audit(action_name) %}


insert into nyc_taxi.logs.dbt_audit (audit_type) 
values ('{{ action_name }}');

commit;

{% endmacro %}