import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_scope_args.dart';
import 'address_scope_state.dart';

/// Manages a V2 Neutron addressscope resource within OpenStack.
///
/// ## Example Usage
///
/// ### Create an Address-scope
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const addressscope1 = new openstack.networking.AddressScope("addressscope_1", {
///     name: "addressscope_1",
///     ipVersion: 6,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// addressscope1 = openstack.networking.AddressScope("addressscope_1",
///     name="addressscope_1",
///     ip_version=6)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var addressscope1 = new OpenStack.Networking.AddressScope("addressscope_1", new()
///     {
///         Name = "addressscope_1",
///         IpVersion = 6,
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
/// 		_, err := networking.NewAddressScope(ctx, "addressscope_1", &networking.AddressScopeArgs{
/// 			Name:      pulumi.String("addressscope_1"),
/// 			IpVersion: pulumi.Int(6),
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
/// import com.pulumi.openstack.networking.AddressScope;
/// import com.pulumi.openstack.networking.AddressScopeArgs;
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
///         var addressscope1 = new AddressScope("addressscope1", AddressScopeArgs.builder()
///             .name("addressscope_1")
///             .ipVersion(6)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   addressscope1:
///     type: openstack:networking:AddressScope
///     name: addressscope_1
///     properties:
///       name: addressscope_1
///       ipVersion: 6
/// ```
///
///
/// ### Create a Subnet Pool from an Address-scope
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const addressscope1 = new openstack.networking.AddressScope("addressscope_1", {
///     name: "addressscope_1",
///     ipVersion: 6,
/// });
/// const subnetpool1 = new openstack.networking.SubnetPool("subnetpool_1", {
///     name: "subnetpool_1",
///     prefixes: [
///         "fdf7:b13d:dead:beef::/64",
///         "fd65:86cc:a334:39b7::/64",
///     ],
///     addressScopeId: addressscope1.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// addressscope1 = openstack.networking.AddressScope("addressscope_1",
///     name="addressscope_1",
///     ip_version=6)
/// subnetpool1 = openstack.networking.SubnetPool("subnetpool_1",
///     name="subnetpool_1",
///     prefixes=[
///         "fdf7:b13d:dead:beef::/64",
///         "fd65:86cc:a334:39b7::/64",
///     ],
///     address_scope_id=addressscope1.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var addressscope1 = new OpenStack.Networking.AddressScope("addressscope_1", new()
///     {
///         Name = "addressscope_1",
///         IpVersion = 6,
///     });
///
///     var subnetpool1 = new OpenStack.Networking.SubnetPool("subnetpool_1", new()
///     {
///         Name = "subnetpool_1",
///         Prefixes = new[]
///         {
///             "fdf7:b13d:dead:beef::/64",
///             "fd65:86cc:a334:39b7::/64",
///         },
///         AddressScopeId = addressscope1.Id,
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
/// 		addressscope1, err := networking.NewAddressScope(ctx, "addressscope_1", &networking.AddressScopeArgs{
/// 			Name:      pulumi.String("addressscope_1"),
/// 			IpVersion: pulumi.Int(6),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networking.NewSubnetPool(ctx, "subnetpool_1", &networking.SubnetPoolArgs{
/// 			Name: pulumi.String("subnetpool_1"),
/// 			Prefixes: pulumi.StringArray{
/// 				pulumi.String("fdf7:b13d:dead:beef::/64"),
/// 				pulumi.String("fd65:86cc:a334:39b7::/64"),
/// 			},
/// 			AddressScopeId: addressscope1.ID(),
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
/// import com.pulumi.openstack.networking.AddressScope;
/// import com.pulumi.openstack.networking.AddressScopeArgs;
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
///         var addressscope1 = new AddressScope("addressscope1", AddressScopeArgs.builder()
///             .name("addressscope_1")
///             .ipVersion(6)
///             .build());
///
///         var subnetpool1 = new SubnetPool("subnetpool1", SubnetPoolArgs.builder()
///             .name("subnetpool_1")
///             .prefixes(
///                 "fdf7:b13d:dead:beef::/64",
///                 "fd65:86cc:a334:39b7::/64")
///             .addressScopeId(addressscope1.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   addressscope1:
///     type: openstack:networking:AddressScope
///     name: addressscope_1
///     properties:
///       name: addressscope_1
///       ipVersion: 6
///   subnetpool1:
///     type: openstack:networking:SubnetPool
///     name: subnetpool_1
///     properties:
///       name: subnetpool_1
///       prefixes:
///         - fdf7:b13d:dead:beef::/64
///         - fd65:86cc:a334:39b7::/64
///       addressScopeId: ${addressscope1.id}
/// ```
///
///
/// ## Import
///
/// Address-scopes can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:networking/addressScope:AddressScope addressscope_1 9cc35860-522a-4d35-974d-51d4b011801e
/// ```
class AddressScope extends pulumi.CustomResource {
  /// IP version, either 4 (default) or 6. Changing this
  /// creates a new address-scope.
  late final pulumi.Output<int?> ipVersion;
  /// The name of the address-scope. Changing this updates the
  /// name of the existing address-scope.
  late final pulumi.Output<String> name;
  /// The owner of the address-scope. Required if admin
  /// wants to create a address-scope for another project. Changing this creates a
  /// new address-scope.
  late final pulumi.Output<String> projectId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a Neutron address-scope. If omitted,
  /// the `region` argument of the provider is used. Changing this creates a new
  /// address-scope.
  late final pulumi.Output<String> region;
  /// Indicates whether this address-scope is shared across
  /// all projects. Changing this updates the shared status of the existing
  /// address-scope.
  late final pulumi.Output<bool> shared;

  /// Creates a new [AddressScope].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AddressScope]. {@macro pulumi_networking_address_scope_address_scope_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AddressScope(
    String name, {
    AddressScopeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:networking/addressScope:AddressScope',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    ipVersion = registerOutput<int?>('ipVersion');
    this.name = registerOutput<String>('name');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
    shared = registerOutput<bool>('shared');
  }

  /// Gets an existing [AddressScope] resource's state with the given [name] and [id].
  static AddressScope get(
    String name,
    pulumi.Input<String> id, {
    AddressScopeState? state,
  }) {
    return AddressScope._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AddressScope._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:networking/addressScope:AddressScope',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    ipVersion = registerOutput<int?>('ipVersion');
    this.name = registerOutput<String>('name');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
    shared = registerOutput<bool>('shared');
  }
}
