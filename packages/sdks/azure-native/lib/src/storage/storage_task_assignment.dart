import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_task_assignment_args.dart';
import 'storage_task_assignment_properties_response.dart';

/// The storage task assignment.
///
/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01.
///
/// Other available API versions: 2023-05-01, 2025-01-01, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutStorageTaskAssignment
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var storageTaskAssignment = new AzureNative.Storage.StorageTaskAssignment("storageTaskAssignment", new()
///     {
///         AccountName = "sto4445",
///         Properties = new AzureNative.Storage.Inputs.StorageTaskAssignmentPropertiesArgs
///         {
///             Description = "My Storage task assignment",
///             Enabled = true,
///             ExecutionContext = new AzureNative.Storage.Inputs.StorageTaskAssignmentExecutionContextArgs
///             {
///                 Target = new AzureNative.Storage.Inputs.ExecutionTargetArgs
///                 {
///                     ExcludePrefix = new() { },
///                     Prefix = new[]
///                     {
///                         "prefix1",
///                         "prefix2",
///                     },
///                 },
///                 Trigger = new AzureNative.Storage.Inputs.ExecutionTriggerArgs
///                 {
///                     Parameters = new AzureNative.Storage.Inputs.TriggerParametersArgs
///                     {
///                         StartOn = "2022-11-15T21:52:47.8145095Z",
///                     },
///                     Type = AzureNative.Storage.TriggerType.RunOnce,
///                 },
///             },
///             Report = new AzureNative.Storage.Inputs.StorageTaskAssignmentReportArgs
///             {
///                 Prefix = "container1",
///             },
///             TaskId = "/subscriptions/1f31ba14-ce16-4281-b9b4-3e78da6e1616/resourceGroups/res4228/providers/Microsoft.StorageActions/storageTasks/mytask1",
///         },
///         ResourceGroupName = "res4228",
///         StorageTaskAssignmentName = "myassignment1",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	storage "github.com/pulumi/pulumi-azure-native-sdk/storage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewStorageTaskAssignment(ctx, "storageTaskAssignment", &storage.StorageTaskAssignmentArgs{
/// 			AccountName: pulumi.String("sto4445"),
/// 			Properties: &storage.StorageTaskAssignmentPropertiesArgs{
/// 				Description: pulumi.String("My Storage task assignment"),
/// 				Enabled:     pulumi.Bool(true),
/// 				ExecutionContext: &storage.StorageTaskAssignmentExecutionContextArgs{
/// 					Target: &storage.ExecutionTargetArgs{
/// 						ExcludePrefix: pulumi.StringArray{},
/// 						Prefix: pulumi.StringArray{
/// 							pulumi.String("prefix1"),
/// 							pulumi.String("prefix2"),
/// 						},
/// 					},
/// 					Trigger: &storage.ExecutionTriggerArgs{
/// 						Parameters: &storage.TriggerParametersArgs{
/// 							StartOn: pulumi.String("2022-11-15T21:52:47.8145095Z"),
/// 						},
/// 						Type: storage.TriggerTypeRunOnce,
/// 					},
/// 				},
/// 				Report: &storage.StorageTaskAssignmentReportArgs{
/// 					Prefix: pulumi.String("container1"),
/// 				},
/// 				TaskId: pulumi.String("/subscriptions/1f31ba14-ce16-4281-b9b4-3e78da6e1616/resourceGroups/res4228/providers/Microsoft.StorageActions/storageTasks/mytask1"),
/// 			},
/// 			ResourceGroupName:         pulumi.String("res4228"),
/// 			StorageTaskAssignmentName: pulumi.String("myassignment1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.storage.StorageTaskAssignment;
/// import com.pulumi.azurenative.storage.StorageTaskAssignmentArgs;
/// import com.pulumi.azurenative.storage.inputs.StorageTaskAssignmentPropertiesArgs;
/// import com.pulumi.azurenative.storage.inputs.StorageTaskAssignmentExecutionContextArgs;
/// import com.pulumi.azurenative.storage.inputs.ExecutionTargetArgs;
/// import com.pulumi.azurenative.storage.inputs.ExecutionTriggerArgs;
/// import com.pulumi.azurenative.storage.inputs.TriggerParametersArgs;
/// import com.pulumi.azurenative.storage.inputs.StorageTaskAssignmentReportArgs;
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
///         var storageTaskAssignment = new StorageTaskAssignment("storageTaskAssignment", StorageTaskAssignmentArgs.builder()
///             .accountName("sto4445")
///             .properties(StorageTaskAssignmentPropertiesArgs.builder()
///                 .description("My Storage task assignment")
///                 .enabled(true)
///                 .executionContext(StorageTaskAssignmentExecutionContextArgs.builder()
///                     .target(ExecutionTargetArgs.builder()
///                         .excludePrefix()
///                         .prefix(
///                             "prefix1",
///                             "prefix2")
///                         .build())
///                     .trigger(ExecutionTriggerArgs.builder()
///                         .parameters(TriggerParametersArgs.builder()
///                             .startOn("2022-11-15T21:52:47.8145095Z")
///                             .build())
///                         .type("RunOnce")
///                         .build())
///                     .build())
///                 .report(StorageTaskAssignmentReportArgs.builder()
///                     .prefix("container1")
///                     .build())
///                 .taskId("/subscriptions/1f31ba14-ce16-4281-b9b4-3e78da6e1616/resourceGroups/res4228/providers/Microsoft.StorageActions/storageTasks/mytask1")
///                 .build())
///             .resourceGroupName("res4228")
///             .storageTaskAssignmentName("myassignment1")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const storageTaskAssignment = new azure_native.storage.StorageTaskAssignment("storageTaskAssignment", {
///     accountName: "sto4445",
///     properties: {
///         description: "My Storage task assignment",
///         enabled: true,
///         executionContext: {
///             target: {
///                 excludePrefix: [],
///                 prefix: [
///                     "prefix1",
///                     "prefix2",
///                 ],
///             },
///             trigger: {
///                 parameters: {
///                     startOn: "2022-11-15T21:52:47.8145095Z",
///                 },
///                 type: azure_native.storage.TriggerType.RunOnce,
///             },
///         },
///         report: {
///             prefix: "container1",
///         },
///         taskId: "/subscriptions/1f31ba14-ce16-4281-b9b4-3e78da6e1616/resourceGroups/res4228/providers/Microsoft.StorageActions/storageTasks/mytask1",
///     },
///     resourceGroupName: "res4228",
///     storageTaskAssignmentName: "myassignment1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// storage_task_assignment = azure_native.storage.StorageTaskAssignment("storageTaskAssignment",
///     account_name="sto4445",
///     properties={
///         "description": "My Storage task assignment",
///         "enabled": True,
///         "execution_context": {
///             "target": {
///                 "exclude_prefix": [],
///                 "prefix": [
///                     "prefix1",
///                     "prefix2",
///                 ],
///             },
///             "trigger": {
///                 "parameters": {
///                     "start_on": "2022-11-15T21:52:47.8145095Z",
///                 },
///                 "type": azure_native.storage.TriggerType.RUN_ONCE,
///             },
///         },
///         "report": {
///             "prefix": "container1",
///         },
///         "task_id": "/subscriptions/1f31ba14-ce16-4281-b9b4-3e78da6e1616/resourceGroups/res4228/providers/Microsoft.StorageActions/storageTasks/mytask1",
///     },
///     resource_group_name="res4228",
///     storage_task_assignment_name="myassignment1")
///
/// ```
///
/// ```yaml
/// resources:
///   storageTaskAssignment:
///     type: azure-native:storage:StorageTaskAssignment
///     properties:
///       accountName: sto4445
///       properties:
///         description: My Storage task assignment
///         enabled: true
///         executionContext:
///           target:
///             excludePrefix: []
///             prefix:
///               - prefix1
///               - prefix2
///           trigger:
///             parameters:
///               startOn: 2022-11-15T21:52:47.8145095Z
///             type: RunOnce
///         report:
///           prefix: container1
///         taskId: /subscriptions/1f31ba14-ce16-4281-b9b4-3e78da6e1616/resourceGroups/res4228/providers/Microsoft.StorageActions/storageTasks/mytask1
///       resourceGroupName: res4228
///       storageTaskAssignmentName: myassignment1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### PutStorageTaskAssignmentRequiredProperties
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var storageTaskAssignment = new AzureNative.Storage.StorageTaskAssignment("storageTaskAssignment", new()
///     {
///         AccountName = "sto4445",
///         Properties = new AzureNative.Storage.Inputs.StorageTaskAssignmentPropertiesArgs
///         {
///             Description = "My Storage task assignment",
///             Enabled = true,
///             ExecutionContext = new AzureNative.Storage.Inputs.StorageTaskAssignmentExecutionContextArgs
///             {
///                 Trigger = new AzureNative.Storage.Inputs.ExecutionTriggerArgs
///                 {
///                     Parameters = new AzureNative.Storage.Inputs.TriggerParametersArgs
///                     {
///                         StartOn = "2022-11-15T21:52:47.8145095Z",
///                     },
///                     Type = AzureNative.Storage.TriggerType.RunOnce,
///                 },
///             },
///             Report = new AzureNative.Storage.Inputs.StorageTaskAssignmentReportArgs
///             {
///                 Prefix = "container1",
///             },
///             TaskId = "/subscriptions/1f31ba14-ce16-4281-b9b4-3e78da6e1616/resourceGroups/res4228/providers/Microsoft.StorageActions/storageTasks/mytask1",
///         },
///         ResourceGroupName = "res4228",
///         StorageTaskAssignmentName = "myassignment1",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	storage "github.com/pulumi/pulumi-azure-native-sdk/storage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewStorageTaskAssignment(ctx, "storageTaskAssignment", &storage.StorageTaskAssignmentArgs{
/// 			AccountName: pulumi.String("sto4445"),
/// 			Properties: &storage.StorageTaskAssignmentPropertiesArgs{
/// 				Description: pulumi.String("My Storage task assignment"),
/// 				Enabled:     pulumi.Bool(true),
/// 				ExecutionContext: &storage.StorageTaskAssignmentExecutionContextArgs{
/// 					Trigger: &storage.ExecutionTriggerArgs{
/// 						Parameters: &storage.TriggerParametersArgs{
/// 							StartOn: pulumi.String("2022-11-15T21:52:47.8145095Z"),
/// 						},
/// 						Type: storage.TriggerTypeRunOnce,
/// 					},
/// 				},
/// 				Report: &storage.StorageTaskAssignmentReportArgs{
/// 					Prefix: pulumi.String("container1"),
/// 				},
/// 				TaskId: pulumi.String("/subscriptions/1f31ba14-ce16-4281-b9b4-3e78da6e1616/resourceGroups/res4228/providers/Microsoft.StorageActions/storageTasks/mytask1"),
/// 			},
/// 			ResourceGroupName:         pulumi.String("res4228"),
/// 			StorageTaskAssignmentName: pulumi.String("myassignment1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.storage.StorageTaskAssignment;
/// import com.pulumi.azurenative.storage.StorageTaskAssignmentArgs;
/// import com.pulumi.azurenative.storage.inputs.StorageTaskAssignmentPropertiesArgs;
/// import com.pulumi.azurenative.storage.inputs.StorageTaskAssignmentExecutionContextArgs;
/// import com.pulumi.azurenative.storage.inputs.ExecutionTriggerArgs;
/// import com.pulumi.azurenative.storage.inputs.TriggerParametersArgs;
/// import com.pulumi.azurenative.storage.inputs.StorageTaskAssignmentReportArgs;
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
///         var storageTaskAssignment = new StorageTaskAssignment("storageTaskAssignment", StorageTaskAssignmentArgs.builder()
///             .accountName("sto4445")
///             .properties(StorageTaskAssignmentPropertiesArgs.builder()
///                 .description("My Storage task assignment")
///                 .enabled(true)
///                 .executionContext(StorageTaskAssignmentExecutionContextArgs.builder()
///                     .trigger(ExecutionTriggerArgs.builder()
///                         .parameters(TriggerParametersArgs.builder()
///                             .startOn("2022-11-15T21:52:47.8145095Z")
///                             .build())
///                         .type("RunOnce")
///                         .build())
///                     .build())
///                 .report(StorageTaskAssignmentReportArgs.builder()
///                     .prefix("container1")
///                     .build())
///                 .taskId("/subscriptions/1f31ba14-ce16-4281-b9b4-3e78da6e1616/resourceGroups/res4228/providers/Microsoft.StorageActions/storageTasks/mytask1")
///                 .build())
///             .resourceGroupName("res4228")
///             .storageTaskAssignmentName("myassignment1")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const storageTaskAssignment = new azure_native.storage.StorageTaskAssignment("storageTaskAssignment", {
///     accountName: "sto4445",
///     properties: {
///         description: "My Storage task assignment",
///         enabled: true,
///         executionContext: {
///             trigger: {
///                 parameters: {
///                     startOn: "2022-11-15T21:52:47.8145095Z",
///                 },
///                 type: azure_native.storage.TriggerType.RunOnce,
///             },
///         },
///         report: {
///             prefix: "container1",
///         },
///         taskId: "/subscriptions/1f31ba14-ce16-4281-b9b4-3e78da6e1616/resourceGroups/res4228/providers/Microsoft.StorageActions/storageTasks/mytask1",
///     },
///     resourceGroupName: "res4228",
///     storageTaskAssignmentName: "myassignment1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// storage_task_assignment = azure_native.storage.StorageTaskAssignment("storageTaskAssignment",
///     account_name="sto4445",
///     properties={
///         "description": "My Storage task assignment",
///         "enabled": True,
///         "execution_context": {
///             "trigger": {
///                 "parameters": {
///                     "start_on": "2022-11-15T21:52:47.8145095Z",
///                 },
///                 "type": azure_native.storage.TriggerType.RUN_ONCE,
///             },
///         },
///         "report": {
///             "prefix": "container1",
///         },
///         "task_id": "/subscriptions/1f31ba14-ce16-4281-b9b4-3e78da6e1616/resourceGroups/res4228/providers/Microsoft.StorageActions/storageTasks/mytask1",
///     },
///     resource_group_name="res4228",
///     storage_task_assignment_name="myassignment1")
///
/// ```
///
/// ```yaml
/// resources:
///   storageTaskAssignment:
///     type: azure-native:storage:StorageTaskAssignment
///     properties:
///       accountName: sto4445
///       properties:
///         description: My Storage task assignment
///         enabled: true
///         executionContext:
///           trigger:
///             parameters:
///               startOn: 2022-11-15T21:52:47.8145095Z
///             type: RunOnce
///         report:
///           prefix: container1
///         taskId: /subscriptions/1f31ba14-ce16-4281-b9b4-3e78da6e1616/resourceGroups/res4228/providers/Microsoft.StorageActions/storageTasks/mytask1
///       resourceGroupName: res4228
///       storageTaskAssignmentName: myassignment1
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:storage:StorageTaskAssignment myassignment1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/storageTaskAssignments/{storageTaskAssignmentName}
/// ```
class StorageTaskAssignment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Properties of the storage task assignment.
  late final pulumi.Output<StorageTaskAssignmentPropertiesResponse> properties;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [StorageTaskAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StorageTaskAssignment]. {@macro pulumi_storage_storage_task_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StorageTaskAssignment(
    String name, {
    StorageTaskAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:storage:StorageTaskAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<StorageTaskAssignmentPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StorageTaskAssignmentPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
