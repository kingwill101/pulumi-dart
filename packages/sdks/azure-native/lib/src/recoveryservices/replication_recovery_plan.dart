import 'package:pulumi/pulumi.dart' as pulumi;
import 'recovery_plan_properties_response.dart';
import 'replication_recovery_plan_args.dart';

/// Recovery plan details.
///
/// Uses Azure REST API version 2024-10-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2023-02-01, 2023-04-01, 2023-06-01, 2023-08-01, 2024-01-01, 2024-02-01, 2024-04-01, 2025-01-01, 2025-02-01, 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recoveryservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates a recovery plan with the given details.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var replicationRecoveryPlan = new AzureNative.RecoveryServices.ReplicationRecoveryPlan("replicationRecoveryPlan", new()
///     {
///         Properties = new AzureNative.RecoveryServices.Inputs.CreateRecoveryPlanInputPropertiesArgs
///         {
///             FailoverDeploymentModel = AzureNative.RecoveryServices.FailoverDeploymentModel.ResourceManager,
///             Groups = new[]
///             {
///                 new AzureNative.RecoveryServices.Inputs.RecoveryPlanGroupArgs
///                 {
///                     EndGroupActions = new() { },
///                     GroupType = AzureNative.RecoveryServices.RecoveryPlanGroupType.Boot,
///                     ReplicationProtectedItems = new[]
///                     {
///                         new AzureNative.RecoveryServices.Inputs.RecoveryPlanProtectedItemArgs
///                         {
///                             Id = "/Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationFabrics/cloud1/replicationProtectionContainers/cloud_6d224fc6-f326-5d35-96de-fbf51efb3179/replicationProtectedItems/f8491e4f-817a-40dd-a90c-af773978c75b",
///                             VirtualMachineId = "f8491e4f-817a-40dd-a90c-af773978c75b",
///                         },
///                     },
///                     StartGroupActions = new() { },
///                 },
///             },
///             PrimaryFabricId = "/Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationFabrics/cloud1",
///             RecoveryFabricId = "Microsoft Azure",
///         },
///         RecoveryPlanName = "RPtest1",
///         ResourceGroupName = "resourceGroupPS1",
///         ResourceName = "vault1",
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
/// 	recoveryservices "github.com/pulumi/pulumi-azure-native-sdk/recoveryservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := recoveryservices.NewReplicationRecoveryPlan(ctx, "replicationRecoveryPlan", &recoveryservices.ReplicationRecoveryPlanArgs{
/// 			Properties: &recoveryservices.CreateRecoveryPlanInputPropertiesArgs{
/// 				FailoverDeploymentModel: pulumi.String(recoveryservices.FailoverDeploymentModelResourceManager),
/// 				Groups: recoveryservices.RecoveryPlanGroupArray{
/// 					&recoveryservices.RecoveryPlanGroupArgs{
/// 						EndGroupActions: recoveryservices.RecoveryPlanActionArray{},
/// 						GroupType:       pulumi.String(recoveryservices.RecoveryPlanGroupTypeBoot),
/// 						ReplicationProtectedItems: recoveryservices.RecoveryPlanProtectedItemArray{
/// 							&recoveryservices.RecoveryPlanProtectedItemArgs{
/// 								Id:               pulumi.String("/Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationFabrics/cloud1/replicationProtectionContainers/cloud_6d224fc6-f326-5d35-96de-fbf51efb3179/replicationProtectedItems/f8491e4f-817a-40dd-a90c-af773978c75b"),
/// 								VirtualMachineId: pulumi.String("f8491e4f-817a-40dd-a90c-af773978c75b"),
/// 							},
/// 						},
/// 						StartGroupActions: recoveryservices.RecoveryPlanActionArray{},
/// 					},
/// 				},
/// 				PrimaryFabricId:  pulumi.String("/Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationFabrics/cloud1"),
/// 				RecoveryFabricId: pulumi.String("Microsoft Azure"),
/// 			},
/// 			RecoveryPlanName:  pulumi.String("RPtest1"),
/// 			ResourceGroupName: pulumi.String("resourceGroupPS1"),
/// 			ResourceName:      pulumi.String("vault1"),
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
/// import com.pulumi.azurenative.recoveryservices.ReplicationRecoveryPlan;
/// import com.pulumi.azurenative.recoveryservices.ReplicationRecoveryPlanArgs;
/// import com.pulumi.azurenative.recoveryservices.inputs.CreateRecoveryPlanInputPropertiesArgs;
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
///         var replicationRecoveryPlan = new ReplicationRecoveryPlan("replicationRecoveryPlan", ReplicationRecoveryPlanArgs.builder()
///             .properties(CreateRecoveryPlanInputPropertiesArgs.builder()
///                 .failoverDeploymentModel("ResourceManager")
///                 .groups(RecoveryPlanGroupArgs.builder()
///                     .endGroupActions()
///                     .groupType("Boot")
///                     .replicationProtectedItems(RecoveryPlanProtectedItemArgs.builder()
///                         .id("/Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationFabrics/cloud1/replicationProtectionContainers/cloud_6d224fc6-f326-5d35-96de-fbf51efb3179/replicationProtectedItems/f8491e4f-817a-40dd-a90c-af773978c75b")
///                         .virtualMachineId("f8491e4f-817a-40dd-a90c-af773978c75b")
///                         .build())
///                     .startGroupActions()
///                     .build())
///                 .primaryFabricId("/Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationFabrics/cloud1")
///                 .recoveryFabricId("Microsoft Azure")
///                 .build())
///             .recoveryPlanName("RPtest1")
///             .resourceGroupName("resourceGroupPS1")
///             .resourceName("vault1")
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
/// const replicationRecoveryPlan = new azure_native.recoveryservices.ReplicationRecoveryPlan("replicationRecoveryPlan", {
///     properties: {
///         failoverDeploymentModel: azure_native.recoveryservices.FailoverDeploymentModel.ResourceManager,
///         groups: [{
///             endGroupActions: [],
///             groupType: azure_native.recoveryservices.RecoveryPlanGroupType.Boot,
///             replicationProtectedItems: [{
///                 id: "/Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationFabrics/cloud1/replicationProtectionContainers/cloud_6d224fc6-f326-5d35-96de-fbf51efb3179/replicationProtectedItems/f8491e4f-817a-40dd-a90c-af773978c75b",
///                 virtualMachineId: "f8491e4f-817a-40dd-a90c-af773978c75b",
///             }],
///             startGroupActions: [],
///         }],
///         primaryFabricId: "/Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationFabrics/cloud1",
///         recoveryFabricId: "Microsoft Azure",
///     },
///     recoveryPlanName: "RPtest1",
///     resourceGroupName: "resourceGroupPS1",
///     resourceName: "vault1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// replication_recovery_plan = azure_native.recoveryservices.ReplicationRecoveryPlan("replicationRecoveryPlan",
///     properties={
///         "failover_deployment_model": azure_native.recoveryservices.FailoverDeploymentModel.RESOURCE_MANAGER,
///         "groups": [{
///             "end_group_actions": [],
///             "group_type": azure_native.recoveryservices.RecoveryPlanGroupType.BOOT,
///             "replication_protected_items": [{
///                 "id": "/Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationFabrics/cloud1/replicationProtectionContainers/cloud_6d224fc6-f326-5d35-96de-fbf51efb3179/replicationProtectedItems/f8491e4f-817a-40dd-a90c-af773978c75b",
///                 "virtual_machine_id": "f8491e4f-817a-40dd-a90c-af773978c75b",
///             }],
///             "start_group_actions": [],
///         }],
///         "primary_fabric_id": "/Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationFabrics/cloud1",
///         "recovery_fabric_id": "Microsoft Azure",
///     },
///     recovery_plan_name="RPtest1",
///     resource_group_name="resourceGroupPS1",
///     resource_name_="vault1")
///
/// ```
///
/// ```yaml
/// resources:
///   replicationRecoveryPlan:
///     type: azure-native:recoveryservices:ReplicationRecoveryPlan
///     properties:
///       properties:
///         failoverDeploymentModel: ResourceManager
///         groups:
///           - endGroupActions: []
///             groupType: Boot
///             replicationProtectedItems:
///               - id: /Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationFabrics/cloud1/replicationProtectionContainers/cloud_6d224fc6-f326-5d35-96de-fbf51efb3179/replicationProtectedItems/f8491e4f-817a-40dd-a90c-af773978c75b
///                 virtualMachineId: f8491e4f-817a-40dd-a90c-af773978c75b
///             startGroupActions: []
///         primaryFabricId: /Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationFabrics/cloud1
///         recoveryFabricId: Microsoft Azure
///       recoveryPlanName: RPtest1
///       resourceGroupName: resourceGroupPS1
///       resourceName: vault1
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
/// $ pulumi import azure-native:recoveryservices:ReplicationRecoveryPlan RPtest1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{resourceName}/replicationRecoveryPlans/{recoveryPlanName}
/// ```
class ReplicationRecoveryPlan extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource Location
  late final pulumi.Output<String?> location;
  /// Resource Name
  late final pulumi.Output<String> name;
  /// The custom details.
  late final pulumi.Output<RecoveryPlanPropertiesResponse> properties;
  /// Resource Type
  late final pulumi.Output<String> type;

  /// Creates a new [ReplicationRecoveryPlan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReplicationRecoveryPlan]. {@macro pulumi_recoveryservices_replication_recovery_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReplicationRecoveryPlan(
    String name, {
    ReplicationRecoveryPlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:recoveryservices:ReplicationRecoveryPlan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<RecoveryPlanPropertiesResponse>('properties');
    this.type = registerOutput<String>('type');
  }
}
