import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_port_args.dart';
import 'managed_service_identity_response.dart';

/// ExpressRoutePort resource definition.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ExpressRoutePortCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var expressRoutePort = new AzureNative.Network.ExpressRoutePort("expressRoutePort", new()
///     {
///         BandwidthInGbps = 100,
///         BillingType = AzureNative.Network.ExpressRoutePortsBillingType.UnlimitedData,
///         Encapsulation = AzureNative.Network.ExpressRoutePortsEncapsulation.QinQ,
///         ExpressRoutePortName = "portName",
///         Location = "westus",
///         PeeringLocation = "peeringLocationName",
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewExpressRoutePort(ctx, "expressRoutePort", &network.ExpressRoutePortArgs{
/// 			BandwidthInGbps:      pulumi.Int(100),
/// 			BillingType:          pulumi.String(network.ExpressRoutePortsBillingTypeUnlimitedData),
/// 			Encapsulation:        pulumi.String(network.ExpressRoutePortsEncapsulationQinQ),
/// 			ExpressRoutePortName: pulumi.String("portName"),
/// 			Location:             pulumi.String("westus"),
/// 			PeeringLocation:      pulumi.String("peeringLocationName"),
/// 			ResourceGroupName:    pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.network.ExpressRoutePort;
/// import com.pulumi.azurenative.network.ExpressRoutePortArgs;
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
///         var expressRoutePort = new ExpressRoutePort("expressRoutePort", ExpressRoutePortArgs.builder()
///             .bandwidthInGbps(100)
///             .billingType("UnlimitedData")
///             .encapsulation("QinQ")
///             .expressRoutePortName("portName")
///             .location("westus")
///             .peeringLocation("peeringLocationName")
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
/// const expressRoutePort = new azure_native.network.ExpressRoutePort("expressRoutePort", {
///     bandwidthInGbps: 100,
///     billingType: azure_native.network.ExpressRoutePortsBillingType.UnlimitedData,
///     encapsulation: azure_native.network.ExpressRoutePortsEncapsulation.QinQ,
///     expressRoutePortName: "portName",
///     location: "westus",
///     peeringLocation: "peeringLocationName",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// express_route_port = azure_native.network.ExpressRoutePort("expressRoutePort",
///     bandwidth_in_gbps=100,
///     billing_type=azure_native.network.ExpressRoutePortsBillingType.UNLIMITED_DATA,
///     encapsulation=azure_native.network.ExpressRoutePortsEncapsulation.QIN_Q,
///     express_route_port_name="portName",
///     location="westus",
///     peering_location="peeringLocationName",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   expressRoutePort:
///     type: azure-native:network:ExpressRoutePort
///     properties:
///       bandwidthInGbps: 100
///       billingType: UnlimitedData
///       encapsulation: QinQ
///       expressRoutePortName: portName
///       location: westus
///       peeringLocation: peeringLocationName
///       resourceGroupName: rg1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ExpressRoutePortUpdateLink
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var expressRoutePort = new AzureNative.Network.ExpressRoutePort("expressRoutePort", new()
///     {
///         BandwidthInGbps = 100,
///         BillingType = AzureNative.Network.ExpressRoutePortsBillingType.UnlimitedData,
///         Encapsulation = AzureNative.Network.ExpressRoutePortsEncapsulation.QinQ,
///         ExpressRoutePortName = "portName",
///         Links = new[]
///         {
///             new AzureNative.Network.Inputs.ExpressRouteLinkArgs
///             {
///                 AdminState = AzureNative.Network.ExpressRouteLinkAdminState.Enabled,
///                 Name = "link1",
///             },
///         },
///         Location = "westus",
///         PeeringLocation = "peeringLocationName",
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewExpressRoutePort(ctx, "expressRoutePort", &network.ExpressRoutePortArgs{
/// 			BandwidthInGbps:      pulumi.Int(100),
/// 			BillingType:          pulumi.String(network.ExpressRoutePortsBillingTypeUnlimitedData),
/// 			Encapsulation:        pulumi.String(network.ExpressRoutePortsEncapsulationQinQ),
/// 			ExpressRoutePortName: pulumi.String("portName"),
/// 			Links: network.ExpressRouteLinkArray{
/// 				&network.ExpressRouteLinkArgs{
/// 					AdminState: pulumi.String(network.ExpressRouteLinkAdminStateEnabled),
/// 					Name:       pulumi.String("link1"),
/// 				},
/// 			},
/// 			Location:          pulumi.String("westus"),
/// 			PeeringLocation:   pulumi.String("peeringLocationName"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.network.ExpressRoutePort;
/// import com.pulumi.azurenative.network.ExpressRoutePortArgs;
/// import com.pulumi.azurenative.network.inputs.ExpressRouteLinkArgs;
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
///         var expressRoutePort = new ExpressRoutePort("expressRoutePort", ExpressRoutePortArgs.builder()
///             .bandwidthInGbps(100)
///             .billingType("UnlimitedData")
///             .encapsulation("QinQ")
///             .expressRoutePortName("portName")
///             .links(ExpressRouteLinkArgs.builder()
///                 .adminState("Enabled")
///                 .name("link1")
///                 .build())
///             .location("westus")
///             .peeringLocation("peeringLocationName")
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
/// const expressRoutePort = new azure_native.network.ExpressRoutePort("expressRoutePort", {
///     bandwidthInGbps: 100,
///     billingType: azure_native.network.ExpressRoutePortsBillingType.UnlimitedData,
///     encapsulation: azure_native.network.ExpressRoutePortsEncapsulation.QinQ,
///     expressRoutePortName: "portName",
///     links: [{
///         adminState: azure_native.network.ExpressRouteLinkAdminState.Enabled,
///         name: "link1",
///     }],
///     location: "westus",
///     peeringLocation: "peeringLocationName",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// express_route_port = azure_native.network.ExpressRoutePort("expressRoutePort",
///     bandwidth_in_gbps=100,
///     billing_type=azure_native.network.ExpressRoutePortsBillingType.UNLIMITED_DATA,
///     encapsulation=azure_native.network.ExpressRoutePortsEncapsulation.QIN_Q,
///     express_route_port_name="portName",
///     links=[{
///         "admin_state": azure_native.network.ExpressRouteLinkAdminState.ENABLED,
///         "name": "link1",
///     }],
///     location="westus",
///     peering_location="peeringLocationName",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   expressRoutePort:
///     type: azure-native:network:ExpressRoutePort
///     properties:
///       bandwidthInGbps: 100
///       billingType: UnlimitedData
///       encapsulation: QinQ
///       expressRoutePortName: portName
///       links:
///         - adminState: Enabled
///           name: link1
///       location: westus
///       peeringLocation: peeringLocationName
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
/// $ pulumi import azure-native:network:ExpressRoutePort portName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/ExpressRoutePorts/{expressRoutePortName}
/// ```
class ExpressRoutePort extends pulumi.CustomResource {
  /// Date of the physical port allocation to be used in Letter of Authorization.
  late final pulumi.Output<String> allocationDate;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Bandwidth of procured ports in Gbps.
  late final pulumi.Output<int?> bandwidthInGbps;
  /// The billing type of the ExpressRoutePort resource.
  late final pulumi.Output<String?> billingType;
  /// Reference the ExpressRoute circuit(s) that are provisioned on this ExpressRoutePort resource.
  late final pulumi.Output<List<Map<String, dynamic>>> circuits;
  /// Encapsulation method on physical ports.
  late final pulumi.Output<String?> encapsulation;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// Ether type of the physical port.
  late final pulumi.Output<String> etherType;
  /// The identity of ExpressRoutePort, if configured.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// The set of physical links of the ExpressRoutePort resource.
  late final pulumi.Output<List<Map<String, dynamic>>?> links;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// Maximum transmission unit of the physical port pair(s).
  late final pulumi.Output<String> mtu;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The name of the peering location that the ExpressRoutePort is mapped to physically.
  late final pulumi.Output<String?> peeringLocation;
  /// Aggregate Gbps of associated circuit bandwidths.
  late final pulumi.Output<double> provisionedBandwidthInGbps;
  /// The provisioning state of the express route port resource.
  late final pulumi.Output<String> provisioningState;
  /// The resource GUID property of the express route port resource.
  late final pulumi.Output<String> resourceGuid;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ExpressRoutePort].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExpressRoutePort]. {@macro pulumi_network_express_route_port_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExpressRoutePort(
    String name, {
    ExpressRoutePortArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:ExpressRoutePort',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allocationDate = registerOutput<String>('allocationDate');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    bandwidthInGbps = registerOutput<int?>('bandwidthInGbps');
    billingType = registerOutput<String?>('billingType');
    circuits = registerOutput<List<Map<String, dynamic>>>('circuits');
    encapsulation = registerOutput<String?>('encapsulation');
    etag = registerOutput<String>('etag');
    etherType = registerOutput<String>('etherType');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    links = registerOutput<List<Map<String, dynamic>>?>('links');
    location = registerOutput<String?>('location');
    mtu = registerOutput<String>('mtu');
    this.name = registerOutput<String>('name');
    peeringLocation = registerOutput<String?>('peeringLocation');
    provisionedBandwidthInGbps = registerOutput<double>('provisionedBandwidthInGbps');
    provisioningState = registerOutput<String>('provisioningState');
    resourceGuid = registerOutput<String>('resourceGuid');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
