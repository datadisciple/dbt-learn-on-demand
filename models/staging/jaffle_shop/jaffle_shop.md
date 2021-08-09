{% docs order_status %}

One of the following values:

| status         | definition                                                 |
|----------------|------------------------------------------------------------|
| placed         | order placed but not yet shipped                           |
| shipped        | order shipped, but has not been delivered                  |
| completed      | order has been recieved by customer                        |
| return_pending | customer has indicated they would like to return this item |
| returned       | item has been returned                                     |

{% enddocs %}