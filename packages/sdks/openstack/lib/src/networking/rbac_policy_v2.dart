import 'package:pulumi/pulumi.dart' as pulumi;
import 'rbac_policy_v2_args.dart';
import 'rbac_policy_v2_state.dart';

/// The RBAC policy resource contains functionality for working with Neutron RBAC
/// Policies. Role-Based Access Control (RBAC) policy framework enables both
/// operators and users to grant access to resources for specific projects.
///
/// Sharing an object with a specific project is accomplished by creating a
/// policy entry that permits the target project the `access_as_shared` action
/// on that object.
///
/// To make a network available as an external network for specific projects
/// rather than all projects, use the `access_as_external` action.
/// If a network is marked as external during creation, it now implicitly creates
/// a wildcard RBAC policy granting everyone access to preserve previous behavior
/// before this feature was added.
///
/// ## Example Usage
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
/// const rbacPolicy1 = new openstack.networking.RbacPolicyV2("rbac_policy_1", {
///     action: "access_as_shared",
///     objectId: network1.id,
///     objectType: "network",
///     targetTenant: "20415a973c9e45d3917f078950644697",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// network1 = openstack.networking.Network("network_1",
///     name="network_1",
///     admin_state_up=True)
/// rbac_policy1 = openstack.networking.RbacPolicyV2("rbac_policy_1",
///     action="access_as_shared",
///     object_id=network1.id,
///     object_type="network",
///     target_tenant="20415a973c9e45d3917f078950644697")
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
///     var rbacPolicy1 = new OpenStack.Networking.RbacPolicyV2("rbac_policy_1", new()
///     {
///         Action = "access_as_shared",
///         ObjectId = network1.Id,
///         ObjectType = "network",
///         TargetTenant = "20415a973c9e45d3917f078950644697",
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
/// 		_, err = networking.NewRbacPolicyV2(ctx, "rbac_policy_1", &networking.RbacPolicyV2Args{
/// 			Action:       pulumi.String("access_as_shared"),
/// 			ObjectId:     network1.ID(),
/// 			ObjectType:   pulumi.String("network"),
/// 			TargetTenant: pulumi.String("20415a973c9e45d3917f078950644697"),
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
/// import com.pulumi.openstack.networking.RbacPolicyV2;
/// import com.pulumi.openstack.networking.RbacPolicyV2Args;
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
///         var rbacPolicy1 = new RbacPolicyV2("rbacPolicy1", RbacPolicyV2Args.builder()
///             .action("access_as_shared")
///             .objectId(network1.id())
///             .objectType("network")
///             .targetTenant("20415a973c9e45d3917f078950644697")
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
///   rbacPolicy1:
///     type: openstack:networking:RbacPolicyV2
///     name: rbac_policy_1
///     properties:
///       action: access_as_shared
///       objectId: ${network1.id}
///       objectType: network
///       targetTenant: 20415a973c9e45d3917f078950644697
/// ```
///
///
/// ## Import
///
/// RBAC policies can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:networking/rbacPolicyV2:RbacPolicyV2 rbac_policy_1 eae26a3e-1c33-4cc1-9c31-0cd729c438a1
/// ```
class RbacPolicyV2 extends pulumi.CustomResource {
  /// Action for the RBAC policy. Can either be
  /// `access_as_external` or `access_as_shared`.
  late final pulumi.Output<String> action;

  /// The ID of the `object_type` resource. An
  /// `object_type` of `network` returns a network ID and an `object_type` of
  /// `qos_policy` returns a QoS ID.
  late final pulumi.Output<String> objectId;

  /// The type of the object that the RBAC policy
  /// affects. Can be one of the following: `address_scope`, `address_group`,
  /// `network`, `qos_policy`, `security_group`, `subnetpool` or `bgpvpn`.
  late final pulumi.Output<String> objectType;
  late final pulumi.Output<String> projectId;

  /// The region in which to obtain the V2 networking client.
  /// A networking client is needed to configure a routing entry on a subnet. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// routing entry.
  late final pulumi.Output<String> region;

  /// The ID of the tenant to which the RBAC policy
  /// will be enforced.
  late final pulumi.Output<String> targetTenant;

  /// Creates a new [RbacPolicyV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RbacPolicyV2]. {@macro pulumi_networking_rbac_policy_v2_rbac_policy_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RbacPolicyV2(
    String name, {
    RbacPolicyV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:networking/rbacPolicyV2:RbacPolicyV2',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    action = registerOutput<String>('action');
    objectId = registerOutput<String>('objectId');
    objectType = registerOutput<String>('objectType');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
    targetTenant = registerOutput<String>('targetTenant');
  }

  /// Gets an existing [RbacPolicyV2] resource's state with the given [name] and [id].
  static RbacPolicyV2 get(
    String name,
    pulumi.Input<String> id, {
    RbacPolicyV2State? state,
  }) {
    return RbacPolicyV2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RbacPolicyV2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:networking/rbacPolicyV2:RbacPolicyV2',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    action = registerOutput<String>('action');
    objectId = registerOutput<String>('objectId');
    objectType = registerOutput<String>('objectType');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
    targetTenant = registerOutput<String>('targetTenant');
  }
}
