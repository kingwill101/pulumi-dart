import 'package:pulumi/pulumi.dart' as pulumi;
import 'association_subnet_response.dart';
import 'associations_interface_args.dart';
import 'system_data_response.dart';

/// Association Subresource of Traffic Controller
///
/// Uses Azure REST API version 2025-01-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-11-01, 2024-05-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicenetworking [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Put Association
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var associationsInterface = new AzureNative.ServiceNetworking.AssociationsInterface("associationsInterface", new()
///     {
///         AssociationName = "as1",
///         AssociationType = AzureNative.ServiceNetworking.AssociationType.Subnets,
///         Location = "NorthCentralUS",
///         ResourceGroupName = "rg1",
///         Subnet = new AzureNative.ServiceNetworking.Inputs.AssociationSubnetArgs
///         {
///             Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet-tc/subnets/tc-subnet",
///         },
///         TrafficControllerName = "tc1",
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
/// 	servicenetworking "github.com/pulumi/pulumi-azure-native-sdk/servicenetworking/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicenetworking.NewAssociationsInterface(ctx, "associationsInterface", &servicenetworking.AssociationsInterfaceArgs{
/// 			AssociationName:   pulumi.String("as1"),
/// 			AssociationType:   pulumi.String(servicenetworking.AssociationTypeSubnets),
/// 			Location:          pulumi.String("NorthCentralUS"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Subnet: &servicenetworking.AssociationSubnetArgs{
/// 				Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet-tc/subnets/tc-subnet"),
/// 			},
/// 			TrafficControllerName: pulumi.String("tc1"),
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
/// import com.pulumi.azurenative.servicenetworking.AssociationsInterface;
/// import com.pulumi.azurenative.servicenetworking.AssociationsInterfaceArgs;
/// import com.pulumi.azurenative.servicenetworking.inputs.AssociationSubnetArgs;
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
///         var associationsInterface = new AssociationsInterface("associationsInterface", AssociationsInterfaceArgs.builder()
///             .associationName("as1")
///             .associationType("subnets")
///             .location("NorthCentralUS")
///             .resourceGroupName("rg1")
///             .subnet(AssociationSubnetArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet-tc/subnets/tc-subnet")
///                 .build())
///             .trafficControllerName("tc1")
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
/// const associationsInterface = new azure_native.servicenetworking.AssociationsInterface("associationsInterface", {
///     associationName: "as1",
///     associationType: azure_native.servicenetworking.AssociationType.Subnets,
///     location: "NorthCentralUS",
///     resourceGroupName: "rg1",
///     subnet: {
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet-tc/subnets/tc-subnet",
///     },
///     trafficControllerName: "tc1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// associations_interface = azure_native.servicenetworking.AssociationsInterface("associationsInterface",
///     association_name="as1",
///     association_type=azure_native.servicenetworking.AssociationType.SUBNETS,
///     location="NorthCentralUS",
///     resource_group_name="rg1",
///     subnet={
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet-tc/subnets/tc-subnet",
///     },
///     traffic_controller_name="tc1")
///
/// ```
///
/// ```yaml
/// resources:
///   associationsInterface:
///     type: azure-native:servicenetworking:AssociationsInterface
///     properties:
///       associationName: as1
///       associationType: subnets
///       location: NorthCentralUS
///       resourceGroupName: rg1
///       subnet:
///         id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet-tc/subnets/tc-subnet
///       trafficControllerName: tc1
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
/// $ pulumi import azure-native:servicenetworking:AssociationsInterface associatedvnet-1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceNetworking/trafficControllers/{trafficControllerName}/associations/{associationName}
/// ```
class AssociationsInterface extends pulumi.CustomResource {
  /// Association Type
  late final pulumi.Output<String> associationType;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Provisioning State of Traffic Controller Association Resource
  late final pulumi.Output<String> provisioningState;

  /// Association Subnet
  late final pulumi.Output<AssociationSubnetResponse?> subnet;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AssociationsInterface].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AssociationsInterface]. {@macro pulumi_servicenetworking_associations_interface_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AssociationsInterface(
    String name, {
    AssociationsInterfaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:servicenetworking:AssociationsInterface',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    associationType = registerOutput<String>('associationType');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    subnet = registerOutput<AssociationSubnetResponse?>('subnet');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
