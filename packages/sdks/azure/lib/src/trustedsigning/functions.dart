import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_args.dart';
import 'get_account_result.dart';

/// Use this data source to access information about an existing Trusted Signing Account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.trustedsigning.getAccount({
///     name: "example-account",
///     resourceGroupName: "example-resource-group",
/// });
/// export const trustedSigningAccountId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.trustedsigning.get_account(name="example-account",
///     resource_group_name="example-resource-group")
/// pulumi.export("trustedSigningAccountId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.TrustedSigning.GetAccount.Invoke(new()
///     {
///         Name = "example-account",
///         ResourceGroupName = "example-resource-group",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["trustedSigningAccountId"] = example.Apply(getAccountResult => getAccountResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/trustedsigning"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := trustedsigning.LookupAccount(ctx, &trustedsigning.LookupAccountArgs{
/// 			Name:              "example-account",
/// 			ResourceGroupName: "example-resource-group",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("trustedSigningAccountId", example.Id)
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.trustedsigning.TrustedsigningFunctions;
/// import com.pulumi.azure.trustedsigning.inputs.GetAccountArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         final var example = TrustedsigningFunctions.getAccount(GetAccountArgs.builder()
///             .name("example-account")
///             .resourceGroupName("example-resource-group")
///             .build());
///
///         ctx.export("trustedSigningAccountId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:trustedsigning:getAccount
///       arguments:
///         name: example-account
///         resourceGroupName: example-resource-group
/// outputs:
///   trustedSigningAccountId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.CodeSigning` - 2024-09-30-preview
/// [args] Arguments passed to this invoke. {@macro pulumi_trustedsigning_get_account_get_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountResult> getAccount(
  GetAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:trustedsigning/getAccount:getAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountResult.fromMap(result);
}
