import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_args.dart';
import 'get_result.dart';
import 'get_volume_group_args.dart';
import 'get_volume_group_result.dart';
import 'get_volume_snapshot_args.dart';
import 'get_volume_snapshot_result.dart';

/// Use this data source to access information about an existing Elastic SAN.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.elasticsan.get({
///     name: "existing",
///     resourceGroupName: "existing",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.elasticsan.get(name="existing",
///     resource_group_name="existing")
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
///     var example = Azure.ElasticSan.Get.Invoke(new()
///     {
///         Name = "existing",
///         ResourceGroupName = "existing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getResult => getResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/elasticsan"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := elasticsan.Get(ctx, &elasticsan.GetArgs{
/// 			Name:              "existing",
/// 			ResourceGroupName: "existing",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// import com.pulumi.azure.elasticsan.ElasticsanFunctions;
/// import com.pulumi.azure.elasticsan.inputs.GetArgs;
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
///         final var example = ElasticsanFunctions.get(GetArgs.builder()
///             .name("existing")
///             .resourceGroupName("existing")
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
///       function: azure:elasticsan:get
///       arguments:
///         name: existing
///         resourceGroupName: existing
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
/// * `Microsoft.ElasticSan` - 2023-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_elasticsan_get_get_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResult> get(GetArgs args, {pulumi.InvokeOptions? options}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:elasticsan/get:get',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResult.fromMap(result);
}

/// Use this data source to access information about an existing Elastic SAN Volume Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.elasticsan.get({
///     name: "existing",
///     resourceGroupName: "existing",
/// });
/// const exampleGetVolumeGroup = example.then(example => azure.elasticsan.getVolumeGroup({
///     name: "existing",
///     elasticSanId: example.id,
/// }));
/// export const id = exampleGetVolumeGroup.then(exampleGetVolumeGroup => exampleGetVolumeGroup.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.elasticsan.get(name="existing",
///     resource_group_name="existing")
/// example_get_volume_group = azure.elasticsan.get_volume_group(name="existing",
///     elastic_san_id=example.id)
/// pulumi.export("id", example_get_volume_group.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.ElasticSan.Get.Invoke(new()
///     {
///         Name = "existing",
///         ResourceGroupName = "existing",
///     });
///
///     var exampleGetVolumeGroup = Azure.ElasticSan.GetVolumeGroup.Invoke(new()
///     {
///         Name = "existing",
///         ElasticSanId = example.Apply(getResult => getResult.Id),
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = exampleGetVolumeGroup.Apply(getVolumeGroupResult => getVolumeGroupResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/elasticsan"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := elasticsan.Get(ctx, &elasticsan.GetArgs{
/// 			Name:              "existing",
/// 			ResourceGroupName: "existing",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetVolumeGroup, err := elasticsan.LookupVolumeGroup(ctx, &elasticsan.LookupVolumeGroupArgs{
/// 			Name:         "existing",
/// 			ElasticSanId: example.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", exampleGetVolumeGroup.Id)
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
/// import com.pulumi.azure.elasticsan.ElasticsanFunctions;
/// import com.pulumi.azure.elasticsan.inputs.GetArgs;
/// import com.pulumi.azure.elasticsan.inputs.GetVolumeGroupArgs;
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
///         final var example = ElasticsanFunctions.get(GetArgs.builder()
///             .name("existing")
///             .resourceGroupName("existing")
///             .build());
///
///         final var exampleGetVolumeGroup = ElasticsanFunctions.getVolumeGroup(GetVolumeGroupArgs.builder()
///             .name("existing")
///             .elasticSanId(example.id())
///             .build());
///
///         ctx.export("id", exampleGetVolumeGroup.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:elasticsan:get
///       arguments:
///         name: existing
///         resourceGroupName: existing
///   exampleGetVolumeGroup:
///     fn::invoke:
///       function: azure:elasticsan:getVolumeGroup
///       arguments:
///         name: existing
///         elasticSanId: ${example.id}
/// outputs:
///   id: ${exampleGetVolumeGroup.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.ElasticSan` - 2023-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_elasticsan_get_volume_group_get_volume_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVolumeGroupResult> getVolumeGroup(
  GetVolumeGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:elasticsan/getVolumeGroup:getVolumeGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVolumeGroupResult.fromMap(result);
}

