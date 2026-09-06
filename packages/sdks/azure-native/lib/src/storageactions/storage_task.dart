import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity_response.dart';
import 'storage_task_action_response.dart';
import 'storage_task_args.dart';
import 'system_data_response.dart';

/// Represents Storage Task.
///
/// Uses Azure REST API version 2023-01-01. In version 2.x of the Azure Native provider, it used API version 2023-01-01.
///
/// Other available API versions: 2026-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storageactions [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutStorageTask
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var storageTask = new AzureNative.StorageActions.StorageTask("storageTask", new()
///     {
///         Action = new AzureNative.StorageActions.Inputs.StorageTaskActionArgs
///         {
///             Else = new AzureNative.StorageActions.Inputs.ElseConditionArgs
///             {
///                 Operations = new[]
///                 {
///                     new AzureNative.StorageActions.Inputs.StorageTaskOperationArgs
///                     {
///                         Name = AzureNative.StorageActions.StorageTaskOperationName.DeleteBlob,
///                         OnFailure = AzureNative.StorageActions.OnFailure.@Break,
///                         OnSuccess = AzureNative.StorageActions.OnSuccess.@Continue,
///                     },
///                 },
///             },
///             If = new AzureNative.StorageActions.Inputs.IfConditionArgs
///             {
///                 Condition = "[[equals(AccessTier, 'Cool')]]",
///                 Operations = new[]
///                 {
///                     new AzureNative.StorageActions.Inputs.StorageTaskOperationArgs
///                     {
///                         Name = AzureNative.StorageActions.StorageTaskOperationName.SetBlobTier,
///                         OnFailure = AzureNative.StorageActions.OnFailure.@Break,
///                         OnSuccess = AzureNative.StorageActions.OnSuccess.@Continue,
///                         Parameters =
///                         {
///                             { "tier", "Hot" },
///                         },
///                     },
///                 },
///             },
///         },
///         Description = "My Storage task",
///         Enabled = true,
///         Identity = new AzureNative.StorageActions.Inputs.ManagedServiceIdentityArgs
///         {
///             Type = AzureNative.StorageActions.ManagedServiceIdentityType.SystemAssigned,
///         },
///         Location = "westus",
///         ResourceGroupName = "res4228",
///         StorageTaskName = "mytask1",
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
/// 	storageactions "github.com/pulumi/pulumi-azure-native-sdk/storageactions/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storageactions.NewStorageTask(ctx, "storageTask", &storageactions.StorageTaskArgs{
/// 			Action: &storageactions.StorageTaskActionArgs{
/// 				Else: &storageactions.ElseConditionArgs{
/// 					Operations: storageactions.StorageTaskOperationArray{
/// 						&storageactions.StorageTaskOperationArgs{
/// 							Name:      pulumi.String(storageactions.StorageTaskOperationNameDeleteBlob),
/// 							OnFailure: pulumi.String(storageactions.OnFailureBreak),
/// 							OnSuccess: pulumi.String(storageactions.OnSuccessContinue),
/// 						},
/// 					},
/// 				},
/// 				If: &storageactions.IfConditionArgs{
/// 					Condition: pulumi.String("[[equals(AccessTier, 'Cool')]]"),
/// 					Operations: storageactions.StorageTaskOperationArray{
/// 						&storageactions.StorageTaskOperationArgs{
/// 							Name:      pulumi.String(storageactions.StorageTaskOperationNameSetBlobTier),
/// 							OnFailure: pulumi.String(storageactions.OnFailureBreak),
/// 							OnSuccess: pulumi.String(storageactions.OnSuccessContinue),
/// 							Parameters: pulumi.StringMap{
/// 								"tier": pulumi.String("Hot"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Description: pulumi.String("My Storage task"),
/// 			Enabled:     pulumi.Bool(true),
/// 			Identity: &storageactions.ManagedServiceIdentityArgs{
/// 				Type: pulumi.String(storageactions.ManagedServiceIdentityTypeSystemAssigned),
/// 			},
/// 			Location:          pulumi.String("westus"),
/// 			ResourceGroupName: pulumi.String("res4228"),
/// 			StorageTaskName:   pulumi.String("mytask1"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_storageactions_storagetask" "storageTask" {
///   action = {
///     else = {
///       operations = [{
///         "name"      = "DeleteBlob"
///         "onFailure" = "break"
///         "onSuccess" = "continue"
///       }]
///     }
///     if = {
///       condition = "[[equals(AccessTier, 'Cool')]]"
///       operations = [{
///         "name"      = "SetBlobTier"
///         "onFailure" = "break"
///         "onSuccess" = "continue"
///         "parameters" = {
///           "tier" = "Hot"
///         }
///       }]
///     }
///   }
///   description = "My Storage task"
///   enabled     = true
///   identity = {
///     type = "SystemAssigned"
///   }
///   location            = "westus"
///   resource_group_name = "res4228"
///   storage_task_name   = "mytask1"
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
/// import com.pulumi.azurenative.storageactions.StorageTask;
/// import com.pulumi.azurenative.storageactions.StorageTaskArgs;
/// import com.pulumi.azurenative.storageactions.inputs.StorageTaskActionArgs;
/// import com.pulumi.azurenative.storageactions.inputs.ElseConditionArgs;
/// import com.pulumi.azurenative.storageactions.inputs.IfConditionArgs;
/// import com.pulumi.azurenative.storageactions.inputs.ManagedServiceIdentityArgs;
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
///         var storageTask = new StorageTask("storageTask", StorageTaskArgs.builder()
///             .action(StorageTaskActionArgs.builder()
///                 .else_(ElseConditionArgs.builder()
///                     .operations(StorageTaskOperationArgs.builder()
///                         .name("DeleteBlob")
///                         .onFailure("break")
///                         .onSuccess("continue")
///                         .build())
///                     .build())
///                 .if_(IfConditionArgs.builder()
///                     .condition("[[equals(AccessTier, 'Cool')]]")
///                     .operations(StorageTaskOperationArgs.builder()
///                         .name("SetBlobTier")
///                         .onFailure("break")
///                         .onSuccess("continue")
///                         .parameters(Map.of("tier", "Hot"))
///                         .build())
///                     .build())
///                 .build())
///             .description("My Storage task")
///             .enabled(true)
///             .identity(ManagedServiceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("westus")
///             .resourceGroupName("res4228")
///             .storageTaskName("mytask1")
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
/// const storageTask = new azure_native.storageactions.StorageTask("storageTask", {
///     action: {
///         "else": {
///             operations: [{
///                 name: azure_native.storageactions.StorageTaskOperationName.DeleteBlob,
///                 onFailure: azure_native.storageactions.OnFailure.Break,
///                 onSuccess: azure_native.storageactions.OnSuccess.Continue,
///             }],
///         },
///         "if": {
///             condition: "[[equals(AccessTier, 'Cool')]]",
///             operations: [{
///                 name: azure_native.storageactions.StorageTaskOperationName.SetBlobTier,
///                 onFailure: azure_native.storageactions.OnFailure.Break,
///                 onSuccess: azure_native.storageactions.OnSuccess.Continue,
///                 parameters: {
///                     tier: "Hot",
///                 },
///             }],
///         },
///     },
///     description: "My Storage task",
///     enabled: true,
///     identity: {
///         type: azure_native.storageactions.ManagedServiceIdentityType.SystemAssigned,
///     },
///     location: "westus",
///     resourceGroupName: "res4228",
///     storageTaskName: "mytask1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// storage_task = azure_native.storageactions.StorageTask("storageTask",
///     action={
///         "else_": {
///             "operations": [{
///                 "name": azure_native.storageactions.StorageTaskOperationName.DELETE_BLOB,
///                 "on_failure": azure_native.storageactions.OnFailure.BREAK_,
///                 "on_success": azure_native.storageactions.OnSuccess.CONTINUE_,
///             }],
///         },
///         "if_": {
///             "condition": "[[equals(AccessTier, 'Cool')]]",
///             "operations": [{
///                 "name": azure_native.storageactions.StorageTaskOperationName.SET_BLOB_TIER,
///                 "on_failure": azure_native.storageactions.OnFailure.BREAK_,
///                 "on_success": azure_native.storageactions.OnSuccess.CONTINUE_,
///                 "parameters": {
///                     "tier": "Hot",
///                 },
///             }],
///         },
///     },
///     description="My Storage task",
///     enabled=True,
///     identity={
///         "type": azure_native.storageactions.ManagedServiceIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="westus",
///     resource_group_name="res4228",
///     storage_task_name="mytask1")
///
/// ```
///
/// ```yaml
/// resources:
///   storageTask:
///     type: azure-native:storageactions:StorageTask
///     properties:
///       action:
///         else:
///           operations:
///             - name: DeleteBlob
///               onFailure: break
///               onSuccess: continue
///         if:
///           condition: '[[equals(AccessTier, ''Cool'')]]'
///           operations:
///             - name: SetBlobTier
///               onFailure: break
///               onSuccess: continue
///               parameters:
///                 tier: Hot
///       description: My Storage task
///       enabled: true
///       identity:
///         type: SystemAssigned
///       location: westus
///       resourceGroupName: res4228
///       storageTaskName: mytask1
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
/// $ pulumi import azure-native:storageactions:StorageTask mytask1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorageActions/storageTasks/{storageTaskName}
/// ```
class StorageTask extends pulumi.CustomResource {
  /// The storage task action that is executed
  late final pulumi.Output<StorageTaskActionResponse> action;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The creation date and time of the storage task in UTC.
  late final pulumi.Output<String> creationTimeInUtc;
  /// Text that describes the purpose of the storage task
  late final pulumi.Output<String> description;
  /// Storage Task is enabled when set to true and disabled when set to false
  late final pulumi.Output<bool> enabled;
  /// The managed service identity of the resource.
  late final pulumi.Output<ManagedServiceIdentityResponse> identity;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Represents the provisioning state of the storage task.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Storage task version.
  late final pulumi.Output<double> taskVersion;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [StorageTask].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StorageTask]. {@macro pulumi_storageactions_storage_task_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StorageTask(
    String name, {
    StorageTaskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:storageactions:StorageTask',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<StorageTaskActionResponse>('action', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StorageTaskActionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationTimeInUtc = registerOutput<String>('creationTimeInUtc');
    description = registerOutput<String>('description');
    enabled = registerOutput<bool>('enabled');
    identity = registerOutput<ManagedServiceIdentityResponse>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    taskVersion = registerOutput<double>('taskVersion');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [StorageTask] resource.
  StorageTask.reference(String urn)
    : super(
        'azure-native:storageactions:StorageTask',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    action = registerOutput<StorageTaskActionResponse>('action', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StorageTaskActionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationTimeInUtc = registerOutput<String>('creationTimeInUtc');
    description = registerOutput<String>('description');
    enabled = registerOutput<bool>('enabled');
    identity = registerOutput<ManagedServiceIdentityResponse>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    taskVersion = registerOutput<double>('taskVersion');
    type = registerOutput<String>('type');
  }
}
