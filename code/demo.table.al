table 50105 "Demo Table"
{
    Caption = 'Demo Table';
    DrillDownPageID = "Demo Card";
    LookupPageID = "Demo Card";

    fields
    {
        field(1; ID; Code[10])
        {
            Caption = 'ID';
            NotBlank = true;
        }
    }

    keys
    {
        key(Key1; ID)
        {
            Clustered = true;
        }
    }
}

