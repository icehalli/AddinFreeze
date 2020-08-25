PROBLEM:
When opening a Card the controladdin does not load sometimes ("Uncaught TypeError: Cannot read property 'controlAddInManifest' of null").
And you cannot close the page or do anything, need to refresh browser to continue work.
It seems that after refreshing this never happens again until the extension is published again (from vscode in this case)

TO REPRODUCE:
1. Add one item in the Demo list
(maybe need to restart from VSCode after adding item, to reproduce)

2. Open the demo card from the list

3. It usually freezes on first open, if not then when swapping between View and Edit open.
E.g. click View -> close card -> click Edit -> close card -> click View

ERROR in event viewer:
Error accessing Website 
Unhandled error occurred on a browser or device client:
{
  "clientInfo": {
    "platform": "Win32",
    "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36",
    "browserLanguage": "en-US"
  },
  "message": "Uncaught TypeError: Cannot read property 'controlAddInManifest' of null",
  "pageUrl": "http://localhost:8080/mb164/?page=50104&debuggingcontext=3f9c9fe2-6a45-42ca-a1e8-cfe16f536570&sk=3f9c9fe2-6a45-42ca-a1e8-cfe16f536570&runinframe=1",
  "originalError": {},
  "location": {
    "name": "http://localhost:8080/mb164/js/framework.js?h=59F3F6830EB0AD6803BF8400B314054538E0B12BD0EC20DE0F6AC79008A9905B&_v=16.0.14648.15420",
    "url": "http://localhost:8080/mb164/js/framework.js?h=59F3F6830EB0AD6803BF8400B314054538E0B12BD0EC20DE0F6AC79008A9905B&_v=16.0.14648.15420",
    "lineNumber": 4706,
    "columnNumber": 317
  },
  "detailedMessage": "    at DN.ScriptControlAddInAdapter.get_$75 (http://localhost:8080/mb164/js/framework.js?h=59F3F6830EB0AD6803BF8400B314054538E0B12BD0EC20DE0F6AC79008A9905B&_v=16.0.14648.15420:4708:213)\r\n    at DN.ScriptControlAddInAdapter.$78 (http://localhost:8080/mb164/js/framework.js?h=59F3F6830EB0AD6803BF8400B314054538E0B12BD0EC20DE0F6AC79008A9905B&_v=16.0.14648.15420:4708:1310)\r\n    at b (http://localhost:8080/mb164/js/mscorlib.js?h=1CCEC06D8AA4DE157D8628607C009CB29324A011857B8168B6AA098AD2B019F0&_v=16.0.14648.15420:1:26060)\r\n",
  "silent": true
}

Other errors in event viewer, maybe related, page crashed instead of freeze
Error accessing Website 
Type: Microsoft.Dynamics.Framework.UI.FormNotFoundException
Message: The logical form as specified in parameter with name 'LogicalControlReference' could not be found in the current session. Interaction parameters: LogicalControlReference=Microsoft.Dynamics.Framework.UI.Client.ClientLogicalControlReference extensionObjectReference={
  "id": "-2147483644"
} methodName=PageReady arguments=[] refreshData=False
StackTrace:
   at Microsoft.Dynamics.Framework.UI.InteractionParameterHelper.GetLogicalControl(UISession uiSession, ClientLogicalControlReference clientLogicalControlReference, IDictionary`2 namedParameters) in s:\repo\src\platform\client\Shared\Prod.ClientFwk\Interactions\InteractionParameterHelper.cs:line 98
   at Microsoft.Dynamics.Nav.Client.Web.InvokeExtensibilityMethodInteractionExecutionStrategy.Execute() in s:\repo\src\platform\client\web\Prod.Client.WebCommon\Interactions\InvokeExtensibilityMethodInteractionExecutionStrategy.cs:line 38
   at Microsoft.Dynamics.Framework.UI.InteractionManager.<>c__DisplayClass8_2.<InvokeInteractions>b__4() in s:\repo\src\platform\client\Shared\Prod.ClientFwk\Interactions\InteractionManager.cs:line 126
Source: Microsoft.Dynamics.Framework.UI