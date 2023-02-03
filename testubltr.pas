unit testubltr;

interface

 uses
   TestFramework, ubltr;
 type
   TestTUblTr = class(TTestCase)
   strict private
     aTUblTr: TUblTr;
   public
     procedure SetUp; override;
     procedure TearDown; override;
   published
     procedure TestAdd;
     procedure TestSub;
   end;

implementation

procedure TestTUblTr.SetUp;
 begin
   aTUblTr := TUblTr.Create;
 end;

 procedure TestTUblTr.TearDown;
 begin
   aTUblTr := nil;
 end;

 procedure TestTUblTr.TestAdd;
 var
   _result: System.Integer;
   y: System.Integer;
   x: System.Integer;
 begin
 //  _result := aTCalc.Add(x, y);
   // TODO: Add testcode here
 end;

 procedure TestTUblTr.TestSub;
 var
   _result: System.Integer;
   y: System.Integer;
   x: System.Integer;
 begin
   //_result := aTCalc.Sub(x, y);
   // TODO: Add testcode here
 end;

initialization
   // Register any test cases with the test runner
  RegisterTest(TestTUblTr.Suite);
end.
