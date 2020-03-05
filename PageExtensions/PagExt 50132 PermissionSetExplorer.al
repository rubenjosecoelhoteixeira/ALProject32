pageextension 50132 PermissionSetExplorer extends "Permission Sets"
{
    actions
    {
        addafter(Permissions)
        {
            action(RunQuery)
            {
                Promoted = true;
                PromotedCategory = New;
                trigger OnAction();
                begin
                    // Save the query in root C, in format CSV
                    Query.SaveAsCsv(50133, 'C:\MyQuery.csv');
                end;
            }
        }
    }
}