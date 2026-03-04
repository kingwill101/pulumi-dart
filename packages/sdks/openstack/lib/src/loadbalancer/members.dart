import 'package:pulumi/pulumi.dart' as pulumi;
import 'members_args.dart';
import 'members_state.dart';

/// Manages a V2 members resource within OpenStack (batch members update).
///
/// &gt; **Note:** This resource has attributes that depend on octavia minor versions.
/// Please ensure your Openstack cloud supports the required minor version.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const members1 = new openstack.loadbalancer.Members("members_1", {
///     poolId: "935685fb-a896-40f9-9ff4-ae531a3a00fe",
///     members: [
///         {
///             address: "192.168.199.23",
///             protocolPort: 8080,
///         },
///         {
///             address: "192.168.199.24",
///             protocolPort: 8080,
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// members1 = openstack.loadbalancer.Members("members_1",
///     pool_id="935685fb-a896-40f9-9ff4-ae531a3a00fe",
///     members=[
///         {
///             "address": "192.168.199.23",
///             "protocol_port": 8080,
///         },
///         {
///             "address": "192.168.199.24",
///             "protocol_port": 8080,
///         },
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
///     var members1 = new OpenStack.LoadBalancer.Members("members_1", new()
///     {
///         PoolId = "935685fb-a896-40f9-9ff4-ae531a3a00fe",
///         MemberList = new[]
///         {
///             new OpenStack.LoadBalancer.Inputs.MembersMemberArgs
///             {
///                 Address = "192.168.199.23",
///                 ProtocolPort = 8080,
///             },
///             new OpenStack.LoadBalancer.Inputs.MembersMemberArgs
///             {
///                 Address = "192.168.199.24",
///                 ProtocolPort = 8080,
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
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/loadbalancer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := loadbalancer.NewMembers(ctx, "members_1", &loadbalancer.MembersArgs{
/// 			PoolId: pulumi.String("935685fb-a896-40f9-9ff4-ae531a3a00fe"),
/// 			Members: loadbalancer.MembersMemberArray{
/// 				&loadbalancer.MembersMemberArgs{
/// 					Address:      pulumi.String("192.168.199.23"),
/// 					ProtocolPort: pulumi.Int(8080),
/// 				},
/// 				&loadbalancer.MembersMemberArgs{
/// 					Address:      pulumi.String("192.168.199.24"),
/// 					ProtocolPort: pulumi.Int(8080),
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
/// import com.pulumi.openstack.loadbalancer.Members;
/// import com.pulumi.openstack.loadbalancer.MembersArgs;
/// import com.pulumi.openstack.loadbalancer.inputs.MembersMemberArgs;
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
///         var members1 = new Members("members1", MembersArgs.builder()
///             .poolId("935685fb-a896-40f9-9ff4-ae531a3a00fe")
///             .members(
///                 MembersMemberArgs.builder()
///                     .address("192.168.199.23")
///                     .protocolPort(8080)
///                     .build(),
///                 MembersMemberArgs.builder()
///                     .address("192.168.199.24")
///                     .protocolPort(8080)
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   members1:
///     type: openstack:loadbalancer:Members
///     name: members_1
///     properties:
///       poolId: 935685fb-a896-40f9-9ff4-ae531a3a00fe
///       members:
///         - address: 192.168.199.23
///           protocolPort: 8080
///         - address: 192.168.199.24
///           protocolPort: 8080
/// ```
///
///
/// ## Import
///
/// Load Balancer Pool Members can be imported using the Pool ID, e.g.:
///
/// ```sh
/// $ pulumi import openstack:loadbalancer/members:Members members_1 c22974d2-4c95-4bcb-9819-0afc5ed303d5
/// ```
class Members extends pulumi.CustomResource {
  /// A set of dictionaries containing member parameters. The
  /// structure is described below.
  late final pulumi.Output<List<Map<String, dynamic>>?> members;

  /// The id of the pool that members will be assigned to.
  /// Changing this creates a new members resource.
  late final pulumi.Output<String> poolId;

  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create pool members. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// members resource.
  late final pulumi.Output<String> region;

  /// Creates a new [Members].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Members]. {@macro pulumi_loadbalancer_members_members_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Members(
    String name, {
    MembersArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:loadbalancer/members:Members',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    members = registerOutput<List<Map<String, dynamic>>?>('members');
    poolId = registerOutput<String>('poolId');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [Members] resource's state with the given [name] and [id].
  static Members get(
    String name,
    pulumi.Input<String> id, {
    MembersState? state,
  }) {
    return Members._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Members._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:loadbalancer/members:Members',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    members = registerOutput<List<Map<String, dynamic>>?>('members');
    poolId = registerOutput<String>('poolId');
    region = registerOutput<String>('region');
  }
}
