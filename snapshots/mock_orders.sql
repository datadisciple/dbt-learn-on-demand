{% snapshot mock_orders %}

{% set new_schema = target.schema + '_snapshot' %}

{{
    config(
      target_database='tonal-benefit-320117',
      target_schema=new_schema,
      unique_key='order_id',

      strategy='timestamp',
      updated_at='updated_at',
    )
}}

select * from tonal-benefit-320117.{{target.schema}}.mock_orders

{% endsnapshot %}