// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extension_chain.dart';
import 'lb_traffic_extension_load_balancing_scheme.dart';

/// {@template pulumi_networkservices_v1beta1_lb_traffic_extension_args_doc}
/// The set of arguments for LbTrafficExtension.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1beta1_lb_traffic_extension_args_doc}
class LbTrafficExtensionArgs {
  /// Optional. A human-readable description of the resource.
  final pulumi.Input<String>? description;
  /// A set of ordered extension chains that contain the match conditions and extensions to execute. Match conditions for each extension chain are evaluated in sequence for a given request. The first extension chain that has a condition that matches the request is executed. Any subsequent extension chains do not execute. Limited to 5 extension chains per resource.
  final pulumi.Input<List<ExtensionChain>> extensionChains;
  /// A list of references to the forwarding rules to which this service extension is attached to. At least one forwarding rule is required. There can be only one `LBTrafficExtension` resource per forwarding rule.
  final pulumi.Input<List<String>> forwardingRules;
  /// Optional. Set of labels associated with the `LbTrafficExtension` resource. The format must comply with [the following requirements](/compute/docs/labeling-resources#requirements).
  final pulumi.Input<Map<String, String>>? labels;
  /// Required. User-provided ID of the `LbTrafficExtension` resource to be created.
  final pulumi.Input<String> lbTrafficExtensionId;
  /// All backend services and forwarding rules referenced by this extension must share the same load balancing scheme. Supported values: `INTERNAL_MANAGED`, `EXTERNAL_MANAGED`. For more information, refer to [Choosing a load balancer](https://cloud.google.com/load-balancing/docs/backend-service).
  final pulumi.Input<LbTrafficExtensionLoadBalancingScheme> loadBalancingScheme;
  final pulumi.Input<String>? location;
  /// Name of the `LbTrafficExtension` resource in the following format: `projects/{project}/locations/{location}/lbTrafficExtensions/{lb_traffic_extension}`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server can ignore the request if it has already been completed. The server guarantees that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, ignores the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Creates a new [LbTrafficExtensionArgs].
  /// [description] Optional. A human-readable description of the resource.
  /// [extensionChains] A set of ordered extension chains that contain the match conditions and extensions to execute. Match conditions for each extension chain are evaluated in sequence for a given request. The first extension chain that has a condition that matches the request is executed. Any subsequent extension chains do not execute. Limited to 5 extension chains per resource.
  /// [forwardingRules] A list of references to the forwarding rules to which this service extension is attached to. At least one forwarding rule is required. There can be only one `LBTrafficExtension` resource per forwarding rule.
  /// [labels] Optional. Set of labels associated with the `LbTrafficExtension` resource. The format must comply with [the following requirements](/compute/docs/labeling-resources#requirements).
  /// [lbTrafficExtensionId] Required. User-provided ID of the `LbTrafficExtension` resource to be created.
  /// [loadBalancingScheme] All backend services and forwarding rules referenced by this extension must share the same load balancing scheme. Supported values: `INTERNAL_MANAGED`, `EXTERNAL_MANAGED`. For more information, refer to [Choosing a load balancer](https://cloud.google.com/load-balancing/docs/backend-service).
  /// [location] Optional.
  /// [name] Name of the `LbTrafficExtension` resource in the following format: `projects/{project}/locations/{location}/lbTrafficExtensions/{lb_traffic_extension}`.
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server can ignore the request if it has already been completed. The server guarantees that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, ignores the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  LbTrafficExtensionArgs({
    this.description,
    required this.extensionChains,
    required this.forwardingRules,
    this.labels,
    required this.lbTrafficExtensionId,
    required this.loadBalancingScheme,
    this.location,
    this.name,
    this.project,
    this.requestId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'extensionChains': pulumi.Input.mapInputValue<List<ExtensionChain>, List<Map<String, dynamic>>>(extensionChains, (value) => pulumi.Input.encodeList<ExtensionChain, Map<String, dynamic>>(value, (value) => value.toMap())),
      'forwardingRules': forwardingRules,
      'labels': ?labels,
      'lbTrafficExtensionId': lbTrafficExtensionId,
      'loadBalancingScheme': pulumi.Input.mapInputValue<LbTrafficExtensionLoadBalancingScheme, String>(loadBalancingScheme, (value) => value.value),
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
    };
  }

  factory LbTrafficExtensionArgs.fromMap(Map<String, dynamic> map) {
    return LbTrafficExtensionArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      extensionChains: (pulumi.Input.decodeList<ExtensionChain>(map['extensionChains'], (value) => ExtensionChain.fromMap((value as Map).cast<String, dynamic>()))).input(),
      forwardingRules: ((map['forwardingRules'] as List).cast<String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      lbTrafficExtensionId: (map['lbTrafficExtensionId'] as String).input(),
      loadBalancingScheme: (LbTrafficExtensionLoadBalancingScheme.fromValue(map['loadBalancingScheme'] as String)).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId']! as String).input(),
    );
  }
}

