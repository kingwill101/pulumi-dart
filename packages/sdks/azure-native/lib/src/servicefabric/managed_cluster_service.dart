import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_service_args.dart';
import 'stateful_service_properties_response.dart';
import 'system_data_response.dart';

/// The service resource.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01-preview.
///
/// Other available API versions: 2023-03-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01-preview, 2024-02-01-preview, 2024-06-01-preview, 2024-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicefabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Put a service with maximum parameters
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedClusterService = new AzureNative.ServiceFabric.ManagedClusterService("managedClusterService", new()
///     {
///         ApplicationName = "myApp",
///         ClusterName = "myCluster",
///         Location = "eastus",
///         Properties = new AzureNative.ServiceFabric.Inputs.StatelessServicePropertiesArgs
///         {
///             CorrelationScheme = new[]
///             {
///                 new AzureNative.ServiceFabric.Inputs.ServiceCorrelationArgs
///                 {
///                     Scheme = AzureNative.ServiceFabric.ServiceCorrelationScheme.AlignedAffinity,
///                     ServiceName = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/resRg/providers/Microsoft.ServiceFabric/managedclusters/myCluster/applications/myApp/services/myService1",
///                 },
///             },
///             DefaultMoveCost = AzureNative.ServiceFabric.MoveCost.Medium,
///             InstanceCount = 5,
///             MinInstanceCount = 3,
///             MinInstancePercentage = 30,
///             PartitionDescription = new AzureNative.ServiceFabric.Inputs.SingletonPartitionSchemeArgs
///             {
///                 PartitionScheme = "Singleton",
///             },
///             PlacementConstraints = "NodeType==frontend",
///             ScalingPolicies = new[]
///             {
///                 new AzureNative.ServiceFabric.Inputs.ScalingPolicyArgs
///                 {
///                     ScalingMechanism = new AzureNative.ServiceFabric.Inputs.PartitionInstanceCountScaleMechanismArgs
///                     {
///                         Kind = "ScalePartitionInstanceCount",
///                         MaxInstanceCount = 9,
///                         MinInstanceCount = 3,
///                         ScaleIncrement = 2,
///                     },
///                     ScalingTrigger = new AzureNative.ServiceFabric.Inputs.AveragePartitionLoadScalingTriggerArgs
///                     {
///                         Kind = "AveragePartitionLoadTrigger",
///                         LowerLoadThreshold = 2,
///                         MetricName = "metricName",
///                         ScaleInterval = "00:01:00",
///                         UpperLoadThreshold = 8,
///                     },
///                 },
///             },
///             ServiceDnsName = "myservicednsname.myApp",
///             ServiceKind = "Stateless",
///             ServiceLoadMetrics = new[]
///             {
///                 new AzureNative.ServiceFabric.Inputs.ServiceLoadMetricArgs
///                 {
///                     DefaultLoad = 3,
///                     Name = "metric1",
///                     Weight = AzureNative.ServiceFabric.ServiceLoadMetricWeight.Low,
///                 },
///             },
///             ServicePackageActivationMode = AzureNative.ServiceFabric.ServicePackageActivationMode.SharedProcess,
///             ServicePlacementPolicies = new[]
///             {
///                 new AzureNative.ServiceFabric.Inputs.ServicePlacementNonPartiallyPlaceServicePolicyArgs
///                 {
///                     Type = "NonPartiallyPlaceService",
///                 },
///             },
///             ServiceTypeName = "myServiceType",
///         },
///         ResourceGroupName = "resRg",
///         ServiceName = "myService",
///         Tags =
///         {
///             { "a", "b" },
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
/// 	servicefabric "github.com/pulumi/pulumi-azure-native-sdk/servicefabric/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicefabric.NewManagedClusterService(ctx, "managedClusterService", &servicefabric.ManagedClusterServiceArgs{
/// 			ApplicationName: pulumi.String("myApp"),
/// 			ClusterName:     pulumi.String("myCluster"),
/// 			Location:        pulumi.String("eastus"),
/// 			Properties: &servicefabric.StatelessServicePropertiesArgs{
/// 				CorrelationScheme: servicefabric.ServiceCorrelationArray{
/// 					&servicefabric.ServiceCorrelationArgs{
/// 						Scheme:      pulumi.String(servicefabric.ServiceCorrelationSchemeAlignedAffinity),
/// 						ServiceName: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/resRg/providers/Microsoft.ServiceFabric/managedclusters/myCluster/applications/myApp/services/myService1"),
/// 					},
/// 				},
/// 				DefaultMoveCost:       pulumi.String(servicefabric.MoveCostMedium),
/// 				InstanceCount:         pulumi.Int(5),
/// 				MinInstanceCount:      pulumi.Int(3),
/// 				MinInstancePercentage: pulumi.Int(30),
/// 				PartitionDescription: servicefabric.SingletonPartitionScheme{
/// 					PartitionScheme: "Singleton",
/// 				},
/// 				PlacementConstraints: pulumi.String("NodeType==frontend"),
/// 				ScalingPolicies: servicefabric.ScalingPolicyArray{
/// 					&servicefabric.ScalingPolicyArgs{
/// 						ScalingMechanism: servicefabric.PartitionInstanceCountScaleMechanism{
/// 							Kind:             "ScalePartitionInstanceCount",
/// 							MaxInstanceCount: 9,
/// 							MinInstanceCount: 3,
/// 							ScaleIncrement:   2,
/// 						},
/// 						ScalingTrigger: servicefabric.AveragePartitionLoadScalingTrigger{
/// 							Kind:               "AveragePartitionLoadTrigger",
/// 							LowerLoadThreshold: 2,
/// 							MetricName:         "metricName",
/// 							ScaleInterval:      "00:01:00",
/// 							UpperLoadThreshold: 8,
/// 						},
/// 					},
/// 				},
/// 				ServiceDnsName: pulumi.String("myservicednsname.myApp"),
/// 				ServiceKind:    pulumi.String("Stateless"),
/// 				ServiceLoadMetrics: servicefabric.ServiceLoadMetricArray{
/// 					&servicefabric.ServiceLoadMetricArgs{
/// 						DefaultLoad: pulumi.Int(3),
/// 						Name:        pulumi.String("metric1"),
/// 						Weight:      pulumi.String(servicefabric.ServiceLoadMetricWeightLow),
/// 					},
/// 				},
/// 				ServicePackageActivationMode: pulumi.String(servicefabric.ServicePackageActivationModeSharedProcess),
/// 				ServicePlacementPolicies: pulumi.Array{
/// 					servicefabric.ServicePlacementNonPartiallyPlaceServicePolicy{
/// 						Type: "NonPartiallyPlaceService",
/// 					},
/// 				},
/// 				ServiceTypeName: pulumi.String("myServiceType"),
/// 			},
/// 			ResourceGroupName: pulumi.String("resRg"),
/// 			ServiceName:       pulumi.String("myService"),
/// 			Tags: pulumi.StringMap{
/// 				"a": pulumi.String("b"),
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
/// import com.pulumi.azurenative.servicefabric.ManagedClusterService;
/// import com.pulumi.azurenative.servicefabric.ManagedClusterServiceArgs;
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
///         var managedClusterService = new ManagedClusterService("managedClusterService", ManagedClusterServiceArgs.builder()
///             .applicationName("myApp")
///             .clusterName("myCluster")
///             .location("eastus")
///             .properties(StatelessServicePropertiesArgs.builder()
///                 .correlationScheme(ServiceCorrelationArgs.builder()
///                     .scheme("AlignedAffinity")
///                     .serviceName("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/resRg/providers/Microsoft.ServiceFabric/managedclusters/myCluster/applications/myApp/services/myService1")
///                     .build())
///                 .defaultMoveCost("Medium")
///                 .instanceCount(5)
///                 .minInstanceCount(3)
///                 .minInstancePercentage(30)
///                 .partitionDescription(SingletonPartitionSchemeArgs.builder()
///                     .partitionScheme("Singleton")
///                     .build())
///                 .placementConstraints("NodeType==frontend")
///                 .scalingPolicies(ScalingPolicyArgs.builder()
///                     .scalingMechanism(PartitionInstanceCountScaleMechanismArgs.builder()
///                         .kind("ScalePartitionInstanceCount")
///                         .maxInstanceCount(9)
///                         .minInstanceCount(3)
///                         .scaleIncrement(2)
///                         .build())
///                     .scalingTrigger(AveragePartitionLoadScalingTriggerArgs.builder()
///                         .kind("AveragePartitionLoadTrigger")
///                         .lowerLoadThreshold(2)
///                         .metricName("metricName")
///                         .scaleInterval("00:01:00")
///                         .upperLoadThreshold(8)
///                         .build())
///                     .build())
///                 .serviceDnsName("myservicednsname.myApp")
///                 .serviceKind("Stateless")
///                 .serviceLoadMetrics(ServiceLoadMetricArgs.builder()
///                     .defaultLoad(3)
///                     .name("metric1")
///                     .weight("Low")
///                     .build())
///                 .servicePackageActivationMode("SharedProcess")
///                 .servicePlacementPolicies(ServicePlacementNonPartiallyPlaceServicePolicyArgs.builder()
///                     .type("NonPartiallyPlaceService")
///                     .build())
///                 .serviceTypeName("myServiceType")
///                 .build())
///             .resourceGroupName("resRg")
///             .serviceName("myService")
///             .tags(Map.of("a", "b"))
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
/// const managedClusterService = new azure_native.servicefabric.ManagedClusterService("managedClusterService", {
///     applicationName: "myApp",
///     clusterName: "myCluster",
///     location: "eastus",
///     properties: {
///         correlationScheme: [{
///             scheme: azure_native.servicefabric.ServiceCorrelationScheme.AlignedAffinity,
///             serviceName: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/resRg/providers/Microsoft.ServiceFabric/managedclusters/myCluster/applications/myApp/services/myService1",
///         }],
///         defaultMoveCost: azure_native.servicefabric.MoveCost.Medium,
///         instanceCount: 5,
///         minInstanceCount: 3,
///         minInstancePercentage: 30,
///         partitionDescription: {
///             partitionScheme: "Singleton",
///         },
///         placementConstraints: "NodeType==frontend",
///         scalingPolicies: [{
///             scalingMechanism: {
///                 kind: "ScalePartitionInstanceCount",
///                 maxInstanceCount: 9,
///                 minInstanceCount: 3,
///                 scaleIncrement: 2,
///             },
///             scalingTrigger: {
///                 kind: "AveragePartitionLoadTrigger",
///                 lowerLoadThreshold: 2,
///                 metricName: "metricName",
///                 scaleInterval: "00:01:00",
///                 upperLoadThreshold: 8,
///             },
///         }],
///         serviceDnsName: "myservicednsname.myApp",
///         serviceKind: "Stateless",
///         serviceLoadMetrics: [{
///             defaultLoad: 3,
///             name: "metric1",
///             weight: azure_native.servicefabric.ServiceLoadMetricWeight.Low,
///         }],
///         servicePackageActivationMode: azure_native.servicefabric.ServicePackageActivationMode.SharedProcess,
///         servicePlacementPolicies: [{
///             type: "NonPartiallyPlaceService",
///         }],
///         serviceTypeName: "myServiceType",
///     },
///     resourceGroupName: "resRg",
///     serviceName: "myService",
///     tags: {
///         a: "b",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_cluster_service = azure_native.servicefabric.ManagedClusterService("managedClusterService",
///     application_name="myApp",
///     cluster_name="myCluster",
///     location="eastus",
///     properties={
///         "correlation_scheme": [{
///             "scheme": azure_native.servicefabric.ServiceCorrelationScheme.ALIGNED_AFFINITY,
///             "service_name": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/resRg/providers/Microsoft.ServiceFabric/managedclusters/myCluster/applications/myApp/services/myService1",
///         }],
///         "default_move_cost": azure_native.servicefabric.MoveCost.MEDIUM,
///         "instance_count": 5,
///         "min_instance_count": 3,
///         "min_instance_percentage": 30,
///         "partition_description": {
///             "partition_scheme": "Singleton",
///         },
///         "placement_constraints": "NodeType==frontend",
///         "scaling_policies": [{
///             "scaling_mechanism": {
///                 "kind": "ScalePartitionInstanceCount",
///                 "max_instance_count": 9,
///                 "min_instance_count": 3,
///                 "scale_increment": 2,
///             },
///             "scaling_trigger": {
///                 "kind": "AveragePartitionLoadTrigger",
///                 "lower_load_threshold": 2,
///                 "metric_name": "metricName",
///                 "scale_interval": "00:01:00",
///                 "upper_load_threshold": 8,
///             },
///         }],
///         "service_dns_name": "myservicednsname.myApp",
///         "service_kind": "Stateless",
///         "service_load_metrics": [{
///             "default_load": 3,
///             "name": "metric1",
///             "weight": azure_native.servicefabric.ServiceLoadMetricWeight.LOW,
///         }],
///         "service_package_activation_mode": azure_native.servicefabric.ServicePackageActivationMode.SHARED_PROCESS,
///         "service_placement_policies": [{
///             "type": "NonPartiallyPlaceService",
///         }],
///         "service_type_name": "myServiceType",
///     },
///     resource_group_name="resRg",
///     service_name="myService",
///     tags={
///         "a": "b",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   managedClusterService:
///     type: azure-native:servicefabric:ManagedClusterService
///     properties:
///       applicationName: myApp
///       clusterName: myCluster
///       location: eastus
///       properties:
///         correlationScheme:
///           - scheme: AlignedAffinity
///             serviceName: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/resRg/providers/Microsoft.ServiceFabric/managedclusters/myCluster/applications/myApp/services/myService1
///         defaultMoveCost: Medium
///         instanceCount: 5
///         minInstanceCount: 3
///         minInstancePercentage: 30
///         partitionDescription:
///           partitionScheme: Singleton
///         placementConstraints: NodeType==frontend
///         scalingPolicies:
///           - scalingMechanism:
///               kind: ScalePartitionInstanceCount
///               maxInstanceCount: 9
///               minInstanceCount: 3
///               scaleIncrement: 2
///             scalingTrigger:
///               kind: AveragePartitionLoadTrigger
///               lowerLoadThreshold: 2
///               metricName: metricName
///               scaleInterval: 00:01:00
///               upperLoadThreshold: 8
///         serviceDnsName: myservicednsname.myApp
///         serviceKind: Stateless
///         serviceLoadMetrics:
///           - defaultLoad: 3
///             name: metric1
///             weight: Low
///         servicePackageActivationMode: SharedProcess
///         servicePlacementPolicies:
///           - type: NonPartiallyPlaceService
///         serviceTypeName: myServiceType
///       resourceGroupName: resRg
///       serviceName: myService
///       tags:
///         a: b
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Put a service with minimum parameters
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedClusterService = new AzureNative.ServiceFabric.ManagedClusterService("managedClusterService", new()
///     {
///         ApplicationName = "myApp",
///         ClusterName = "myCluster",
///         Location = "eastus",
///         Properties = new AzureNative.ServiceFabric.Inputs.StatelessServicePropertiesArgs
///         {
///             InstanceCount = 1,
///             PartitionDescription = new AzureNative.ServiceFabric.Inputs.SingletonPartitionSchemeArgs
///             {
///                 PartitionScheme = "Singleton",
///             },
///             ServiceKind = "Stateless",
///             ServiceTypeName = "myServiceType",
///         },
///         ResourceGroupName = "resRg",
///         ServiceName = "myService",
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
/// 		_, err := servicefabric.NewManagedClusterService(ctx, "managedClusterService", &servicefabric.ManagedClusterServiceArgs{
/// 			ApplicationName: pulumi.String("myApp"),
/// 			ClusterName:     pulumi.String("myCluster"),
/// 			Location:        pulumi.String("eastus"),
/// 			Properties: &servicefabric.StatelessServicePropertiesArgs{
/// 				InstanceCount: pulumi.Int(1),
/// 				PartitionDescription: servicefabric.SingletonPartitionScheme{
/// 					PartitionScheme: "Singleton",
/// 				},
/// 				ServiceKind:     pulumi.String("Stateless"),
/// 				ServiceTypeName: pulumi.String("myServiceType"),
/// 			},
/// 			ResourceGroupName: pulumi.String("resRg"),
/// 			ServiceName:       pulumi.String("myService"),
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
/// import com.pulumi.azurenative.servicefabric.ManagedClusterService;
/// import com.pulumi.azurenative.servicefabric.ManagedClusterServiceArgs;
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
///         var managedClusterService = new ManagedClusterService("managedClusterService", ManagedClusterServiceArgs.builder()
///             .applicationName("myApp")
///             .clusterName("myCluster")
///             .location("eastus")
///             .properties(StatelessServicePropertiesArgs.builder()
///                 .instanceCount(1)
///                 .partitionDescription(SingletonPartitionSchemeArgs.builder()
///                     .partitionScheme("Singleton")
///                     .build())
///                 .serviceKind("Stateless")
///                 .serviceTypeName("myServiceType")
///                 .build())
///             .resourceGroupName("resRg")
///             .serviceName("myService")
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
/// const managedClusterService = new azure_native.servicefabric.ManagedClusterService("managedClusterService", {
///     applicationName: "myApp",
///     clusterName: "myCluster",
///     location: "eastus",
///     properties: {
///         instanceCount: 1,
///         partitionDescription: {
///             partitionScheme: "Singleton",
///         },
///         serviceKind: "Stateless",
///         serviceTypeName: "myServiceType",
///     },
///     resourceGroupName: "resRg",
///     serviceName: "myService",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_cluster_service = azure_native.servicefabric.ManagedClusterService("managedClusterService",
///     application_name="myApp",
///     cluster_name="myCluster",
///     location="eastus",
///     properties={
///         "instance_count": 1,
///         "partition_description": {
///             "partition_scheme": "Singleton",
///         },
///         "service_kind": "Stateless",
///         "service_type_name": "myServiceType",
///     },
///     resource_group_name="resRg",
///     service_name="myService")
///
/// ```
///
/// ```yaml
/// resources:
///   managedClusterService:
///     type: azure-native:servicefabric:ManagedClusterService
///     properties:
///       applicationName: myApp
///       clusterName: myCluster
///       location: eastus
///       properties:
///         instanceCount: 1
///         partitionDescription:
///           partitionScheme: Singleton
///         serviceKind: Stateless
///         serviceTypeName: myServiceType
///       resourceGroupName: resRg
///       serviceName: myService
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
/// $ pulumi import azure-native:servicefabric:ManagedClusterService myService /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceFabric/managedclusters/{clusterName}/applications/{applicationName}/services/{serviceName}
/// ```
class ManagedClusterService extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource location depends on the parent resource.
  late final pulumi.Output<String?> location;
  /// Azure resource name.
  late final pulumi.Output<String> name;
  /// The service resource properties.
  late final pulumi.Output<StatefulServicePropertiesResponse> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Azure resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Azure resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ManagedClusterService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedClusterService]. {@macro pulumi_servicefabric_managed_cluster_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedClusterService(
    String name, {
    ManagedClusterServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:servicefabric:ManagedClusterService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<StatefulServicePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StatefulServicePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
