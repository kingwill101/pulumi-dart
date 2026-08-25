import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_config_args.dart';
import 'get_config_result.dart';

/// Get a configuration for Data Lineage.
///
/// To get more information about Config, see [Official Documentation](https://docs.cloud.google.com/dataplex/docs/about-data-lineage#control-lineage-ingestion)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.datalineage.getConfig({
///     parent: "projects/my-project-name",
///     location: "global",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.datalineage.get_config(parent="projects/my-project-name",
///     location="global")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.DataLineage.GetConfig.Invoke(new()
///     {
///         Parent = "projects/my-project-name",
///         Location = "global",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datalineage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datalineage.LookupConfig(ctx, &datalineage.LookupConfigArgs{
/// 			Parent:   "projects/my-project-name",
/// 			Location: "global",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
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
/// data "gcp_datalineage_getconfig" "default" {
///   parent   = "projects/my-project-name"
///   location = "global"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.datalineage.DatalineageFunctions;
/// import com.pulumi.gcp.datalineage.inputs.GetConfigArgs;
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
///         final var default = DatalineageFunctions.getConfig(GetConfigArgs.builder()
///             .parent("projects/my-project-name")
///             .location("global")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:datalineage:getConfig
///       arguments:
///         parent: projects/my-project-name
///         location: global
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_datalineage_get_config_get_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigResult> getConfig(
  GetConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:datalineage/getConfig:getConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigResult.fromMap(result);
}

pulumi.Output<GetConfigResult> getConfigOutput(
  GetConfigArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:datalineage/getConfig:getConfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConfigResult.fromMap);
}
