import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_args.dart';
import 'application_upgrade_policy_response.dart';
import 'application_user_assigned_identity_response.dart';
import 'managed_identity_response.dart';
import 'system_data_response.dart';

/// The application resource.
///
/// Uses Azure REST API version 2024-11-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-11-01-preview.
///
/// Other available API versions: 2025-03-01-preview, 2025-06-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicefabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Put an application with maximum parameters
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var application = new AzureNative.ServiceFabric.Application("application", new()
///     {
///         ApplicationName = "myApp",
///         ClusterName = "myCluster",
///         Location = "eastus",
///         Parameters =
///         {
///             { "param1", "value1" },
///         },
///         ResourceGroupName = "resRg",
///         Tags =
///         {
///             { "a", "b" },
///         },
///         UpgradePolicy = new AzureNative.ServiceFabric.Inputs.ApplicationUpgradePolicyArgs
///         {
///             ApplicationHealthPolicy = new AzureNative.ServiceFabric.Inputs.ApplicationHealthPolicyArgs
///             {
///                 ConsiderWarningAsError = true,
///                 DefaultServiceTypeHealthPolicy = new AzureNative.ServiceFabric.Inputs.ServiceTypeHealthPolicyArgs
///                 {
///                     MaxPercentUnhealthyPartitionsPerService = 0,
///                     MaxPercentUnhealthyReplicasPerPartition = 0,
///                     MaxPercentUnhealthyServices = 0,
///                 },
///                 MaxPercentUnhealthyDeployedApplications = 0,
///                 ServiceTypeHealthPolicyMap =
///                 {
///                     { "service1", new AzureNative.ServiceFabric.Inputs.ServiceTypeHealthPolicyArgs
///                     {
///                         MaxPercentUnhealthyPartitionsPerService = 30,
///                         MaxPercentUnhealthyReplicasPerPartition = 30,
///                         MaxPercentUnhealthyServices = 30,
///                     } },
///                 },
///             },
///             ForceRestart = false,
///             InstanceCloseDelayDuration = 600,
///             RecreateApplication = false,
///             RollingUpgradeMonitoringPolicy = new AzureNative.ServiceFabric.Inputs.RollingUpgradeMonitoringPolicyArgs
///             {
///                 FailureAction = AzureNative.ServiceFabric.FailureAction.Rollback,
///                 HealthCheckRetryTimeout = "00:10:00",
///                 HealthCheckStableDuration = "00:05:00",
///                 HealthCheckWaitDuration = "00:02:00",
///                 UpgradeDomainTimeout = "00:15:00",
///                 UpgradeTimeout = "01:00:00",
///             },
///             UpgradeMode = AzureNative.ServiceFabric.RollingUpgradeMode.UnmonitoredAuto,
///             UpgradeReplicaSetCheckTimeout = 3600,
///         },
///         Version = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/resRg/providers/Microsoft.ServiceFabric/managedclusters/myCluster/applicationTypes/myAppType/versions/1.0",
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
/// 	servicefabric "github.com/pulumi/pulumi-azure-native-sdk/servicefabric/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicefabric.NewApplication(ctx, "application", &servicefabric.ApplicationArgs{
/// 			ApplicationName: pulumi.String("myApp"),
/// 			ClusterName:     pulumi.String("myCluster"),
/// 			Location:        pulumi.String("eastus"),
/// 			Parameters: pulumi.StringMap{
/// 				"param1": pulumi.String("value1"),
/// 			},
/// 			ResourceGroupName: pulumi.String("resRg"),
/// 			Tags: pulumi.StringMap{
/// 				"a": pulumi.String("b"),
/// 			},
/// 			UpgradePolicy: &servicefabric.ApplicationUpgradePolicyArgs{
/// 				ApplicationHealthPolicy: &servicefabric.ApplicationHealthPolicyArgs{
/// 					ConsiderWarningAsError: pulumi.Bool(true),
/// 					DefaultServiceTypeHealthPolicy: &servicefabric.ServiceTypeHealthPolicyArgs{
/// 						MaxPercentUnhealthyPartitionsPerService: pulumi.Int(0),
/// 						MaxPercentUnhealthyReplicasPerPartition: pulumi.Int(0),
/// 						MaxPercentUnhealthyServices:             pulumi.Int(0),
/// 					},
/// 					MaxPercentUnhealthyDeployedApplications: pulumi.Int(0),
/// 					ServiceTypeHealthPolicyMap: servicefabric.ServiceTypeHealthPolicyMap{
/// 						"service1": &servicefabric.ServiceTypeHealthPolicyArgs{
/// 							MaxPercentUnhealthyPartitionsPerService: pulumi.Int(30),
/// 							MaxPercentUnhealthyReplicasPerPartition: pulumi.Int(30),
/// 							MaxPercentUnhealthyServices:             pulumi.Int(30),
/// 						},
/// 					},
/// 				},
/// 				ForceRestart:               pulumi.Bool(false),
/// 				InstanceCloseDelayDuration: pulumi.Float64(600),
/// 				RecreateApplication:        pulumi.Bool(false),
/// 				RollingUpgradeMonitoringPolicy: &servicefabric.RollingUpgradeMonitoringPolicyArgs{
/// 					FailureAction:             pulumi.String(servicefabric.FailureActionRollback),
/// 					HealthCheckRetryTimeout:   pulumi.String("00:10:00"),
/// 					HealthCheckStableDuration: pulumi.String("00:05:00"),
/// 					HealthCheckWaitDuration:   pulumi.String("00:02:00"),
/// 					UpgradeDomainTimeout:      pulumi.String("00:15:00"),
/// 					UpgradeTimeout:            pulumi.String("01:00:00"),
/// 				},
/// 				UpgradeMode:                   pulumi.String(servicefabric.RollingUpgradeModeUnmonitoredAuto),
/// 				UpgradeReplicaSetCheckTimeout: pulumi.Float64(3600),
/// 			},
/// 			Version: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/resRg/providers/Microsoft.ServiceFabric/managedclusters/myCluster/applicationTypes/myAppType/versions/1.0"),
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
/// import com.pulumi.azurenative.servicefabric.Application;
/// import com.pulumi.azurenative.servicefabric.ApplicationArgs;
/// import com.pulumi.azurenative.servicefabric.inputs.ApplicationUpgradePolicyArgs;
/// import com.pulumi.azurenative.servicefabric.inputs.ApplicationHealthPolicyArgs;
/// import com.pulumi.azurenative.servicefabric.inputs.ServiceTypeHealthPolicyArgs;
/// import com.pulumi.azurenative.servicefabric.inputs.RollingUpgradeMonitoringPolicyArgs;
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
///         var application = new Application("application", ApplicationArgs.builder()
///             .applicationName("myApp")
///             .clusterName("myCluster")
///             .location("eastus")
///             .parameters(Map.of("param1", "value1"))
///             .resourceGroupName("resRg")
///             .tags(Map.of("a", "b"))
///             .upgradePolicy(ApplicationUpgradePolicyArgs.builder()
///                 .applicationHealthPolicy(ApplicationHealthPolicyArgs.builder()
///                     .considerWarningAsError(true)
///                     .defaultServiceTypeHealthPolicy(ServiceTypeHealthPolicyArgs.builder()
///                         .maxPercentUnhealthyPartitionsPerService(0)
///                         .maxPercentUnhealthyReplicasPerPartition(0)
///                         .maxPercentUnhealthyServices(0)
///                         .build())
///                     .maxPercentUnhealthyDeployedApplications(0)
///                     .serviceTypeHealthPolicyMap(Map.of("service1", ServiceTypeHealthPolicyArgs.builder()
///                         .maxPercentUnhealthyPartitionsPerService(30)
///                         .maxPercentUnhealthyReplicasPerPartition(30)
///                         .maxPercentUnhealthyServices(30)
///                         .build()))
///                     .build())
///                 .forceRestart(false)
///                 .instanceCloseDelayDuration(600.0)
///                 .recreateApplication(false)
///                 .rollingUpgradeMonitoringPolicy(RollingUpgradeMonitoringPolicyArgs.builder()
///                     .failureAction("Rollback")
///                     .healthCheckRetryTimeout("00:10:00")
///                     .healthCheckStableDuration("00:05:00")
///                     .healthCheckWaitDuration("00:02:00")
///                     .upgradeDomainTimeout("00:15:00")
///                     .upgradeTimeout("01:00:00")
///                     .build())
///                 .upgradeMode("UnmonitoredAuto")
///                 .upgradeReplicaSetCheckTimeout(3600.0)
///                 .build())
///             .version("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/resRg/providers/Microsoft.ServiceFabric/managedclusters/myCluster/applicationTypes/myAppType/versions/1.0")
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
/// const application = new azure_native.servicefabric.Application("application", {
///     applicationName: "myApp",
///     clusterName: "myCluster",
///     location: "eastus",
///     parameters: {
///         param1: "value1",
///     },
///     resourceGroupName: "resRg",
///     tags: {
///         a: "b",
///     },
///     upgradePolicy: {
///         applicationHealthPolicy: {
///             considerWarningAsError: true,
///             defaultServiceTypeHealthPolicy: {
///                 maxPercentUnhealthyPartitionsPerService: 0,
///                 maxPercentUnhealthyReplicasPerPartition: 0,
///                 maxPercentUnhealthyServices: 0,
///             },
///             maxPercentUnhealthyDeployedApplications: 0,
///             serviceTypeHealthPolicyMap: {
///                 service1: {
///                     maxPercentUnhealthyPartitionsPerService: 30,
///                     maxPercentUnhealthyReplicasPerPartition: 30,
///                     maxPercentUnhealthyServices: 30,
///                 },
///             },
///         },
///         forceRestart: false,
///         instanceCloseDelayDuration: 600,
///         recreateApplication: false,
///         rollingUpgradeMonitoringPolicy: {
///             failureAction: azure_native.servicefabric.FailureAction.Rollback,
///             healthCheckRetryTimeout: "00:10:00",
///             healthCheckStableDuration: "00:05:00",
///             healthCheckWaitDuration: "00:02:00",
///             upgradeDomainTimeout: "00:15:00",
///             upgradeTimeout: "01:00:00",
///         },
///         upgradeMode: azure_native.servicefabric.RollingUpgradeMode.UnmonitoredAuto,
///         upgradeReplicaSetCheckTimeout: 3600,
///     },
///     version: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/resRg/providers/Microsoft.ServiceFabric/managedclusters/myCluster/applicationTypes/myAppType/versions/1.0",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// application = azure_native.servicefabric.Application("application",
///     application_name="myApp",
///     cluster_name="myCluster",
///     location="eastus",
///     parameters={
///         "param1": "value1",
///     },
///     resource_group_name="resRg",
///     tags={
///         "a": "b",
///     },
///     upgrade_policy={
///         "application_health_policy": {
///             "consider_warning_as_error": True,
///             "default_service_type_health_policy": {
///                 "max_percent_unhealthy_partitions_per_service": 0,
///                 "max_percent_unhealthy_replicas_per_partition": 0,
///                 "max_percent_unhealthy_services": 0,
///             },
///             "max_percent_unhealthy_deployed_applications": 0,
///             "service_type_health_policy_map": {
///                 "service1": {
///                     "max_percent_unhealthy_partitions_per_service": 30,
///                     "max_percent_unhealthy_replicas_per_partition": 30,
///                     "max_percent_unhealthy_services": 30,
///                 },
///             },
///         },
///         "force_restart": False,
///         "instance_close_delay_duration": 600,
///         "recreate_application": False,
///         "rolling_upgrade_monitoring_policy": {
///             "failure_action": azure_native.servicefabric.FailureAction.ROLLBACK,
///             "health_check_retry_timeout": "00:10:00",
///             "health_check_stable_duration": "00:05:00",
///             "health_check_wait_duration": "00:02:00",
///             "upgrade_domain_timeout": "00:15:00",
///             "upgrade_timeout": "01:00:00",
///         },
///         "upgrade_mode": azure_native.servicefabric.RollingUpgradeMode.UNMONITORED_AUTO,
///         "upgrade_replica_set_check_timeout": 3600,
///     },
///     version="/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/resRg/providers/Microsoft.ServiceFabric/managedclusters/myCluster/applicationTypes/myAppType/versions/1.0")
///
/// ```
///
/// ```yaml
/// resources:
///   application:
///     type: azure-native:servicefabric:Application
///     properties:
///       applicationName: myApp
///       clusterName: myCluster
///       location: eastus
///       parameters:
///         param1: value1
///       resourceGroupName: resRg
///       tags:
///         a: b
///       upgradePolicy:
///         applicationHealthPolicy:
///           considerWarningAsError: true
///           defaultServiceTypeHealthPolicy:
///             maxPercentUnhealthyPartitionsPerService: 0
///             maxPercentUnhealthyReplicasPerPartition: 0
///             maxPercentUnhealthyServices: 0
///           maxPercentUnhealthyDeployedApplications: 0
///           serviceTypeHealthPolicyMap:
///             service1:
///               maxPercentUnhealthyPartitionsPerService: 30
///               maxPercentUnhealthyReplicasPerPartition: 30
///               maxPercentUnhealthyServices: 30
///         forceRestart: false
///         instanceCloseDelayDuration: 600
///         recreateApplication: false
///         rollingUpgradeMonitoringPolicy:
///           failureAction: Rollback
///           healthCheckRetryTimeout: 00:10:00
///           healthCheckStableDuration: 00:05:00
///           healthCheckWaitDuration: 00:02:00
///           upgradeDomainTimeout: 00:15:00
///           upgradeTimeout: 01:00:00
///         upgradeMode: UnmonitoredAuto
///         upgradeReplicaSetCheckTimeout: 3600
///       version: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/resRg/providers/Microsoft.ServiceFabric/managedclusters/myCluster/applicationTypes/myAppType/versions/1.0
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Put an application with minimum parameters
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var application = new AzureNative.ServiceFabric.Application("application", new()
///     {
///         ApplicationName = "myApp",
///         ClusterName = "myCluster",
///         Location = "eastus",
///         ResourceGroupName = "resRg",
///         Version = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/resRg/providers/Microsoft.ServiceFabric/managedclusters/myCluster/applicationTypes/myAppType/versions/1.0",
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
/// 	servicefabric "github.com/pulumi/pulumi-azure-native-sdk/servicefabric/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicefabric.NewApplication(ctx, "application", &servicefabric.ApplicationArgs{
/// 			ApplicationName:   pulumi.String("myApp"),
/// 			ClusterName:       pulumi.String("myCluster"),
/// 			Location:          pulumi.String("eastus"),
/// 			ResourceGroupName: pulumi.String("resRg"),
/// 			Version:           pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/resRg/providers/Microsoft.ServiceFabric/managedclusters/myCluster/applicationTypes/myAppType/versions/1.0"),
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
/// import com.pulumi.azurenative.servicefabric.Application;
/// import com.pulumi.azurenative.servicefabric.ApplicationArgs;
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
///         var application = new Application("application", ApplicationArgs.builder()
///             .applicationName("myApp")
///             .clusterName("myCluster")
///             .location("eastus")
///             .resourceGroupName("resRg")
///             .version("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/resRg/providers/Microsoft.ServiceFabric/managedclusters/myCluster/applicationTypes/myAppType/versions/1.0")
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
/// const application = new azure_native.servicefabric.Application("application", {
///     applicationName: "myApp",
///     clusterName: "myCluster",
///     location: "eastus",
///     resourceGroupName: "resRg",
///     version: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/resRg/providers/Microsoft.ServiceFabric/managedclusters/myCluster/applicationTypes/myAppType/versions/1.0",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// application = azure_native.servicefabric.Application("application",
///     application_name="myApp",
///     cluster_name="myCluster",
///     location="eastus",
///     resource_group_name="resRg",
///     version="/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/resRg/providers/Microsoft.ServiceFabric/managedclusters/myCluster/applicationTypes/myAppType/versions/1.0")
///
/// ```
///
/// ```yaml
/// resources:
///   application:
///     type: azure-native:servicefabric:Application
///     properties:
///       applicationName: myApp
///       clusterName: myCluster
///       location: eastus
///       resourceGroupName: resRg
///       version: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/resRg/providers/Microsoft.ServiceFabric/managedclusters/myCluster/applicationTypes/myAppType/versions/1.0
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
/// $ pulumi import azure-native:servicefabric:Application myApp /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceFabric/managedClusters/{clusterName}/applications/{applicationName}
/// ```
class Application extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Describes the managed identities for an Azure resource.
  late final pulumi.Output<ManagedIdentityResponse?> identity;
  /// The geo-location where the resource lives
  late final pulumi.Output<String?> location;
  /// List of user assigned identities for the application, each mapped to a friendly name.
  late final pulumi.Output<List<ApplicationUserAssignedIdentityResponse>?> managedIdentities;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// List of application parameters with overridden values from their default values specified in the application manifest.
  late final pulumi.Output<Map<String, String>?> parameters;
  /// The current deployment or provisioning state, which only appears in the response
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Describes the policy for a monitored application upgrade.
  late final pulumi.Output<ApplicationUpgradePolicyResponse?> upgradePolicy;
  /// The version of the application type as defined in the application manifest.
  /// This name must be the full Arm Resource ID for the referenced application type version.
  late final pulumi.Output<String?> version;

  /// Creates a new [Application].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Application]. {@macro pulumi_servicefabric_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Application(
    String name, {
    ApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:servicefabric:Application',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.identity = registerOutput<ManagedIdentityResponse?>('identity');
    this.location = registerOutput<String?>('location');
    this.managedIdentities = registerOutput<List<ApplicationUserAssignedIdentityResponse>?>('managedIdentities');
    this.name = registerOutput<String>('name');
    this.parameters = registerOutput<Map<String, String>?>('parameters');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
    this.upgradePolicy = registerOutput<ApplicationUpgradePolicyResponse?>('upgradePolicy');
    this.version = registerOutput<String?>('version');
  }
}
