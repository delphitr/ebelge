program EBelge;

uses
  Vcl.Forms,
  integrator in 'integrator.pas',
  foriba in 'foriba.pas',
  ubltr in 'ubltr.pas',
  UBLInvoice21 in 'UBLInvoice21.pas',
  Test in 'Test.pas' {frmTest},
  foriba_soap in 'foriba_soap.pas',
  araclar in 'araclar.pas',
  hatalar in 'hatalar.pas',
  kolaysoft in 'kolaysoft.pas',
  kolaysoft_ef in 'kolaysoft_ef.pas',
  kolaysoft_qd in 'kolaysoft_qd.pas',
  kolaysoft_ea in 'kolaysoft_ea.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTest, frmTest);
  Application.Run;
end.
