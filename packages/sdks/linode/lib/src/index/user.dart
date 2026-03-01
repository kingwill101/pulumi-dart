import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_args.dart';
import 'user_domain_grant.dart';
import 'user_firewall_grant.dart';
import 'user_global_grants.dart';
import 'user_image_grant.dart';
import 'user_linode_grant.dart';
import 'user_longview_grant.dart';
import 'user_nodebalancer_grant.dart';
import 'user_stackscript_grant.dart';
import 'user_state.dart';
import 'user_volume_grant.dart';
import 'user_vpc_grant.dart';

/// Manages a Linode User.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/post-user).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const john = new linode.User("john", {
///     username: "john123",
///     email: "john@acme.io",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// john = linode.User("john",
///     username="john123",
///     email="john@acme.io")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var john = new Linode.User("john", new()
///     {
///         Username = "john123",
///         Email = "john@acme.io",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.NewUser(ctx, "john", &linode.UserArgs{
/// 			Username: pulumi.String("john123"),
/// 			Email:    pulumi.String("john@acme.io"),
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
/// import com.pulumi.linode.User;
/// import com.pulumi.linode.UserArgs;
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
///         var john = new User("john", UserArgs.builder()
///             .username("john123")
///             .email("john@acme.io")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   john:
///     type: linode:User
///     properties:
///       username: john123
///       email: john@acme.io
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const fooser = new linode.User("fooser", {
///     username: "cooluser123",
///     email: "cool@acme.io",
///     restricted: true,
///     globalGrants: {
///         addLinodes: true,
///         addImages: true,
///     },
///     linodeGrants: [{
///         id: 12345,
///         permissions: "read_write",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// fooser = linode.User("fooser",
///     username="cooluser123",
///     email="cool@acme.io",
///     restricted=True,
///     global_grants={
///         "add_linodes": True,
///         "add_images": True,
///     },
///     linode_grants=[{
///         "id": 12345,
///         "permissions": "read_write",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fooser = new Linode.User("fooser", new()
///     {
///         Username = "cooluser123",
///         Email = "cool@acme.io",
///         Restricted = true,
///         GlobalGrants = new Linode.Inputs.UserGlobalGrantsArgs
///         {
///             AddLinodes = true,
///             AddImages = true,
///         },
///         LinodeGrants = new[]
///         {
///             new Linode.Inputs.UserLinodeGrantArgs
///             {
///                 Id = 12345,
///                 Permissions = "read_write",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.NewUser(ctx, "fooser", &linode.UserArgs{
/// 			Username:   pulumi.String("cooluser123"),
/// 			Email:      pulumi.String("cool@acme.io"),
/// 			Restricted: pulumi.Bool(true),
/// 			GlobalGrants: &linode.UserGlobalGrantsArgs{
/// 				AddLinodes: pulumi.Bool(true),
/// 				AddImages:  pulumi.Bool(true),
/// 			},
/// 			LinodeGrants: linode.UserLinodeGrantArray{
/// 				&linode.UserLinodeGrantArgs{
/// 					Id:          pulumi.Int(12345),
/// 					Permissions: pulumi.String("read_write"),
/// 				},
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
/// import com.pulumi.linode.User;
/// import com.pulumi.linode.UserArgs;
/// import com.pulumi.linode.inputs.UserGlobalGrantsArgs;
/// import com.pulumi.linode.inputs.UserLinodeGrantArgs;
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
///         var fooser = new User("fooser", UserArgs.builder()
///             .username("cooluser123")
///             .email("cool@acme.io")
///             .restricted(true)
///             .globalGrants(UserGlobalGrantsArgs.builder()
///                 .addLinodes(true)
///                 .addImages(true)
///                 .build())
///             .linodeGrants(UserLinodeGrantArgs.builder()
///                 .id(12345)
///                 .permissions("read_write")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fooser:
///     type: linode:User
///     properties:
///       username: cooluser123
///       email: cool@acme.io
///       restricted: true
///       globalGrants:
///         addLinodes: true
///         addImages: true
///       linodeGrants:
///         - id: 12345
///           permissions: read_write
/// ```
///
///
/// ## Global Grants
///
/// * `account_access` - (optional) The level of access this User has to Account-level actions, like billing information. (`read_only`, `read_write`)
///
/// * `add_domains` - (optional) If true, this User may add Domains.
///
/// * `add_databases` - (optional) If true, this User may add Databases.
///
/// * `add_firewalls` - (optional) If true, this User may add Firewalls.
///
/// * `add_images` - (optional) If true, this User may add Images.
///
/// * `add_linodes` - (optional) If true, this User may create Linodes.
///
/// * `add_longview` - (optional) If true, this User may create Longview clients and view the current plan.
///
/// * `add_nodebalancers` - (optional) If true, this User may add NodeBalancers.
///
/// * `add_stackscripts` - (optional) If true, this User may add StackScripts.
///
/// * `add_vpcs` - (optional) If true, this User may add Virtual Private Clouds (VPCs).
///
/// * `cancel_account` - (optional) If true, this User may cancel the entire Account.
///
/// * `longview_subscription` - (optional) If true, this User may manage the Account’s Longview subscription.
///
/// ## Entity Grants
///
/// * `id` - (required) The ID of the entity this grant applies to.
///
/// * `permissions` - (required) The level of access this User has to this entity. (`read_only`, `read_write`)
class User extends pulumi.CustomResource {
  /// The domains the user has permissions access to.
  late final pulumi.Output<List<UserDomainGrant>> domainGrants;
  /// The email address of the user.
  late final pulumi.Output<String> email;
  /// The firewalls the user has permissions access to.
  late final pulumi.Output<List<UserFirewallGrant>> firewallGrants;
  /// A structure containing the Account-level grants a User has.
  late final pulumi.Output<UserGlobalGrants> globalGrants;
  /// The images the user has permissions access to.
  late final pulumi.Output<List<UserImageGrant>> imageGrants;
  /// The Linodes the user has permissions access to.
  late final pulumi.Output<List<UserLinodeGrant>> linodeGrants;
  /// The longview the user has permissions access to.
  late final pulumi.Output<List<UserLongviewGrant>> longviewGrants;
  /// The NodeBalancers the user has permissions access to.
  late final pulumi.Output<List<UserNodebalancerGrant>> nodebalancerGrants;
  /// If true, this user will only have explicit permissions granted.
  ///
  /// * `global_grants` - (optional) A structure containing the Account-level grants a User has.
  ///
  /// The following arguments are sets of entity grants:
  late final pulumi.Output<bool?> restricted;
  /// A list of the User's SSH keys.
  late final pulumi.Output<List<String>> sshKeys;
  /// The StackScripts the user has permissions access to.
  late final pulumi.Output<List<UserStackscriptGrant>> stackscriptGrants;
  /// Whether the user has two-factor-authentication enabled.
  late final pulumi.Output<bool> tfaEnabled;
  /// The type of this user.
  late final pulumi.Output<String> userType;
  /// The username of the user.
  late final pulumi.Output<String> username;
  /// The volumes the user has permissions access to.
  late final pulumi.Output<List<UserVolumeGrant>> volumeGrants;
  /// The Virtual Private Clouds (VPCs) the user has permissions access to.
  late final pulumi.Output<List<UserVpcGrant>> vpcGrants;

  /// Creates a new [User].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [User]. {@macro pulumi_index_user_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  User(
    String name, {
    UserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/user:User',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.domainGrants = registerOutput<List<UserDomainGrant>>('domainGrants');
    this.email = registerOutput<String>('email');
    this.firewallGrants = registerOutput<List<UserFirewallGrant>>('firewallGrants');
    this.globalGrants = registerOutput<UserGlobalGrants>('globalGrants');
    this.imageGrants = registerOutput<List<UserImageGrant>>('imageGrants');
    this.linodeGrants = registerOutput<List<UserLinodeGrant>>('linodeGrants');
    this.longviewGrants = registerOutput<List<UserLongviewGrant>>('longviewGrants');
    this.nodebalancerGrants = registerOutput<List<UserNodebalancerGrant>>('nodebalancerGrants');
    this.restricted = registerOutput<bool?>('restricted');
    this.sshKeys = registerOutput<List<String>>('sshKeys');
    this.stackscriptGrants = registerOutput<List<UserStackscriptGrant>>('stackscriptGrants');
    this.tfaEnabled = registerOutput<bool>('tfaEnabled');
    this.userType = registerOutput<String>('userType');
    this.username = registerOutput<String>('username');
    this.volumeGrants = registerOutput<List<UserVolumeGrant>>('volumeGrants');
    this.vpcGrants = registerOutput<List<UserVpcGrant>>('vpcGrants');
  }

  /// Gets an existing [User] resource's state with the given [name] and [id].
  static User get(
    String name,
    pulumi.Input<String> id, {
    UserState? state,
  }) {
    return User._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  User._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/user:User',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.domainGrants = registerOutput<List<UserDomainGrant>>('domainGrants');
    this.email = registerOutput<String>('email');
    this.firewallGrants = registerOutput<List<UserFirewallGrant>>('firewallGrants');
    this.globalGrants = registerOutput<UserGlobalGrants>('globalGrants');
    this.imageGrants = registerOutput<List<UserImageGrant>>('imageGrants');
    this.linodeGrants = registerOutput<List<UserLinodeGrant>>('linodeGrants');
    this.longviewGrants = registerOutput<List<UserLongviewGrant>>('longviewGrants');
    this.nodebalancerGrants = registerOutput<List<UserNodebalancerGrant>>('nodebalancerGrants');
    this.restricted = registerOutput<bool?>('restricted');
    this.sshKeys = registerOutput<List<String>>('sshKeys');
    this.stackscriptGrants = registerOutput<List<UserStackscriptGrant>>('stackscriptGrants');
    this.tfaEnabled = registerOutput<bool>('tfaEnabled');
    this.userType = registerOutput<String>('userType');
    this.username = registerOutput<String>('username');
    this.volumeGrants = registerOutput<List<UserVolumeGrant>>('volumeGrants');
    this.vpcGrants = registerOutput<List<UserVpcGrant>>('vpcGrants');
  }
}
