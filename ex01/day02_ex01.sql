select object_name
from
	(select name as object_name , 1 as sort_group from person 
	 union all
	 select pizza_name, 2 from menu
	 ) as t
order by sort_group, object_name
