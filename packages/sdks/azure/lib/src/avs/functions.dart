import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_private_cloud_args.dart';
import 'get_private_cloud_result.dart';

/// Use this data source to access information about an existing Azure VMware Solution Private Cloud.
///
/// ## Example Usage
///
/// &gt; **Note:** Normal `pulumi up` could ignore this note. Please disable correlation request id for continuous operations in one build (like acctest). The continuous operations like `update` or `delete` could not be triggered when it shares the same `correlation-id` with its previous operation.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.avs.getPrivateCloud({
///     name: "existing-vmware-private-cloud",
///     resourceGroupName: "existing-resgroup",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.avs.get_private_cloud(name="existing-vmware-private-cloud",
///     resource_group_name="existing-resgroup")
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Avs.GetPrivateCloud.Invoke(new()
///     {
///         Name = "existing-vmware-private-cloud",
///         ResourceGroupName = "existing-resgroup",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getPrivateCloudResult => getPrivateCloudResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/avs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := avs.LookupPrivateCloud(ctx, &avs.LookupPrivateCloudArgs{
/// 			Name:              "existing-vmware-private-cloud",
/// 			ResourceGroupName: "existing-resgroup",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_avs_getprivatecloud" "example" {
///   name                = "existing-vmware-private-cloud"
///   resource_group_name = "existing-resgroup"
/// }
///
/// output "id" {
///   value = data.azure_avs_getprivatecloud.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.avs.AvsFunctions;
/// import com.pulumi.azure.avs.inputs.GetPrivateCloudArgs;
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
///         final var example = AvsFunctions.getPrivateCloud(GetPrivateCloudArgs.builder()
///             .name("existing-vmware-private-cloud")
///             .resourceGroupName("existing-resgroup")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:avs:getPrivateCloud
///       arguments:
///         name: existing-vmware-private-cloud
///         resourceGroupName: existing-resgroup
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.AVS` - 2022-05-01
/// [args] Arguments passed to this invoke. {@macro pulumi_avs_get_private_cloud_get_private_cloud_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateCloudResult> getPrivateCloud(
  GetPrivateCloudArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:avs/getPrivateCloud:getPrivateCloud',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateCloudResult.fromMap(result);
}

pulumi.Output<GetPrivateCloudResult> getPrivateCloudOutput(
  GetPrivateCloudArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:avs/getPrivateCloud:getPrivateCloud',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateCloudResult.fromMap);
}
