unit Unit1;

interface

uses System.Classes;

type
    TData = class(TThread)
    
      private
      public
            Constructor Create();
            procedure Execute; override;
      published
    end;

var
   Hilo: TData;

implementation
  Constructor TData.Create;
  begin
  
  end;

  Procedure TData.Execute;
  begin
  
  end;

end.
