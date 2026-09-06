import 'package:pulumi/pulumi.dart' as pulumi;
import 'l2_connection_args.dart';
import 'l2_connections_properties_response_edge_site.dart';
import 'l2_connections_properties_response_ground_station.dart';
import 'l2_connections_properties_response_ground_station_partner_router.dart';
import 'system_data_response.dart';

/// Connects an edge site to an orbital gateway and describes what layer 2 traffic to forward between them.
///
/// Uses Azure REST API version 2024-03-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-03-01-preview.
///
/// Other available API versions: 2024-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native orbital [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create L2 Connection
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var l2Connection = new AzureNative.Orbital.L2Connection("l2Connection", new()
///     {
///         EdgeSite = new AzureNative.Orbital.Inputs.L2ConnectionsPropertiesEdgeSiteArgs
///         {
///             Id = "/subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/resourceGroups/rg1/providers/Microsoft.Orbital/edgeSites/es1",
///         },
///         GroundStation = new AzureNative.Orbital.Inputs.L2ConnectionsPropertiesGroundStationArgs
///         {
///             Id = "/subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/resourceGroups/rg1/providers/Microsoft.Orbital/groundStations/gs1",
///         },
///         GroundStationPartnerRouter = new AzureNative.Orbital.Inputs.L2ConnectionsPropertiesGroundStationPartnerRouterArgs
///         {
///             Name = "customerName-SiteName-01",
///         },
///         L2ConnectionName = "connection1",
///         Location = "westus",
///         Name = "customerName-SiteName-01",
///         ResourceGroupName = "rg1",
///         Tags =
///         {
///             { "tag1", "value1" },
///             { "tag2", "value2" },
///         },
///         VlanId = 200,
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
/// 	orbital "github.com/pulumi/pulumi-azure-native-sdk/orbital/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := orbital.NewL2Connection(ctx, "l2Connection", &orbital.L2ConnectionArgs{
/// 			EdgeSite: &orbital.L2ConnectionsPropertiesEdgeSiteArgs{
/// 				Id: pulumi.String("/subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/resourceGroups/rg1/providers/Microsoft.Orbital/edgeSites/es1"),
/// 			},
/// 			GroundStation: &orbital.L2ConnectionsPropertiesGroundStationArgs{
/// 				Id: pulumi.String("/subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/resourceGroups/rg1/providers/Microsoft.Orbital/groundStations/gs1"),
/// 			},
/// 			GroundStationPartnerRouter: &orbital.L2ConnectionsPropertiesGroundStationPartnerRouterArgs{
/// 				Name: pulumi.String("customerName-SiteName-01"),
/// 			},
/// 			L2ConnectionName:  pulumi.String("connection1"),
/// 			Location:          pulumi.String("westus"),
/// 			Name:              pulumi.String("customerName-SiteName-01"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("value1"),
/// 				"tag2": pulumi.String("value2"),
/// 			},
/// 			VlanId: pulumi.Int(200),
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
/// resource "azure-native_orbital_l2connection" "l2Connection" {
///   edge_site = {
///     id = "/subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/resourceGroups/rg1/providers/Microsoft.Orbital/edgeSites/es1"
///   }
///   ground_station = {
///     id = "/subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/resourceGroups/rg1/providers/Microsoft.Orbital/groundStations/gs1"
///   }
///   ground_station_partner_router = {
///     name = "customerName-SiteName-01"
///   }
///   l2_connection_name  = "connection1"
///   location            = "westus"
///   name                = "customerName-SiteName-01"
///   resource_group_name = "rg1"
///   tags = {
///     "tag1" = "value1"
///     "tag2" = "value2"
///   }
///   vlan_id = 200
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
/// import com.pulumi.azurenative.orbital.L2Connection;
/// import com.pulumi.azurenative.orbital.L2ConnectionArgs;
/// import com.pulumi.azurenative.orbital.inputs.L2ConnectionsPropertiesEdgeSiteArgs;
/// import com.pulumi.azurenative.orbital.inputs.L2ConnectionsPropertiesGroundStationArgs;
/// import com.pulumi.azurenative.orbital.inputs.L2ConnectionsPropertiesGroundStationPartnerRouterArgs;
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
///         var l2Connection = new L2Connection("l2Connection", L2ConnectionArgs.builder()
///             .edgeSite(L2ConnectionsPropertiesEdgeSiteArgs.builder()
///                 .id("/subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/resourceGroups/rg1/providers/Microsoft.Orbital/edgeSites/es1")
///                 .build())
///             .groundStation(L2ConnectionsPropertiesGroundStationArgs.builder()
///                 .id("/subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/resourceGroups/rg1/providers/Microsoft.Orbital/groundStations/gs1")
///                 .build())
///             .groundStationPartnerRouter(L2ConnectionsPropertiesGroundStationPartnerRouterArgs.builder()
///                 .name("customerName-SiteName-01")
///                 .build())
///             .l2ConnectionName("connection1")
///             .location("westus")
///             .name("customerName-SiteName-01")
///             .resourceGroupName("rg1")
///             .tags(Map.ofEntries(
///                 Map.entry("tag1", "value1"),
///                 Map.entry("tag2", "value2")
///             ))
///             .vlanId(200)
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
/// const l2Connection = new azure_native.orbital.L2Connection("l2Connection", {
///     edgeSite: {
///         id: "/subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/resourceGroups/rg1/providers/Microsoft.Orbital/edgeSites/es1",
///     },
///     groundStation: {
///         id: "/subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/resourceGroups/rg1/providers/Microsoft.Orbital/groundStations/gs1",
///     },
///     groundStationPartnerRouter: {
///         name: "customerName-SiteName-01",
///     },
///     l2ConnectionName: "connection1",
///     location: "westus",
///     name: "customerName-SiteName-01",
///     resourceGroupName: "rg1",
///     tags: {
///         tag1: "value1",
///         tag2: "value2",
///     },
///     vlanId: 200,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// l2_connection = azure_native.orbital.L2Connection("l2Connection",
///     edge_site={
///         "id": "/subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/resourceGroups/rg1/providers/Microsoft.Orbital/edgeSites/es1",
///     },
///     ground_station={
///         "id": "/subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/resourceGroups/rg1/providers/Microsoft.Orbital/groundStations/gs1",
///     },
///     ground_station_partner_router={
///         "name": "customerName-SiteName-01",
///     },
///     l2_connection_name="connection1",
///     location="westus",
///     name="customerName-SiteName-01",
///     resource_group_name="rg1",
///     tags={
///         "tag1": "value1",
///         "tag2": "value2",
///     },
///     vlan_id=200)
///
/// ```
///
/// ```yaml
/// resources:
///   l2Connection:
///     type: azure-native:orbital:L2Connection
///     properties:
///       edgeSite:
///         id: /subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/resourceGroups/rg1/providers/Microsoft.Orbital/edgeSites/es1
///       groundStation:
///         id: /subscriptions/c1be1141-a7c9-4aac-9608-3c2e2f1152c3/resourceGroups/rg1/providers/Microsoft.Orbital/groundStations/gs1
///       groundStationPartnerRouter:
///         name: customerName-SiteName-01
///       l2ConnectionName: connection1
///       location: westus
///       name: customerName-SiteName-01
///       resourceGroupName: rg1
///       tags:
///         tag1: value1
///         tag2: value2
///       vlanId: 200
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
/// $ pulumi import azure-native:orbital:L2Connection connection1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Orbital/l2Connections/{l2ConnectionName}
/// ```
class L2Connection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Globally-unique identifier for this connection that is to be used as a circuit ID.
  late final pulumi.Output<String> circuitId;
  /// A reference to an Microsoft.Orbital/edgeSites resource to route traffic for.
  late final pulumi.Output<L2ConnectionsPropertiesResponseEdgeSite> edgeSite;
  /// A reference to an Microsoft.Orbital/groundStations resource to route traffic for.
  late final pulumi.Output<L2ConnectionsPropertiesResponseGroundStation> groundStation;
  /// The name of the partner router to establish a connection to within the ground station.
  late final pulumi.Output<L2ConnectionsPropertiesResponseGroundStationPartnerRouter> groundStationPartnerRouter;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The VLAN ID for the L2 connection.
  late final pulumi.Output<int> vlanId;

  /// Creates a new [L2Connection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [L2Connection]. {@macro pulumi_orbital_l2_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  L2Connection(
    String name, {
    L2ConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:orbital:L2Connection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    circuitId = registerOutput<String>('circuitId');
    edgeSite = registerOutput<L2ConnectionsPropertiesResponseEdgeSite>('edgeSite', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return L2ConnectionsPropertiesResponseEdgeSite.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    groundStation = registerOutput<L2ConnectionsPropertiesResponseGroundStation>('groundStation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return L2ConnectionsPropertiesResponseGroundStation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    groundStationPartnerRouter = registerOutput<L2ConnectionsPropertiesResponseGroundStationPartnerRouter>('groundStationPartnerRouter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return L2ConnectionsPropertiesResponseGroundStationPartnerRouter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    vlanId = registerOutput<int>('vlanId');
  }

  /// Creates a typed reference to an existing [L2Connection] resource.
  L2Connection.reference(String urn)
    : super(
        'azure-native:orbital:L2Connection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    circuitId = registerOutput<String>('circuitId');
    edgeSite = registerOutput<L2ConnectionsPropertiesResponseEdgeSite>('edgeSite', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return L2ConnectionsPropertiesResponseEdgeSite.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    groundStation = registerOutput<L2ConnectionsPropertiesResponseGroundStation>('groundStation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return L2ConnectionsPropertiesResponseGroundStation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    groundStationPartnerRouter = registerOutput<L2ConnectionsPropertiesResponseGroundStationPartnerRouter>('groundStationPartnerRouter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return L2ConnectionsPropertiesResponseGroundStationPartnerRouter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    vlanId = registerOutput<int>('vlanId');
  }
}
