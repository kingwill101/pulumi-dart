import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_group_v2_args.dart';
import 'address_group_v2_state.dart';

/// Manages a V2 neutron address group resource within OpenStack.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const group1 = new openstack.networking.AddressGroupV2("group_1", {
///     name: "group_1",
///     description: "My neutron address group",
///     addresses: [
///         "192.168.0.1/32",
///         "2001:db8::1/128",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// group1 = openstack.networking.AddressGroupV2("group_1",
///     name="group_1",
///     description="My neutron address group",
///     addresses=[
///         "192.168.0.1/32",
///         "2001:db8::1/128",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var group1 = new OpenStack.Networking.AddressGroupV2("group_1", new()
///     {
///         Name = "group_1",
///         Description = "My neutron address group",
///         Addresses = new[]
///         {
///             "192.168.0.1/32",
///             "2001:db8::1/128",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/networking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networking.NewAddressGroupV2(ctx, "group_1", &networking.AddressGroupV2Args{
/// 			Name:        pulumi.String("group_1"),
/// 			Description: pulumi.String("My neutron address group"),
/// 			Addresses: pulumi.StringArray{
/// 				pulumi.String("192.168.0.1/32"),
/// 				pulumi.String("2001:db8::1/128"),
/// 			},
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
/// import com.pulumi.openstack.networking.AddressGroupV2;
/// import com.pulumi.openstack.networking.AddressGroupV2Args;
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
///         var group1 = new AddressGroupV2("group1", AddressGroupV2Args.builder()
///             .name("group_1")
///             .description("My neutron address group")
///             .addresses(
///                 "192.168.0.1/32",
///                 "2001:db8::1/128")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   group1:
///     type: openstack:networking:AddressGroupV2
///     name: group_1
///     properties:
///       name: group_1
///       description: My neutron address group
///       addresses:
///         - 192.168.0.1/32
///         - 2001:db8::1/128
/// ```
///
///
/// ## Import
///
/// Address Groups can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:networking/addressGroupV2:AddressGroupV2 group_1 782fef9c-d03c-400a-9735-2f9af5681cb3
/// ```
class AddressGroupV2 extends pulumi.CustomResource {
  /// A list of CIDR blocks that define the addresses in
  /// the address group. Each address must be a valid IPv4 or IPv6 CIDR block.
  late final pulumi.Output<List<String>> addresses;
  /// A description of the address group.
  late final pulumi.Output<String?> description;
  /// A name of the address group.
  late final pulumi.Output<String> name;
  /// The owner of the address group. Required if admin
  /// wants to create a group for a specific project. Changing this creates a new
  /// address group.
  late final pulumi.Output<String> projectId;
  /// The region in which to obtain the V2 networking client.
  /// If omitted, the `region` argument of the provider is used. Changing this
  /// creates a new address group.
  late final pulumi.Output<String> region;

  /// Creates a new [AddressGroupV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AddressGroupV2]. {@macro pulumi_networking_address_group_v2_address_group_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AddressGroupV2(
    String name, {
    AddressGroupV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:networking/addressGroupV2:AddressGroupV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addresses = registerOutput<List<String>>('addresses');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [AddressGroupV2] resource's state with the given [name] and [id].
  static AddressGroupV2 get(
    String name,
    pulumi.Input<String> id, {
    AddressGroupV2State? state,
  }) {
    return AddressGroupV2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AddressGroupV2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:networking/addressGroupV2:AddressGroupV2',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addresses = registerOutput<List<String>>('addresses');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
  }
}
