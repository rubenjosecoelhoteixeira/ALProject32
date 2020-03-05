query 50133 "Customer_Sales_Quantity"
{
    QueryType = Normal;

    elements
    {
        dataitem(C; Customer)
        {
            column(Customer_Number; "No.")
            {
            }
            column(Customer_Name; Name)
            {
            }
            dataitem(SL; "Sales Line")
            {
                DataItemLink = "Sell-to Customer No." = c."No.";
                SqlJoinType = InnerJoin;
                DataItemTableFilter = Quantity = filter(> 10);
                column(Qty; Quantity)
                {
                    Method = Sum;
                    ColumnFilter = Qty = filter(< 50);
                }
                filter(Location_Code; "Location Code")
                {
                    ColumnFilter = Location_Code = const('White');
                }
            }
        }
    }
}