{# limits data in dev to the last 'x' number of days, default x=3 #}

{% macro limit_data_in_dev(column_name, days_of_data=3) %}
{%- if target.name == 'dev' -%}
where {{ column_name }} >= date_add(current_date, interval -{{ days_of_data }} day)
{%- endif -%}
{% endmacro %}