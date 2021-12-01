page 50100 "Production Order API Endpoint"
{
    PageType = API;
    Caption = 'productionOrderApiEndpoint';
    APIPublisher = 'T';
    APIGroup = 'Test';
    APIVersion = 'v1.0';
    EntityName = 'productionOrder';
    EntitySetName = 'productionOrders';
    SourceTable = "Production Order";
    SourceTableView = where(Status = const(Released));
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(status; Rec.Status)
                {
                    Caption = 'Status';
                }
                field(no; Rec."No.")
                {
                    Caption = 'No';
                }
            }
        }
    }
}