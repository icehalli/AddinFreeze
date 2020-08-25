page 50106 "Demo Card"
{
    Caption = 'Demo Card';
    PageType = Card;
    SourceTable = "Demo Table";

    layout
    {
        area(content)
        {
            usercontrol(EmptyAddin; EmptyAddin)
            {
                ApplicationArea = All;
            }
        }
    }
}