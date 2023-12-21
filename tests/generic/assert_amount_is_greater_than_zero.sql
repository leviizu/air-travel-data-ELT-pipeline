{% test assert_amount_is_greater_than_zero(column_name, model_name, group_by_column)%}
select
{{group_by_column}},
  {{column_name}}
from model_name
where {{column_name}} < 0
group by 1,2
{% endtest %}