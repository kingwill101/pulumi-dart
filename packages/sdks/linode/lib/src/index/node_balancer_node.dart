import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_balancer_node_args.dart';
import 'node_balancer_node_state.dart';

/// Provides a Linode NodeBalancer Node resource.  This can be used to create, modify, and delete Linodes NodeBalancer Nodes.
/// For more information, see [Getting Started with NodeBalancers](https://www.linode.com/docs/platform/nodebalancer/getting-started-with-nodebalancers/) and the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/post-node-balancer-node).
///
/// ## Import
///
/// NodeBalancer Nodes can be imported using the NodeBalancer `nodebalancer_id` followed by the NodeBalancer Config `config_id` followed by the NodeBalancer Node `id`, separated by a comma, e.g.
///
/// ```sh
/// $ pulumi import linode:index/nodeBalancerNode:NodeBalancerNode https-foobar-1 1234567,7654321,9999999
/// ```
class NodeBalancerNode extends pulumi.CustomResource {
  /// The private IP Address where this backend can be reached. This must be a private IP address.
  ///
  /// - - -
  late final pulumi.Output<String> address;
  /// The ID of the NodeBalancerConfig to access.
  late final pulumi.Output<int> configId;
  /// The label of the Linode NodeBalancer Node. This is for display purposes only.
  late final pulumi.Output<String> label;
  /// The mode this NodeBalancer should use when sending traffic to this backend. If set to `accept` this backend is accepting traffic. If set to `reject` this backend will not receive traffic. If set to `drain` this backend will not receive new traffic, but connections already pinned to it will continue to be routed to it. (`accept`, `reject`, `drain`, `backup`)
  late final pulumi.Output<String> mode;
  /// The ID of the NodeBalancer to access.
  late final pulumi.Output<int> nodebalancerId;
  /// The current status of this node, based on the configured checks of its NodeBalancer Config. (`unknown`, `UP`, `DOWN`).
  late final pulumi.Output<String> status;
  /// The ID of the related VPC subnet. This is only set for VPC nodes. NOTE: VPC-attached NodeBalancers may not currently be available to all users and may require the `api_version` provider argument must be set to `v4beta`.
  late final pulumi.Output<int?> subnetId;
  /// The ID of the related NodeBalancer-VPC configuration. This is only set for VPC nodes. NOTE: VPC-attached NodeBalancers may not currently be available to all users and may require the `api_version` provider argument must be set to `v4beta`.
  late final pulumi.Output<int> vpcConfigId;
  /// Used when picking a backend to serve a request and is not pinned to a single backend yet. Nodes with a higher weight will receive more traffic. (1-255).
  late final pulumi.Output<int> weight;

  /// Creates a new [NodeBalancerNode].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NodeBalancerNode]. {@macro pulumi_index_node_balancer_node_node_balancer_node_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NodeBalancerNode(
    String name, {
    NodeBalancerNodeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/nodeBalancerNode:NodeBalancerNode',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    address = registerOutput<String>('address');
    configId = registerOutput<int>('configId');
    label = registerOutput<String>('label');
    mode = registerOutput<String>('mode');
    nodebalancerId = registerOutput<int>('nodebalancerId');
    status = registerOutput<String>('status');
    subnetId = registerOutput<int?>('subnetId');
    vpcConfigId = registerOutput<int>('vpcConfigId');
    weight = registerOutput<int>('weight');
  }

  /// Gets an existing [NodeBalancerNode] resource's state with the given [name] and [id].
  static NodeBalancerNode get(
    String name,
    pulumi.Input<String> id, {
    NodeBalancerNodeState? state,
  }) {
    return NodeBalancerNode._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NodeBalancerNode._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/nodeBalancerNode:NodeBalancerNode',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    address = registerOutput<String>('address');
    configId = registerOutput<int>('configId');
    label = registerOutput<String>('label');
    mode = registerOutput<String>('mode');
    nodebalancerId = registerOutput<int>('nodebalancerId');
    status = registerOutput<String>('status');
    subnetId = registerOutput<int?>('subnetId');
    vpcConfigId = registerOutput<int>('vpcConfigId');
    weight = registerOutput<int>('weight');
  }
}
