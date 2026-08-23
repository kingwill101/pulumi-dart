import 'package:pulumi/pulumi.dart' as pulumi;
import 'collector_policy_args.dart';
import 'ingestion_policy_properties_format_response.dart';
import 'system_data_response.dart';

/// Collector policy resource.
///
/// Uses Azure REST API version 2022-11-01. In version 2.x of the Azure Native provider, it used API version 2022-11-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a collection policy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var collectorPolicy = new AzureNative.NetworkFunction.CollectorPolicy("collectorPolicy", new()
///     {
///         AzureTrafficCollectorName = "atc",
///         CollectorPolicyName = "cp1",
///         EmissionPolicies = new[]
///         {
///             new AzureNative.NetworkFunction.Inputs.EmissionPoliciesPropertiesFormatArgs
///             {
///                 EmissionDestinations = new[]
///                 {
///                     new AzureNative.NetworkFunction.Inputs.EmissionPolicyDestinationArgs
///                     {
///                         DestinationType = AzureNative.NetworkFunction.DestinationType.AzureMonitor,
///                     },
///                 },
///                 EmissionType = AzureNative.NetworkFunction.EmissionType.IPFIX,
///             },
///         },
///         IngestionPolicy = new AzureNative.NetworkFunction.Inputs.IngestionPolicyPropertiesFormatArgs
///         {
///             IngestionSources = new[]
///             {
///                 new AzureNative.NetworkFunction.Inputs.IngestionSourcesPropertiesFormatArgs
///                 {
///                     ResourceId = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/expressRouteCircuits/circuitName",
///                     SourceType = AzureNative.NetworkFunction.SourceType.Resource,
///                 },
///             },
///             IngestionType = AzureNative.NetworkFunction.IngestionType.IPFIX,
///         },
///         Location = "West US",
///         ResourceGroupName = "rg1",
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
/// 	networkfunction "github.com/pulumi/pulumi-azure-native-sdk/networkfunction/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkfunction.NewCollectorPolicy(ctx, "collectorPolicy", &networkfunction.CollectorPolicyArgs{
/// 			AzureTrafficCollectorName: pulumi.String("atc"),
/// 			CollectorPolicyName:       pulumi.String("cp1"),
/// 			EmissionPolicies: networkfunction.EmissionPoliciesPropertiesFormatArray{
/// 				&networkfunction.EmissionPoliciesPropertiesFormatArgs{
/// 					EmissionDestinations: networkfunction.EmissionPolicyDestinationArray{
/// 						&networkfunction.EmissionPolicyDestinationArgs{
/// 							DestinationType: pulumi.String(networkfunction.DestinationTypeAzureMonitor),
/// 						},
/// 					},
/// 					EmissionType: pulumi.String(networkfunction.EmissionTypeIPFIX),
/// 				},
/// 			},
/// 			IngestionPolicy: &networkfunction.IngestionPolicyPropertiesFormatArgs{
/// 				IngestionSources: networkfunction.IngestionSourcesPropertiesFormatArray{
/// 					&networkfunction.IngestionSourcesPropertiesFormatArgs{
/// 						ResourceId: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/expressRouteCircuits/circuitName"),
/// 						SourceType: pulumi.String(networkfunction.SourceTypeResource),
/// 					},
/// 				},
/// 				IngestionType: pulumi.String(networkfunction.IngestionTypeIPFIX),
/// 			},
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("rg1"),
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
/// resource "azure-native_networkfunction_collectorpolicy" "collectorPolicy" {
///   azure_traffic_collector_name = "atc"
///   collector_policy_name        = "cp1"
///   emission_policies {
///     emission_destinations {
///       destination_type = "AzureMonitor"
///     }
///     emission_type = "IPFIX"
///   }
///   ingestion_policy = {
///     ingestion_sources = [{
///       "resourceId" = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/expressRouteCircuits/circuitName"
///       "sourceType" = "Resource"
///     }]
///     ingestion_type = "IPFIX"
///   }
///   location            = "West US"
///   resource_group_name = "rg1"
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
/// import com.pulumi.azurenative.networkfunction.CollectorPolicy;
/// import com.pulumi.azurenative.networkfunction.CollectorPolicyArgs;
/// import com.pulumi.azurenative.networkfunction.inputs.EmissionPoliciesPropertiesFormatArgs;
/// import com.pulumi.azurenative.networkfunction.inputs.IngestionPolicyPropertiesFormatArgs;
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
///         var collectorPolicy = new CollectorPolicy("collectorPolicy", CollectorPolicyArgs.builder()
///             .azureTrafficCollectorName("atc")
///             .collectorPolicyName("cp1")
///             .emissionPolicies(EmissionPoliciesPropertiesFormatArgs.builder()
///                 .emissionDestinations(EmissionPolicyDestinationArgs.builder()
///                     .destinationType("AzureMonitor")
///                     .build())
///                 .emissionType("IPFIX")
///                 .build())
///             .ingestionPolicy(IngestionPolicyPropertiesFormatArgs.builder()
///                 .ingestionSources(IngestionSourcesPropertiesFormatArgs.builder()
///                     .resourceId("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/expressRouteCircuits/circuitName")
///                     .sourceType("Resource")
///                     .build())
///                 .ingestionType("IPFIX")
///                 .build())
///             .location("West US")
///             .resourceGroupName("rg1")
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
/// const collectorPolicy = new azure_native.networkfunction.CollectorPolicy("collectorPolicy", {
///     azureTrafficCollectorName: "atc",
///     collectorPolicyName: "cp1",
///     emissionPolicies: [{
///         emissionDestinations: [{
///             destinationType: azure_native.networkfunction.DestinationType.AzureMonitor,
///         }],
///         emissionType: azure_native.networkfunction.EmissionType.IPFIX,
///     }],
///     ingestionPolicy: {
///         ingestionSources: [{
///             resourceId: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/expressRouteCircuits/circuitName",
///             sourceType: azure_native.networkfunction.SourceType.Resource,
///         }],
///         ingestionType: azure_native.networkfunction.IngestionType.IPFIX,
///     },
///     location: "West US",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// collector_policy = azure_native.networkfunction.CollectorPolicy("collectorPolicy",
///     azure_traffic_collector_name="atc",
///     collector_policy_name="cp1",
///     emission_policies=[{
///         "emission_destinations": [{
///             "destination_type": azure_native.networkfunction.DestinationType.AZURE_MONITOR,
///         }],
///         "emission_type": azure_native.networkfunction.EmissionType.IPFIX,
///     }],
///     ingestion_policy={
///         "ingestion_sources": [{
///             "resource_id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/expressRouteCircuits/circuitName",
///             "source_type": azure_native.networkfunction.SourceType.RESOURCE,
///         }],
///         "ingestion_type": azure_native.networkfunction.IngestionType.IPFIX,
///     },
///     location="West US",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   collectorPolicy:
///     type: azure-native:networkfunction:CollectorPolicy
///     properties:
///       azureTrafficCollectorName: atc
///       collectorPolicyName: cp1
///       emissionPolicies:
///         - emissionDestinations:
///             - destinationType: AzureMonitor
///           emissionType: IPFIX
///       ingestionPolicy:
///         ingestionSources:
///           - resourceId: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/expressRouteCircuits/circuitName
///             sourceType: Resource
///         ingestionType: IPFIX
///       location: West US
///       resourceGroupName: rg1
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
/// $ pulumi import azure-native:networkfunction:CollectorPolicy cp1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetworkFunction/azureTrafficCollectors/{azureTrafficCollectorName}/collectorPolicies/{collectorPolicyName}
/// ```
class CollectorPolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Emission policies.
  late final pulumi.Output<List<Map<String, dynamic>>?> emissionPolicies;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// Ingestion policies.
  late final pulumi.Output<IngestionPolicyPropertiesFormatResponse?> ingestionPolicy;
  /// Resource location.
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [CollectorPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CollectorPolicy]. {@macro pulumi_networkfunction_collector_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CollectorPolicy(
    String name, {
    CollectorPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:networkfunction:CollectorPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    emissionPolicies = registerOutput<List<Map<String, dynamic>>?>('emissionPolicies');
    etag = registerOutput<String>('etag');
    ingestionPolicy = registerOutput<IngestionPolicyPropertiesFormatResponse?>('ingestionPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IngestionPolicyPropertiesFormatResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
