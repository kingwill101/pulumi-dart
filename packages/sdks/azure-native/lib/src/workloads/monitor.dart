import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_service_plan_configuration_response.dart';
import 'error_detail_response.dart';
import 'managed_resource_group_configuration_response.dart';
import 'managed_service_identity_response.dart';
import 'monitor_args.dart';
import 'system_data_response.dart';

/// SAP monitor info on Azure (ARM properties and SAP monitor properties)
///
/// Uses Azure REST API version 2024-02-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-12-01-preview.
///
/// Other available API versions: 2023-04-01, 2023-10-01-preview, 2023-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native workloads [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a SAP monitor
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var monitor = new AzureNative.Workloads.Monitor("monitor", new()
///     {
///         AppLocation = "westus",
///         AppServicePlanConfiguration = new AzureNative.Workloads.Inputs.AppServicePlanConfigurationArgs
///         {
///             Capacity = 1,
///             Tier = AzureNative.Workloads.AppServicePlanTier.ElasticPremium,
///         },
///         Location = "westus",
///         LogAnalyticsWorkspaceArmId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.operationalinsights/workspaces/myWorkspace",
///         ManagedResourceGroupConfiguration = new AzureNative.Workloads.Inputs.ManagedResourceGroupConfigurationArgs
///         {
///             Name = "myManagedRg",
///         },
///         MonitorName = "mySapMonitor",
///         MonitorSubnet = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet",
///         ResourceGroupName = "myResourceGroup",
///         RoutingPreference = AzureNative.Workloads.RoutingPreference.RouteAll,
///         Tags =
///         {
///             { "key", "value" },
///         },
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewMonitor(ctx, "monitor", &workloads.MonitorArgs{
/// 			AppLocation: pulumi.String("westus"),
/// 			AppServicePlanConfiguration: &workloads.AppServicePlanConfigurationArgs{
/// 				Capacity: pulumi.Int(1),
/// 				Tier:     pulumi.String(workloads.AppServicePlanTierElasticPremium),
/// 			},
/// 			Location:                   pulumi.String("westus"),
/// 			LogAnalyticsWorkspaceArmId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.operationalinsights/workspaces/myWorkspace"),
/// 			ManagedResourceGroupConfiguration: &workloads.ManagedResourceGroupConfigurationArgs{
/// 				Name: pulumi.String("myManagedRg"),
/// 			},
/// 			MonitorName:       pulumi.String("mySapMonitor"),
/// 			MonitorSubnet:     pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			RoutingPreference: pulumi.String(workloads.RoutingPreferenceRouteAll),
/// 			Tags: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
/// 			},
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
/// import com.pulumi.azurenative.workloads.Monitor;
/// import com.pulumi.azurenative.workloads.MonitorArgs;
/// import com.pulumi.azurenative.workloads.inputs.AppServicePlanConfigurationArgs;
/// import com.pulumi.azurenative.workloads.inputs.ManagedResourceGroupConfigurationArgs;
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
///         var monitor = new Monitor("monitor", MonitorArgs.builder()
///             .appLocation("westus")
///             .appServicePlanConfiguration(AppServicePlanConfigurationArgs.builder()
///                 .capacity(1)
///                 .tier("ElasticPremium")
///                 .build())
///             .location("westus")
///             .logAnalyticsWorkspaceArmId("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.operationalinsights/workspaces/myWorkspace")
///             .managedResourceGroupConfiguration(ManagedResourceGroupConfigurationArgs.builder()
///                 .name("myManagedRg")
///                 .build())
///             .monitorName("mySapMonitor")
///             .monitorSubnet("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet")
///             .resourceGroupName("myResourceGroup")
///             .routingPreference("RouteAll")
///             .tags(Map.of("key", "value"))
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
/// const monitor = new azure_native.workloads.Monitor("monitor", {
///     appLocation: "westus",
///     appServicePlanConfiguration: {
///         capacity: 1,
///         tier: azure_native.workloads.AppServicePlanTier.ElasticPremium,
///     },
///     location: "westus",
///     logAnalyticsWorkspaceArmId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.operationalinsights/workspaces/myWorkspace",
///     managedResourceGroupConfiguration: {
///         name: "myManagedRg",
///     },
///     monitorName: "mySapMonitor",
///     monitorSubnet: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet",
///     resourceGroupName: "myResourceGroup",
///     routingPreference: azure_native.workloads.RoutingPreference.RouteAll,
///     tags: {
///         key: "value",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// monitor = azure_native.workloads.Monitor("monitor",
///     app_location="westus",
///     app_service_plan_configuration={
///         "capacity": 1,
///         "tier": azure_native.workloads.AppServicePlanTier.ELASTIC_PREMIUM,
///     },
///     location="westus",
///     log_analytics_workspace_arm_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.operationalinsights/workspaces/myWorkspace",
///     managed_resource_group_configuration={
///         "name": "myManagedRg",
///     },
///     monitor_name="mySapMonitor",
///     monitor_subnet="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet",
///     resource_group_name="myResourceGroup",
///     routing_preference=azure_native.workloads.RoutingPreference.ROUTE_ALL,
///     tags={
///         "key": "value",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   monitor:
///     type: azure-native:workloads:Monitor
///     properties:
///       appLocation: westus
///       appServicePlanConfiguration:
///         capacity: 1
///         tier: ElasticPremium
///       location: westus
///       logAnalyticsWorkspaceArmId: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.operationalinsights/workspaces/myWorkspace
///       managedResourceGroupConfiguration:
///         name: myManagedRg
///       monitorName: mySapMonitor
///       monitorSubnet: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet
///       resourceGroupName: myResourceGroup
///       routingPreference: RouteAll
///       tags:
///         key: value
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a SAP monitor with system assigned identity
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var monitor = new AzureNative.Workloads.Monitor("monitor", new()
///     {
///         AppLocation = "westus",
///         AppServicePlanConfiguration = new AzureNative.Workloads.Inputs.AppServicePlanConfigurationArgs
///         {
///             Capacity = 1,
///             Tier = AzureNative.Workloads.AppServicePlanTier.ElasticPremium,
///         },
///         Identity = new AzureNative.Workloads.Inputs.ManagedServiceIdentityArgs
///         {
///             Type = AzureNative.Workloads.ManagedServiceIdentityType.SystemAssigned,
///         },
///         Location = "westus",
///         LogAnalyticsWorkspaceArmId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.operationalinsights/workspaces/myWorkspace",
///         ManagedResourceGroupConfiguration = new AzureNative.Workloads.Inputs.ManagedResourceGroupConfigurationArgs
///         {
///             Name = "myManagedRg",
///         },
///         MonitorName = "mySapMonitor",
///         MonitorSubnet = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet",
///         ResourceGroupName = "myResourceGroup",
///         RoutingPreference = AzureNative.Workloads.RoutingPreference.RouteAll,
///         Tags =
///         {
///             { "key", "value" },
///         },
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewMonitor(ctx, "monitor", &workloads.MonitorArgs{
/// 			AppLocation: pulumi.String("westus"),
/// 			AppServicePlanConfiguration: &workloads.AppServicePlanConfigurationArgs{
/// 				Capacity: pulumi.Int(1),
/// 				Tier:     pulumi.String(workloads.AppServicePlanTierElasticPremium),
/// 			},
/// 			Identity: &workloads.ManagedServiceIdentityArgs{
/// 				Type: pulumi.String(workloads.ManagedServiceIdentityTypeSystemAssigned),
/// 			},
/// 			Location:                   pulumi.String("westus"),
/// 			LogAnalyticsWorkspaceArmId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.operationalinsights/workspaces/myWorkspace"),
/// 			ManagedResourceGroupConfiguration: &workloads.ManagedResourceGroupConfigurationArgs{
/// 				Name: pulumi.String("myManagedRg"),
/// 			},
/// 			MonitorName:       pulumi.String("mySapMonitor"),
/// 			MonitorSubnet:     pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			RoutingPreference: pulumi.String(workloads.RoutingPreferenceRouteAll),
/// 			Tags: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
/// 			},
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
/// import com.pulumi.azurenative.workloads.Monitor;
/// import com.pulumi.azurenative.workloads.MonitorArgs;
/// import com.pulumi.azurenative.workloads.inputs.AppServicePlanConfigurationArgs;
/// import com.pulumi.azurenative.workloads.inputs.ManagedServiceIdentityArgs;
/// import com.pulumi.azurenative.workloads.inputs.ManagedResourceGroupConfigurationArgs;
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
///         var monitor = new Monitor("monitor", MonitorArgs.builder()
///             .appLocation("westus")
///             .appServicePlanConfiguration(AppServicePlanConfigurationArgs.builder()
///                 .capacity(1)
///                 .tier("ElasticPremium")
///                 .build())
///             .identity(ManagedServiceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("westus")
///             .logAnalyticsWorkspaceArmId("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.operationalinsights/workspaces/myWorkspace")
///             .managedResourceGroupConfiguration(ManagedResourceGroupConfigurationArgs.builder()
///                 .name("myManagedRg")
///                 .build())
///             .monitorName("mySapMonitor")
///             .monitorSubnet("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet")
///             .resourceGroupName("myResourceGroup")
///             .routingPreference("RouteAll")
///             .tags(Map.of("key", "value"))
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
/// const monitor = new azure_native.workloads.Monitor("monitor", {
///     appLocation: "westus",
///     appServicePlanConfiguration: {
///         capacity: 1,
///         tier: azure_native.workloads.AppServicePlanTier.ElasticPremium,
///     },
///     identity: {
///         type: azure_native.workloads.ManagedServiceIdentityType.SystemAssigned,
///     },
///     location: "westus",
///     logAnalyticsWorkspaceArmId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.operationalinsights/workspaces/myWorkspace",
///     managedResourceGroupConfiguration: {
///         name: "myManagedRg",
///     },
///     monitorName: "mySapMonitor",
///     monitorSubnet: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet",
///     resourceGroupName: "myResourceGroup",
///     routingPreference: azure_native.workloads.RoutingPreference.RouteAll,
///     tags: {
///         key: "value",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// monitor = azure_native.workloads.Monitor("monitor",
///     app_location="westus",
///     app_service_plan_configuration={
///         "capacity": 1,
///         "tier": azure_native.workloads.AppServicePlanTier.ELASTIC_PREMIUM,
///     },
///     identity={
///         "type": azure_native.workloads.ManagedServiceIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="westus",
///     log_analytics_workspace_arm_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.operationalinsights/workspaces/myWorkspace",
///     managed_resource_group_configuration={
///         "name": "myManagedRg",
///     },
///     monitor_name="mySapMonitor",
///     monitor_subnet="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet",
///     resource_group_name="myResourceGroup",
///     routing_preference=azure_native.workloads.RoutingPreference.ROUTE_ALL,
///     tags={
///         "key": "value",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   monitor:
///     type: azure-native:workloads:Monitor
///     properties:
///       appLocation: westus
///       appServicePlanConfiguration:
///         capacity: 1
///         tier: ElasticPremium
///       identity:
///         type: SystemAssigned
///       location: westus
///       logAnalyticsWorkspaceArmId: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.operationalinsights/workspaces/myWorkspace
///       managedResourceGroupConfiguration:
///         name: myManagedRg
///       monitorName: mySapMonitor
///       monitorSubnet: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet
///       resourceGroupName: myResourceGroup
///       routingPreference: RouteAll
///       tags:
///         key: value
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
/// $ pulumi import azure-native:workloads:Monitor mySapMonitor /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Workloads/monitors/{monitorName}
/// ```
class Monitor extends pulumi.CustomResource {
  /// The SAP monitor resources will be deployed in the SAP monitoring region. The subnet region should be same as the SAP monitoring region.
  late final pulumi.Output<String?> appLocation;

  /// App service plan configuration
  late final pulumi.Output<AppServicePlanConfigurationResponse?>
  appServicePlanConfiguration;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Defines the SAP monitor errors.
  late final pulumi.Output<ErrorDetailResponse> errors;

  /// The managed service identities assigned to this resource.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The ARM ID of the Log Analytics Workspace that is used for SAP monitoring.
  late final pulumi.Output<String?> logAnalyticsWorkspaceArmId;

  /// Managed resource group configuration
  late final pulumi.Output<ManagedResourceGroupConfigurationResponse?>
  managedResourceGroupConfiguration;

  /// The subnet which the SAP monitor will be deployed in
  late final pulumi.Output<String?> monitorSubnet;

  /// The ARM ID of the MSI used for SAP monitoring.
  late final pulumi.Output<String> msiArmId;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// State of provisioning of the SAP monitor.
  late final pulumi.Output<String> provisioningState;

  /// Sets the routing preference of the SAP monitor. By default only RFC1918 traffic is routed to the customer VNET.
  late final pulumi.Output<String?> routingPreference;

  /// The ARM ID of the Storage account used for SAP monitoring.
  late final pulumi.Output<String> storageAccountArmId;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Sets the preference for zone redundancy on resources created for the SAP monitor. By default resources will be created which do not support zone redundancy.
  late final pulumi.Output<String?> zoneRedundancyPreference;

  /// Creates a new [Monitor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Monitor]. {@macro pulumi_workloads_monitor_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Monitor(
    String name, {
    MonitorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:workloads:Monitor',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appLocation = registerOutput<String?>('appLocation');
    appServicePlanConfiguration =
        registerOutput<AppServicePlanConfigurationResponse?>(
          'appServicePlanConfiguration',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return AppServicePlanConfigurationResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    errors = registerOutput<ErrorDetailResponse>(
      'errors',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ErrorDetailResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    identity = registerOutput<ManagedServiceIdentityResponse?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ManagedServiceIdentityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    logAnalyticsWorkspaceArmId = registerOutput<String?>(
      'logAnalyticsWorkspaceArmId',
    );
    managedResourceGroupConfiguration =
        registerOutput<ManagedResourceGroupConfigurationResponse?>(
          'managedResourceGroupConfiguration',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ManagedResourceGroupConfigurationResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    monitorSubnet = registerOutput<String?>('monitorSubnet');
    msiArmId = registerOutput<String>('msiArmId');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    routingPreference = registerOutput<String?>('routingPreference');
    storageAccountArmId = registerOutput<String>('storageAccountArmId');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    zoneRedundancyPreference = registerOutput<String?>(
      'zoneRedundancyPreference',
    );
  }
}
