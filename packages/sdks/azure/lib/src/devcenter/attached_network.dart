import 'package:pulumi/pulumi.dart' as pulumi;
import 'attached_network_args.dart';
import 'attached_network_state.dart';

/// Manages a Dev Center Attached Network.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-dcan",
///     location: "West Europe",
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-vnet",
///     addressSpaces: ["10.0.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "internal",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
/// });
/// const exampleDevCenter = new azure.devcenter.DevCenter("example", {
///     name: "example-dc",
///     resourceGroupName: example.name,
///     location: example.location,
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleNetworkConnection = new azure.devcenter.NetworkConnection("example", {
///     name: "example-dcnc",
///     resourceGroupName: example.name,
///     location: example.location,
///     domainJoinType: "AzureADJoin",
///     subnetId: exampleSubnet.id,
/// });
/// const exampleAttachedNetwork = new azure.devcenter.AttachedNetwork("example", {
///     name: "example-dcet",
///     devCenterId: exampleDevCenter.id,
///     networkConnectionId: exampleNetworkConnection.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-dcan",
///     location="West Europe")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-vnet",
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="internal",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"])
/// example_dev_center = azure.devcenter.DevCenter("example",
///     name="example-dc",
///     resource_group_name=example.name,
///     location=example.location,
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_network_connection = azure.devcenter.NetworkConnection("example",
///     name="example-dcnc",
///     resource_group_name=example.name,
///     location=example.location,
///     domain_join_type="AzureADJoin",
///     subnet_id=example_subnet.id)
/// example_attached_network = azure.devcenter.AttachedNetwork("example",
///     name="example-dcet",
///     dev_center_id=example_dev_center.id,
///     network_connection_id=example_network_connection.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-dcan",
///         Location = "West Europe",
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example-vnet",
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "internal",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.2.0/24",
///         },
///     });
///
///     var exampleDevCenter = new Azure.DevCenter.DevCenter("example", new()
///     {
///         Name = "example-dc",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Identity = new Azure.DevCenter.Inputs.DevCenterIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleNetworkConnection = new Azure.DevCenter.NetworkConnection("example", new()
///     {
///         Name = "example-dcnc",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         DomainJoinType = "AzureADJoin",
///         SubnetId = exampleSubnet.Id,
///     });
///
///     var exampleAttachedNetwork = new Azure.DevCenter.AttachedNetwork("example", new()
///     {
///         Name = "example-dcet",
///         DevCenterId = exampleDevCenter.Id,
///         NetworkConnectionId = exampleNetworkConnection.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/devcenter"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-dcan"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name: pulumi.String("example-vnet"),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("internal"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.2.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDevCenter, err := devcenter.NewDevCenter(ctx, "example", &devcenter.DevCenterArgs{
/// 			Name:              pulumi.String("example-dc"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Identity: &devcenter.DevCenterIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkConnection, err := devcenter.NewNetworkConnection(ctx, "example", &devcenter.NetworkConnectionArgs{
/// 			Name:              pulumi.String("example-dcnc"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			DomainJoinType:    pulumi.String("AzureADJoin"),
/// 			SubnetId:          exampleSubnet.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = devcenter.NewAttachedNetwork(ctx, "example", &devcenter.AttachedNetworkArgs{
/// 			Name:                pulumi.String("example-dcet"),
/// 			DevCenterId:         exampleDevCenter.ID(),
/// 			NetworkConnectionId: exampleNetworkConnection.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.devcenter.DevCenter;
/// import com.pulumi.azure.devcenter.DevCenterArgs;
/// import com.pulumi.azure.devcenter.inputs.DevCenterIdentityArgs;
/// import com.pulumi.azure.devcenter.NetworkConnection;
/// import com.pulumi.azure.devcenter.NetworkConnectionArgs;
/// import com.pulumi.azure.devcenter.AttachedNetwork;
/// import com.pulumi.azure.devcenter.AttachedNetworkArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-dcan")
///             .location("West Europe")
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-vnet")
///             .addressSpaces("10.0.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("internal")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .build());
///
///         var exampleDevCenter = new DevCenter("exampleDevCenter", DevCenterArgs.builder()
///             .name("example-dc")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .identity(DevCenterIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleNetworkConnection = new NetworkConnection("exampleNetworkConnection", NetworkConnectionArgs.builder()
///             .name("example-dcnc")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .domainJoinType("AzureADJoin")
///             .subnetId(exampleSubnet.id())
///             .build());
///
///         var exampleAttachedNetwork = new AttachedNetwork("exampleAttachedNetwork", AttachedNetworkArgs.builder()
///             .name("example-dcet")
///             .devCenterId(exampleDevCenter.id())
///             .networkConnectionId(exampleNetworkConnection.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-dcan
///       location: West Europe
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-vnet
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: internal
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///   exampleDevCenter:
///     type: azure:devcenter:DevCenter
///     name: example
///     properties:
///       name: example-dc
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       identity:
///         type: SystemAssigned
///   exampleNetworkConnection:
///     type: azure:devcenter:NetworkConnection
///     name: example
///     properties:
///       name: example-dcnc
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       domainJoinType: AzureADJoin
///       subnetId: ${exampleSubnet.id}
///   exampleAttachedNetwork:
///     type: azure:devcenter:AttachedNetwork
///     name: example
///     properties:
///       name: example-dcet
///       devCenterId: ${exampleDevCenter.id}
///       networkConnectionId: ${exampleNetworkConnection.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DevCenter` - 2025-02-01
///
/// ## Import
///
/// An existing Dev Center Attached Network can be imported into Pulumi using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:devcenter/attachedNetwork:AttachedNetwork example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DevCenter/devCenters/dc1/attachedNetworks/et1
/// ```
class AttachedNetwork extends pulumi.CustomResource {
  /// The ID of the associated Dev Center. Changing this forces a new resource to be created.
  late final pulumi.Output<String> devCenterId;
  /// Specifies the name of this Dev Center Attached Network. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The ID of the Dev Center Network Connection you want to attach. Changing this forces a new resource to be created.
  late final pulumi.Output<String> networkConnectionId;

  /// Creates a new [AttachedNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AttachedNetwork]. {@macro pulumi_devcenter_attached_network_attached_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AttachedNetwork(
    String name, {
    AttachedNetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:devcenter/attachedNetwork:AttachedNetwork',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    devCenterId = registerOutput<String>('devCenterId');
    this.name = registerOutput<String>('name');
    networkConnectionId = registerOutput<String>('networkConnectionId');
  }

  /// Gets an existing [AttachedNetwork] resource's state with the given [name] and [id].
  static AttachedNetwork get(
    String name,
    pulumi.Input<String> id, {
    AttachedNetworkState? state,
  }) {
    return AttachedNetwork._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AttachedNetwork._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:devcenter/attachedNetwork:AttachedNetwork',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    devCenterId = registerOutput<String>('devCenterId');
    this.name = registerOutput<String>('name');
    networkConnectionId = registerOutput<String>('networkConnectionId');
  }
}
