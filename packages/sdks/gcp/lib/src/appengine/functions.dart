import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_default_service_account_args.dart';
import 'get_default_service_account_result.dart';

/// Use this data source to retrieve the default App Engine service account for the specified project.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.appengine.getDefaultServiceAccount({});
/// export const defaultAccount = _default.then(_default => _default.email);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.appengine.get_default_service_account()
/// pulumi.export("defaultAccount", default.email)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.AppEngine.GetDefaultServiceAccount.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["defaultAccount"] = @default.Apply(@default => @default.Apply(getDefaultServiceAccountResult => getDefaultServiceAccountResult.Email)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/appengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := appengine.GetDefaultServiceAccount(ctx, &appengine.GetDefaultServiceAccountArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("defaultAccount", _default.Email)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_appengine_getdefaultserviceaccount" "default" {
/// }
///
/// output "defaultAccount" {
///   value = data.gcp_appengine_getdefaultserviceaccount.default.email
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.appengine.AppengineFunctions;
/// import com.pulumi.gcp.appengine.inputs.GetDefaultServiceAccountArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var default = AppengineFunctions.getDefaultServiceAccount(GetDefaultServiceAccountArgs.builder()
///             .build());
///
///         ctx.export("defaultAccount", default_.email());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:appengine:getDefaultServiceAccount
///       arguments: {}
/// outputs:
///   defaultAccount: ${default.email}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_appengine_get_default_service_account_get_default_service_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDefaultServiceAccountResult> getDefaultServiceAccount(
  GetDefaultServiceAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:appengine/getDefaultServiceAccount:getDefaultServiceAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDefaultServiceAccountResult.fromMap(result);
}

pulumi.Output<GetDefaultServiceAccountResult> getDefaultServiceAccountOutput(
  GetDefaultServiceAccountArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:appengine/getDefaultServiceAccount:getDefaultServiceAccount',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDefaultServiceAccountResult.fromMap);
}
