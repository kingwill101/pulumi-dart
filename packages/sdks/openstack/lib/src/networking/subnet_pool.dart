import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_pool_args.dart';
import 'subnet_pool_state.dart';

/// Manages a V2 Neutron subnetpool resource within OpenStack.
///
/// ## Example Usage
///
/// ### Create a Subnet Pool
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const subnetpool1 = new openstack.networking.SubnetPool("subnetpool_1", {
///     name: "subnetpool_1",
///     ipVersion: 6,
///     prefixes: [
///         "fdf7:b13d:dead:beef::/64",
///         "fd65:86cc:a334:39b7::/64",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// subnetpool1 = openstack.networking.SubnetPool("subnetpool_1",
///     name="subnetpool_1",
///     ip_version=6,
///     prefixes=[
///         "fdf7:b13d:dead:beef::/64",
///         "fd65:86cc:a334:39b7::/64",
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
///     var subnetpool1 = new OpenStack.Networking.SubnetPool("subnetpool_1", new()
///     {
///         Name = "subnetpool_1",
///         IpVersion = 6,
///         Prefixes = new[]
///         {
///             "fdf7:b13d:dead:beef::/64",
///             "fd65:86cc:a334:39b7::/64",
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
/// 		_, err := networking.NewSubnetPool(ctx, "subnetpool_1", &networking.SubnetPoolArgs{
/// 			Name:      pulumi.String("subnetpool_1"),
/// 			IpVersion: pulumi.Int(6),
/// 			Prefixes: pulumi.StringArray{
/// 				pulumi.String("fdf7:b13d:dead:beef::/64"),
/// 				pulumi.String("fd65:86cc:a334:39b7::/64"),
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
/// import com.pulumi.openstack.networking.SubnetPool;
/// import com.pulumi.openstack.networking.SubnetPoolArgs;
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
///         var subnetpool1 = new SubnetPool("subnetpool1", SubnetPoolArgs.builder()
///             .name("subnetpool_1")
///             .ipVersion(6)
///             .prefixes(
///                 "fdf7:b13d:dead:beef::/64",
///                 "fd65:86cc:a334:39b7::/64")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   subnetpool1:
///     type: openstack:networking:SubnetPool
///     name: subnetpool_1
///     properties:
///       name: subnetpool_1
///       ipVersion: 6
///       prefixes:
///         - fdf7:b13d:dead:beef::/64
///         - fd65:86cc:a334:39b7::/64
/// ```
///
///
/// ### Create a Subnet from a Subnet Pool
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const network1 = new openstack.networking.Network("network_1", {
///     name: "network_1",
///     adminStateUp: true,
/// });
/// const subnetpool1 = new openstack.networking.SubnetPool("subnetpool_1", {
///     name: "subnetpool_1",
///     prefixes: ["10.11.12.0/24"],
/// });
/// const subnet1 = new openstack.networking.Subnet("subnet_1", {
///     name: "subnet_1",
///     cidr: "10.11.12.0/25",
///     networkId: network1.id,
///     subnetpoolId: subnetpool1.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// network1 = openstack.networking.Network("network_1",
///     name="network_1",
///     admin_state_up=True)
/// subnetpool1 = openstack.networking.SubnetPool("subnetpool_1",
///     name="subnetpool_1",
///     prefixes=["10.11.12.0/24"])
/// subnet1 = openstack.networking.Subnet("subnet_1",
///     name="subnet_1",
///     cidr="10.11.12.0/25",
///     network_id=network1.id,
///     subnetpool_id=subnetpool1.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network1 = new OpenStack.Networking.Network("network_1", new()
///     {
///         Name = "network_1",
///         AdminStateUp = true,
///     });
///
///     var subnetpool1 = new OpenStack.Networking.SubnetPool("subnetpool_1", new()
///     {
///         Name = "subnetpool_1",
///         Prefixes = new[]
///         {
///             "10.11.12.0/24",
///         },
///     });
///
///     var subnet1 = new OpenStack.Networking.Subnet("subnet_1", new()
///     {
///         Name = "subnet_1",
///         Cidr = "10.11.12.0/25",
///         NetworkId = network1.Id,
///         SubnetpoolId = subnetpool1.Id,
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
/// 		network1, err := networking.NewNetwork(ctx, "network_1", &networking.NetworkArgs{
/// 			Name:         pulumi.String("network_1"),
/// 			AdminStateUp: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subnetpool1, err := networking.NewSubnetPool(ctx, "subnetpool_1", &networking.SubnetPoolArgs{
/// 			Name: pulumi.String("subnetpool_1"),
/// 			Prefixes: pulumi.StringArray{
/// 				pulumi.String("10.11.12.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networking.NewSubnet(ctx, "subnet_1", &networking.SubnetArgs{
/// 			Name:         pulumi.String("subnet_1"),
/// 			Cidr:         pulumi.String("10.11.12.0/25"),
/// 			NetworkId:    network1.ID(),
/// 			SubnetpoolId: subnetpool1.ID(),
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
/// import com.pulumi.openstack.networking.Network;
/// import com.pulumi.openstack.networking.NetworkArgs;
/// import com.pulumi.openstack.networking.SubnetPool;
/// import com.pulumi.openstack.networking.SubnetPoolArgs;
/// import com.pulumi.openstack.networking.Subnet;
/// import com.pulumi.openstack.networking.SubnetArgs;
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
///         var network1 = new Network("network1", NetworkArgs.builder()
///             .name("network_1")
///             .adminStateUp(true)
///             .build());
///
///         var subnetpool1 = new SubnetPool("subnetpool1", SubnetPoolArgs.builder()
///             .name("subnetpool_1")
///             .prefixes("10.11.12.0/24")
///             .build());
///
///         var subnet1 = new Subnet("subnet1", SubnetArgs.builder()
///             .name("subnet_1")
///             .cidr("10.11.12.0/25")
///             .networkId(network1.id())
///             .subnetpoolId(subnetpool1.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network1:
///     type: openstack:networking:Network
///     name: network_1
///     properties:
///       name: network_1
///       adminStateUp: 'true'
///   subnetpool1:
///     type: openstack:networking:SubnetPool
///     name: subnetpool_1
///     properties:
///       name: subnetpool_1
///       prefixes:
///         - 10.11.12.0/24
///   subnet1:
///     type: openstack:networking:Subnet
///     name: subnet_1
///     properties:
///       name: subnet_1
///       cidr: 10.11.12.0/25
///       networkId: ${network1.id}
///       subnetpoolId: ${subnetpool1.id}
/// ```
///
///
/// ## Import
///
/// Subnetpools can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:networking/subnetPool:SubnetPool subnetpool_1 832cb7f3-59fe-40cf-8f64-8350ffc03272
/// ```
class SubnetPool extends pulumi.CustomResource {
  /// The Neutron address scope to assign to the
  /// subnetpool. Changing this updates the address scope id of the existing
  /// subnetpool.
  late final pulumi.Output<String?> addressScopeId;
  /// The collection of tags assigned on the subnetpool, which have been
  /// explicitly and implicitly added.
  late final pulumi.Output<List<String>> allTags;
  /// The time at which subnetpool was created.
  late final pulumi.Output<String> createdAt;
  /// The size of the prefix to allocate when the cidr
  /// or prefixlen attributes are omitted when you create the subnet. Defaults to the
  /// MinPrefixLen. Changing this updates the default prefixlen of the existing
  /// subnetpool.
  late final pulumi.Output<int> defaultPrefixlen;
  /// The per-project quota on the prefix space that can be
  /// allocated from the subnetpool for project subnets. Changing this updates the
  /// default quota of the existing subnetpool.
  late final pulumi.Output<int?> defaultQuota;
  /// The human-readable description for the subnetpool.
  /// Changing this updates the description of the existing subnetpool.
  late final pulumi.Output<String?> description;
  /// The IP protocol version.
  late final pulumi.Output<int> ipVersion;
  /// Indicates whether the subnetpool is default
  /// subnetpool or not. Changing this updates the default status of the existing
  /// subnetpool.
  late final pulumi.Output<bool?> isDefault;
  /// The maximum prefix size that can be allocated from
  /// the subnetpool. For IPv4 subnetpools, default is 32. For IPv6 subnetpools,
  /// default is 128. Changing this updates the max prefixlen of the existing
  /// subnetpool.
  late final pulumi.Output<int> maxPrefixlen;
  /// The smallest prefix that can be allocated from a
  /// subnetpool. For IPv4 subnetpools, default is 8. For IPv6 subnetpools, default
  /// is 64. Changing this updates the min prefixlen of the existing subnetpool.
  late final pulumi.Output<int> minPrefixlen;
  /// The name of the subnetpool. Changing this updates the name of
  /// the existing subnetpool.
  late final pulumi.Output<String> name;
  /// A list of subnet prefixes to assign to the subnetpool.
  /// Neutron API merges adjacent prefixes and treats them as a single prefix. Each
  /// subnet prefix must be unique among all subnet prefixes in all subnetpools that
  /// are associated with the address scope. Changing this updates the prefixes list
  /// of the existing subnetpool.
  late final pulumi.Output<List<String>> prefixes;
  /// The owner of the subnetpool. Required if admin wants to
  /// create a subnetpool for another project. Changing this creates a new subnetpool.
  late final pulumi.Output<String> projectId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a Neutron subnetpool. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// subnetpool.
  late final pulumi.Output<String> region;
  /// The revision number of the subnetpool.
  late final pulumi.Output<int> revisionNumber;
  /// Indicates whether this subnetpool is shared across
  /// all projects. Changing this updates the shared status of the existing
  /// subnetpool.
  late final pulumi.Output<bool?> shared;
  /// A set of string tags for the subnetpool.
  late final pulumi.Output<List<String>?> tags;
  /// The time at which subnetpool was created.
  late final pulumi.Output<String> updatedAt;
  /// Map of additional options.
  late final pulumi.Output<Map<String, String>?> valueSpecs;

  /// Creates a new [SubnetPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SubnetPool]. {@macro pulumi_networking_subnet_pool_subnet_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SubnetPool(
    String name, {
    SubnetPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:networking/subnetPool:SubnetPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addressScopeId = registerOutput<String?>('addressScopeId');
    allTags = registerOutput<List<String>>('allTags');
    createdAt = registerOutput<String>('createdAt');
    defaultPrefixlen = registerOutput<int>('defaultPrefixlen');
    defaultQuota = registerOutput<int?>('defaultQuota');
    description = registerOutput<String?>('description');
    ipVersion = registerOutput<int>('ipVersion');
    isDefault = registerOutput<bool?>('isDefault');
    maxPrefixlen = registerOutput<int>('maxPrefixlen');
    minPrefixlen = registerOutput<int>('minPrefixlen');
    this.name = registerOutput<String>('name');
    prefixes = registerOutput<List<String>>('prefixes');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
    revisionNumber = registerOutput<int>('revisionNumber');
    shared = registerOutput<bool?>('shared');
    tags = registerOutput<List<String>?>('tags');
    updatedAt = registerOutput<String>('updatedAt');
    valueSpecs = registerOutput<Map<String, String>?>('valueSpecs');
  }

  /// Gets an existing [SubnetPool] resource's state with the given [name] and [id].
  static SubnetPool get(
    String name,
    pulumi.Input<String> id, {
    SubnetPoolState? state,
  }) {
    return SubnetPool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SubnetPool._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:networking/subnetPool:SubnetPool',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addressScopeId = registerOutput<String?>('addressScopeId');
    allTags = registerOutput<List<String>>('allTags');
    createdAt = registerOutput<String>('createdAt');
    defaultPrefixlen = registerOutput<int>('defaultPrefixlen');
    defaultQuota = registerOutput<int?>('defaultQuota');
    description = registerOutput<String?>('description');
    ipVersion = registerOutput<int>('ipVersion');
    isDefault = registerOutput<bool?>('isDefault');
    maxPrefixlen = registerOutput<int>('maxPrefixlen');
    minPrefixlen = registerOutput<int>('minPrefixlen');
    this.name = registerOutput<String>('name');
    prefixes = registerOutput<List<String>>('prefixes');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
    revisionNumber = registerOutput<int>('revisionNumber');
    shared = registerOutput<bool?>('shared');
    tags = registerOutput<List<String>?>('tags');
    updatedAt = registerOutput<String>('updatedAt');
    valueSpecs = registerOutput<Map<String, String>?>('valueSpecs');
  }
}
