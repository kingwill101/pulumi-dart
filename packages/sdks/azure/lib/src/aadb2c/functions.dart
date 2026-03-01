import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_directory_args.dart';
import 'get_directory_result.dart';

/// Use this data source to access information about an existing AAD B2C Directory.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.aadb2c.getDirectory({
///     resourceGroupName: "example-rg",
///     domainName: "exampleb2ctenant.onmicrosoft.com",
/// });
/// export const tenantId = example.then(example => example.tenantId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.aadb2c.get_directory(resource_group_name="example-rg",
///     domain_name="exampleb2ctenant.onmicrosoft.com")
/// pulumi.export("tenantId", example.tenant_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.AadB2C.GetDirectory.Invoke(new()
///     {
///         ResourceGroupName = "example-rg",
///         DomainName = "exampleb2ctenant.onmicrosoft.com",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["tenantId"] = example.Apply(getDirectoryResult => getDirectoryResult.TenantId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/aadb2c"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := aadb2c.LookupDirectory(ctx, &aadb2c.LookupDirectoryArgs{
/// 			ResourceGroupName: "example-rg",
/// 			DomainName:        "exampleb2ctenant.onmicrosoft.com",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("tenantId", example.TenantId)
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
/// import com.pulumi.azure.aadb2c.Aadb2cFunctions;
/// import com.pulumi.azure.aadb2c.inputs.GetDirectoryArgs;
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
///         final var example = Aadb2cFunctions.getDirectory(GetDirectoryArgs.builder()
///             .resourceGroupName("example-rg")
///             .domainName("exampleb2ctenant.onmicrosoft.com")
///             .build());
///
///         ctx.export("tenantId", example.tenantId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:aadb2c:getDirectory
///       arguments:
///         resourceGroupName: example-rg
///         domainName: exampleb2ctenant.onmicrosoft.com
/// outputs:
///   tenantId: ${example.tenantId}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.AzureActiveDirectory` - 2021-04-01-preview
/// [args] Arguments passed to this invoke. {@macro pulumi_aadb2c_get_directory_get_directory_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDirectoryResult> getDirectory(
  GetDirectoryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:aadb2c/getDirectory:getDirectory',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDirectoryResult.fromMap(result);
}
