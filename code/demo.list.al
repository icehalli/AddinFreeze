page 50104 "Demo List"
{
    ApplicationArea = All;
    Caption = 'Demo List';
    CardPageID = "Demo Card";
    Editable = true;
    PageType = List;
    SourceTable = "Demo Table";
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(ID; ID)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}

