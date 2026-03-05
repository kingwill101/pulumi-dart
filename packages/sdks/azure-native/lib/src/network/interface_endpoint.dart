import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_service_response.dart';
import 'interface_endpoint_args.dart';
import 'subnet_response.dart';

/// Interface endpoint resource.
///
/// Uses Azure REST API version 2019-02-01. In version 2.x of the Azure Native provider, it used API version 2019-02-01.
///
/// Other available API versions: 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create interface endpoint
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var interfaceEndpoint = new AzureNative.Network.InterfaceEndpoint("interfaceEndpoint", new()
///     {
///         EndpointService = new AzureNative.Network.Inputs.EndpointServiceArgs
///         {
///             Id = "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Provider/resourceType/resourceName",
///         },
///         Fqdn = "uniqueIdentifier.fqdn.windows.net",
///         InterfaceEndpointName = "testIe",
///         ResourceGroupName = "rg1",
///         Subnet = new AzureNative.Network.Inputs.SubnetArgs
///         {
///             Id = "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet",
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewInterfaceEndpoint(ctx, "interfaceEndpoint", &network.InterfaceEndpointArgs{
/// 			EndpointService: &network.EndpointServiceArgs{
/// 				Id: pulumi.String("/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Provider/resourceType/resourceName"),
/// 			},
/// 			Fqdn:                  pulumi.String("uniqueIdentifier.fqdn.windows.net"),
/// 			InterfaceEndpointName: pulumi.String("testIe"),
/// 			ResourceGroupName:     pulumi.String("rg1"),
/// 			Subnet: &network.SubnetTypeArgs{
/// 				Id: pulumi.String("/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet"),
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
/// import com.pulumi.azurenative.network.InterfaceEndpoint;
/// import com.pulumi.azurenative.network.InterfaceEndpointArgs;
/// import com.pulumi.azurenative.network.inputs.EndpointServiceArgs;
/// import com.pulumi.azurenative.network.inputs.SubnetArgs;
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
///         var interfaceEndpoint = new InterfaceEndpoint("interfaceEndpoint", InterfaceEndpointArgs.builder()
///             .endpointService(EndpointServiceArgs.builder()
///                 .id("/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Provider/resourceType/resourceName")
///                 .build())
///             .fqdn("uniqueIdentifier.fqdn.windows.net")
///             .interfaceEndpointName("testIe")
///             .resourceGroupName("rg1")
///             .subnet(SubnetArgs.builder()
///                 .id("/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet")
///                 .build())
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
/// const interfaceEndpoint = new azure_native.network.InterfaceEndpoint("interfaceEndpoint", {
///     endpointService: {
///         id: "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Provider/resourceType/resourceName",
///     },
///     fqdn: "uniqueIdentifier.fqdn.windows.net",
///     interfaceEndpointName: "testIe",
///     resourceGroupName: "rg1",
///     subnet: {
///         id: "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// interface_endpoint = azure_native.network.InterfaceEndpoint("interfaceEndpoint",
///     endpoint_service={
///         "id": "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Provider/resourceType/resourceName",
///     },
///     fqdn="uniqueIdentifier.fqdn.windows.net",
///     interface_endpoint_name="testIe",
///     resource_group_name="rg1",
///     subnet={
///         "id": "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   interfaceEndpoint:
///     type: azure-native:network:InterfaceEndpoint
///     properties:
///       endpointService:
///         id: /subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Provider/resourceType/resourceName
///       fqdn: uniqueIdentifier.fqdn.windows.net
///       interfaceEndpointName: testIe
///       resourceGroupName: rg1
///       subnet:
///         id: /subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/mySubnet
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
/// $ pulumi import azure-native:network:InterfaceEndpoint testIe /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/interfaceEndpoints/{interfaceEndpointName}
/// ```
class InterfaceEndpoint extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// A reference to the service being brought into the virtual network.
  late final pulumi.Output<EndpointServiceResponse?> endpointService;

  /// Gets a unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String?> etag;

  /// A first-party service's FQDN that is mapped to the private IP allocated via this interface endpoint.
  late final pulumi.Output<String?> fqdn;

  /// Resource location.
  late final pulumi.Output<String?> location;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// Gets an array of references to the network interfaces created for this interface endpoint.
  late final pulumi.Output<List<Map<String, dynamic>>> networkInterfaces;

  /// A read-only property that identifies who created this interface endpoint.
  late final pulumi.Output<String> owner;

  /// The provisioning state of the interface endpoint. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  late final pulumi.Output<String> provisioningState;

  /// The ID of the subnet from which the private IP will be allocated.
  late final pulumi.Output<SubnetResponse?> subnet;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [InterfaceEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InterfaceEndpoint]. {@macro pulumi_network_interface_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InterfaceEndpoint(
    String name, {
    InterfaceEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:InterfaceEndpoint',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    endpointService = registerOutput<EndpointServiceResponse?>(
      'endpointService',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EndpointServiceResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    etag = registerOutput<String?>('etag');
    fqdn = registerOutput<String?>('fqdn');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    networkInterfaces = registerOutput<List<Map<String, dynamic>>>(
      'networkInterfaces',
    );
    owner = registerOutput<String>('owner');
    provisioningState = registerOutput<String>('provisioningState');
    subnet = registerOutput<SubnetResponse?>(
      'subnet',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SubnetResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