/// Use this data source to access information about an existing Elastic SAN Volume Snapshot.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.elasticsan.get({
///     name: "existing",
///     resourceGroupName: "existing",
/// });
/// const exampleGetVolumeGroup = example.then(example => azure.elasticsan.getVolumeGroup({
///     name: "existing",
///     elasticSanId: example.id,
/// }));
/// const exampleGetVolumeSnapshot = exampleGetVolumeGroup.then(exampleGetVolumeGroup => azure.elasticsan.getVolumeSnapshot({
///     name: "existing",
///     volumeGroupId: exampleGetVolumeGroup.id,
/// }));
/// export const id = exampleGetVolumeSnapshot.then(exampleGetVolumeSnapshot => exampleGetVolumeSnapshot.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.elasticsan.get(name="existing",
///     resource_group_name="existing")
/// example_get_volume_group = azure.elasticsan.get_volume_group(name="existing",
///     elastic_san_id=example.id)
/// example_get_volume_snapshot = azure.elasticsan.get_volume_snapshot(name="existing",
///     volume_group_id=example_get_volume_group.id)
/// pulumi.export("id", example_get_volume_snapshot.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.ElasticSan.Get.Invoke(new()
///     {
///         Name = "existing",
///         ResourceGroupName = "existing",
///     });
///
///     var exampleGetVolumeGroup = Azure.ElasticSan.GetVolumeGroup.Invoke(new()
///     {
///         Name = "existing",
///         ElasticSanId = example.Apply(getResult => getResult.Id),
///     });
///
///     var exampleGetVolumeSnapshot = Azure.ElasticSan.GetVolumeSnapshot.Invoke(new()
///     {
///         Name = "existing",
///         VolumeGroupId = exampleGetVolumeGroup.Apply(getVolumeGroupResult => getVolumeGroupResult.Id),
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = exampleGetVolumeSnapshot.Apply(getVolumeSnapshotResult => getVolumeSnapshotResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/elasticsan"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := elasticsan.Get(ctx, &elasticsan.GetArgs{
/// 			Name:              "existing",
/// 			ResourceGroupName: "existing",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetVolumeGroup, err := elasticsan.LookupVolumeGroup(ctx, &elasticsan.LookupVolumeGroupArgs{
/// 			Name:         "existing",
/// 			ElasticSanId: example.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetVolumeSnapshot, err := elasticsan.GetVolumeSnapshot(ctx, &elasticsan.GetVolumeSnapshotArgs{
/// 			Name:          "existing",
/// 			VolumeGroupId: exampleGetVolumeGroup.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", exampleGetVolumeSnapshot.Id)
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
/// import com.pulumi.azure.elasticsan.ElasticsanFunctions;
/// import com.pulumi.azure.elasticsan.inputs.GetArgs;
/// import com.pulumi.azure.elasticsan.inputs.GetVolumeGroupArgs;
/// import com.pulumi.azure.elasticsan.inputs.GetVolumeSnapshotArgs;
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
///         final var example = ElasticsanFunctions.get(GetArgs.builder()
///             .name("existing")
///             .resourceGroupName("existing")
///             .build());
///
///         final var exampleGetVolumeGroup = ElasticsanFunctions.getVolumeGroup(GetVolumeGroupArgs.builder()
///             .name("existing")
///             .elasticSanId(example.id())
///             .build());
///
///         final var exampleGetVolumeSnapshot = ElasticsanFunctions.getVolumeSnapshot(GetVolumeSnapshotArgs.builder()
///             .name("existing")
///             .volumeGroupId(exampleGetVolumeGroup.id())
///             .build());
///
///         ctx.export("id", exampleGetVolumeSnapshot.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:elasticsan:get
///       arguments:
///         name: existing
///         resourceGroupName: existing
///   exampleGetVolumeGroup:
///     fn::invoke:
///       function: azure:elasticsan:getVolumeGroup
///       arguments:
///         name: existing
///         elasticSanId: ${example.id}
///   exampleGetVolumeSnapshot:
///     fn::invoke:
///       function: azure:elasticsan:getVolumeSnapshot
///       arguments:
///         name: existing
///         volumeGroupId: ${exampleGetVolumeGroup.id}
/// outputs:
///   id: ${exampleGetVolumeSnapshot.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.ElasticSan` - 2023-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_elasticsan_get_volume_snapshot_get_volume_snapshot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVolumeSnapshotResult> getVolumeSnapshot(
  GetVolumeSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:elasticsan/getVolumeSnapshot:getVolumeSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVolumeSnapshotResult.fromMap(result);
}
