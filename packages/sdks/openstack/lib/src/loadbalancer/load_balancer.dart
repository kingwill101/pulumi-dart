import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_args.dart';
import 'load_balancer_state.dart';

/// Manages a V2 loadbalancer resource within OpenStack.
///
/// > **Note:** This resource has attributes that depend on octavia minor versions.
/// Please ensure your Openstack cloud supports the required minor version.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const lb1 = new openstack.loadbalancer.LoadBalancer("lb_1", {vipSubnetId: "d9415786-5f1a-428b-b35f-2f1523e146d2"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// lb1 = openstack.loadbalancer.LoadBalancer("lb_1", vip_subnet_id="d9415786-5f1a-428b-b35f-2f1523e146d2")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var lb1 = new OpenStack.LoadBalancer.LoadBalancer("lb_1", new()
///     {
///         VipSubnetId = "d9415786-5f1a-428b-b35f-2f1523e146d2",
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
/// 		_, err := loadbalancer.NewLoadBalancer(ctx, "lb_1", &loadbalancer.LoadBalancerArgs{
/// 			VipSubnetId: pulumi.String("d9415786-5f1a-428b-b35f-2f1523e146d2"),
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
/// import com.pulumi.openstack.loadbalancer.LoadBalancer;
/// import com.pulumi.openstack.loadbalancer.LoadBalancerArgs;
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
///         var lb1 = new LoadBalancer("lb1", LoadBalancerArgs.builder()
///             .vipSubnetId("d9415786-5f1a-428b-b35f-2f1523e146d2")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   lb1:
///     type: openstack:loadbalancer:LoadBalancer
///     name: lb_1
///     properties:
///       vipSubnetId: d9415786-5f1a-428b-b35f-2f1523e146d2
/// ```
///
///
/// ## Import
///
/// Load Balancer can be imported using the Load Balancer ID, e.g.:
///
/// ```sh
/// $ pulumi import openstack:loadbalancer/loadBalancer:LoadBalancer loadbalancer_1 19bcfdc7-c521-4a7e-9459-6750bd16df76
/// ```
class LoadBalancer extends pulumi.CustomResource {
  /// The administrative state of the Loadbalancer.
  /// A valid value is true (UP) or false (DOWN).
  late final pulumi.Output<bool?> adminStateUp;
  /// The availability zone of the Loadbalancer.
  /// Changing this creates a new loadbalancer. Available only for Octavia
  /// **minor version 2.14 or later**.
  late final pulumi.Output<String?> availabilityZone;
  /// Human-readable description for the Loadbalancer.
  late final pulumi.Output<String?> description;
  /// The UUID of a flavor. Changing this creates a new
  /// loadbalancer.
  late final pulumi.Output<String> flavorId;
  /// The name of the provider. Changing this
  /// creates a new loadbalancer.
  late final pulumi.Output<String> loadbalancerProvider;
  /// Human-readable name for the Loadbalancer. Does not have
  /// to be unique.
  late final pulumi.Output<String> name;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create an LB member. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// LB member.
  late final pulumi.Output<String> region;
  /// A list of security group IDs to apply to the
  /// loadbalancer. The security groups must be specified by ID and not name (as
  /// opposed to how they are configured with the Compute Instance).
  late final pulumi.Output<List<String>> securityGroupIds;
  /// A list of simple strings assigned to the loadbalancer.
  /// Available only for Octavia **minor version 2.5 or later**.
  late final pulumi.Output<List<String>?> tags;
  /// Required for admins. The UUID of the tenant who owns
  /// the Loadbalancer.  Only administrative users can specify a tenant UUID
  /// other than their own.  Changing this creates a new loadbalancer.
  late final pulumi.Output<String> tenantId;
  /// The ip address of the load balancer.
  /// Changing this creates a new loadbalancer.
  late final pulumi.Output<String> vipAddress;
  /// The network on which to allocate the
  /// Loadbalancer's address. A tenant can only create Loadbalancers on networks
  /// authorized by policy (e.g. networks that belong to them or networks that
  /// are shared).  Changing this creates a new loadbalancer. Exactly one of
  /// `vip_subnet_id`, `vip_network_id` or `vip_port_id` has to be defined.
  late final pulumi.Output<String> vipNetworkId;
  /// The port UUID that the loadbalancer will use.
  /// Changing this creates a new loadbalancer. Exactly one of
  /// `vip_subnet_id`, `vip_network_id` or `vip_port_id` has to be defined.
  late final pulumi.Output<String> vipPortId;
  /// The ID of the QoS Policy which will
  /// be applied to the Virtual IP (VIP).
  late final pulumi.Output<String?> vipQosPolicyId;
  /// The subnet on which to allocate the
  /// Loadbalancer's address. A tenant can only create Loadbalancers on networks
  /// authorized by policy (e.g. networks that belong to them or networks that
  /// are shared).  Changing this creates a new loadbalancer. Exactly one of
  /// `vip_subnet_id`, `vip_network_id` or `vip_port_id` has to be defined.
  late final pulumi.Output<String> vipSubnetId;

  /// Creates a new [LoadBalancer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoadBalancer]. {@macro pulumi_loadbalancer_load_balancer_load_balancer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoadBalancer(
    String name, {
    LoadBalancerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:loadbalancer/loadBalancer:LoadBalancer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.adminStateUp = registerOutput<bool?>('adminStateUp');
    this.availabilityZone = registerOutput<String?>('availabilityZone');
    this.description = registerOutput<String?>('description');
    this.flavorId = registerOutput<String>('flavorId');
    this.loadbalancerProvider = registerOutput<String>('loadbalancerProvider');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    this.tags = registerOutput<List<String>?>('tags');
    this.tenantId = registerOutput<String>('tenantId');
    this.vipAddress = registerOutput<String>('vipAddress');
    this.vipNetworkId = registerOutput<String>('vipNetworkId');
    this.vipPortId = registerOutput<String>('vipPortId');
    this.vipQosPolicyId = registerOutput<String?>('vipQosPolicyId');
    this.vipSubnetId = registerOutput<String>('vipSubnetId');
  }

  /// Gets an existing [LoadBalancer] resource's state with the given [name] and [id].
  static LoadBalancer get(
    String name,
    pulumi.Input<String> id, {
    LoadBalancerState? state,
  }) {
    return LoadBalancer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LoadBalancer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:loadbalancer/loadBalancer:LoadBalancer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.adminStateUp = registerOutput<bool?>('adminStateUp');
    this.availabilityZone = registerOutput<String?>('availabilityZone');
    this.description = registerOutput<String?>('description');
    this.flavorId = registerOutput<String>('flavorId');
    this.loadbalancerProvider = registerOutput<String>('loadbalancerProvider');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    this.tags = registerOutput<List<String>?>('tags');
    this.tenantId = registerOutput<String>('tenantId');
    this.vipAddress = registerOutput<String>('vipAddress');
    this.vipNetworkId = registerOutput<String>('vipNetworkId');
    this.vipPortId = registerOutput<String>('vipPortId');
    this.vipQosPolicyId = registerOutput<String?>('vipQosPolicyId');
    this.vipSubnetId = registerOutput<String>('vipSubnetId');
  }
}
