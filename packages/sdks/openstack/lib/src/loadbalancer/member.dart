import 'package:pulumi/pulumi.dart' as pulumi;
import 'member_args.dart';
import 'member_state.dart';

/// Manages a V2 member resource within OpenStack.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const member1 = new openstack.loadbalancer.Member("member_1", {
///     poolId: "935685fb-a896-40f9-9ff4-ae531a3a00fe",
///     address: "192.168.199.23",
///     protocolPort: 8080,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// member1 = openstack.loadbalancer.Member("member_1",
///     pool_id="935685fb-a896-40f9-9ff4-ae531a3a00fe",
///     address="192.168.199.23",
///     protocol_port=8080)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var member1 = new OpenStack.LoadBalancer.Member("member_1", new()
///     {
///         PoolId = "935685fb-a896-40f9-9ff4-ae531a3a00fe",
///         Address = "192.168.199.23",
///         ProtocolPort = 8080,
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
/// 		_, err := loadbalancer.NewMember(ctx, "member_1", &loadbalancer.MemberArgs{
/// 			PoolId:       pulumi.String("935685fb-a896-40f9-9ff4-ae531a3a00fe"),
/// 			Address:      pulumi.String("192.168.199.23"),
/// 			ProtocolPort: pulumi.Int(8080),
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
/// import com.pulumi.openstack.loadbalancer.Member;
/// import com.pulumi.openstack.loadbalancer.MemberArgs;
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
///         var member1 = new Member("member1", MemberArgs.builder()
///             .poolId("935685fb-a896-40f9-9ff4-ae531a3a00fe")
///             .address("192.168.199.23")
///             .protocolPort(8080)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member1:
///     type: openstack:loadbalancer:Member
///     name: member_1
///     properties:
///       poolId: 935685fb-a896-40f9-9ff4-ae531a3a00fe
///       address: 192.168.199.23
///       protocolPort: 8080
/// ```
///
///
/// ## Import
///
/// Load Balancer Pool Member can be imported using the Pool ID and Member ID
/// separated by a slash, e.g.:
///
/// ```sh
/// $ pulumi import openstack:loadbalancer/member:Member member_1 c22974d2-4c95-4bcb-9819-0afc5ed303d5/9563b79c-8460-47da-8a95-2711b746510f
/// ```
class Member extends pulumi.CustomResource {
  /// The IP address of the member to receive traffic from
  /// the load balancer. Changing this creates a new member.
  late final pulumi.Output<String> address;
  /// The administrative state of the member.
  /// A valid value is true (UP) or false (DOWN). Defaults to true.
  late final pulumi.Output<bool?> adminStateUp;
  /// Boolean that indicates whether that member works as a backup or not. Available
  /// only for Octavia &gt;= 2.1.
  late final pulumi.Output<bool?> backup;
  /// An alternate IP address used for health monitoring a backend member.
  /// Available only for Octavia
  late final pulumi.Output<String?> monitorAddress;
  /// An alternate protocol port used for health monitoring a backend member.
  /// Available only for Octavia
  late final pulumi.Output<int?> monitorPort;
  /// Human-readable name for the member.
  late final pulumi.Output<String> name;
  /// The id of the pool that this member will be assigned
  /// to. Changing this creates a new member.
  late final pulumi.Output<String> poolId;
  /// The port on which to listen for client traffic.
  /// Changing this creates a new member.
  late final pulumi.Output<int> protocolPort;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a member. If omitted, the `region`
  /// argument of the provider is used. Changing this creates a new member.
  late final pulumi.Output<String> region;
  /// The subnet in which to access the member. Changing
  /// this creates a new member.
  late final pulumi.Output<String?> subnetId;
  /// A list of simple strings assigned to the member.
  /// Available only for Octavia &gt;= 2.5.
  late final pulumi.Output<List<String>?> tags;
  /// Required for admins. The UUID of the tenant who owns
  /// the member.  Only administrative users can specify a tenant UUID
  /// other than their own. Changing this creates a new member.
  late final pulumi.Output<String> tenantId;
  /// A positive integer value that indicates the relative
  /// portion of traffic that this member should receive from the pool. For
  /// example, a member with a weight of 10 receives five times as much traffic
  /// as a member with a weight of 2. Defaults to 1.
  late final pulumi.Output<int> weight;

  /// Creates a new [Member].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Member]. {@macro pulumi_loadbalancer_member_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Member(
    String name, {
    MemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:loadbalancer/member:Member',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    address = registerOutput<String>('address');
    adminStateUp = registerOutput<bool?>('adminStateUp');
    backup = registerOutput<bool?>('backup');
    monitorAddress = registerOutput<String?>('monitorAddress');
    monitorPort = registerOutput<int?>('monitorPort');
    this.name = registerOutput<String>('name');
    poolId = registerOutput<String>('poolId');
    protocolPort = registerOutput<int>('protocolPort');
    region = registerOutput<String>('region');
    subnetId = registerOutput<String?>('subnetId');
    tags = registerOutput<List<String>?>('tags');
    tenantId = registerOutput<String>('tenantId');
    weight = registerOutput<int>('weight');
  }

  /// Gets an existing [Member] resource's state with the given [name] and [id].
  static Member get(
    String name,
    pulumi.Input<String> id, {
    MemberState? state,
  }) {
    return Member._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Member._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:loadbalancer/member:Member',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    address = registerOutput<String>('address');
    adminStateUp = registerOutput<bool?>('adminStateUp');
    backup = registerOutput<bool?>('backup');
    monitorAddress = registerOutput<String?>('monitorAddress');
    monitorPort = registerOutput<int?>('monitorPort');
    this.name = registerOutput<String>('name');
    poolId = registerOutput<String>('poolId');
    protocolPort = registerOutput<int>('protocolPort');
    region = registerOutput<String>('region');
    subnetId = registerOutput<String?>('subnetId');
    tags = registerOutput<List<String>?>('tags');
    tenantId = registerOutput<String>('tenantId');
    weight = registerOutput<int>('weight');
  }
}
