// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extension_chain_response.dart';

/// Result data returned by getLbTrafficExtension.
class GetLbTrafficExtensionResult {
  /// The timestamp when the resource was created.
  final String createTime;
  /// Optional. A human-readable description of the resource.
  final String description;
  /// A set of ordered extension chains that contain the match conditions and extensions to execute. Match conditions for each extension chain are evaluated in sequence for a given request. The first extension chain that has a condition that matches the request is executed. Any subsequent extension chains do not execute. Limited to 5 extension chains per resource.
  final List<ExtensionChainResponse> extensionChains;
  /// A list of references to the forwarding rules to which this service extension is attached to. At least one forwarding rule is required. There can be only one `LBTrafficExtension` resource per forwarding rule.
  final List<String> forwardingRules;
  /// Optional. Set of labels associated with the `LbTrafficExtension` resource. The format must comply with [the following requirements](/compute/docs/labeling-resources#requirements).
  final Map<String, String> labels;
  /// All backend services and forwarding rules referenced by this extension must share the same load balancing scheme. Supported values: `INTERNAL_MANAGED`, `EXTERNAL_MANAGED`. For more information, refer to [Choosing a load balancer](https://cloud.google.com/load-balancing/docs/backend-service).
  final String loadBalancingScheme;
  /// Name of the `LbTrafficExtension` resource in the following format: `projects/{project}/locations/{location}/lbTrafficExtensions/{lb_traffic_extension}`.
  final String name;
  /// The timestamp when the resource was updated.
  final String updateTime;

  /// Creates a new [GetLbTrafficExtensionResult].
  /// [createTime] The timestamp when the resource was created.
  /// [description] Optional. A human-readable description of the resource.
  /// [extensionChains] A set of ordered extension chains that contain the match conditions and extensions to execute. Match conditions for each extension chain are evaluated in sequence for a given request. The first extension chain that has a condition that matches the request is executed. Any subsequent extension chains do not execute. Limited to 5 extension chains per resource.
  /// [forwardingRules] A list of references to the forwarding rules to which this service extension is attached to. At least one forwarding rule is required. There can be only one `LBTrafficExtension` resource per forwarding rule.
  /// [labels] Optional. Set of labels associated with the `LbTrafficExtension` resource. The format must comply with [the following requirements](/compute/docs/labeling-resources#requirements).
  /// [loadBalancingScheme] All backend services and forwarding rules referenced by this extension must share the same load balancing scheme. Supported values: `INTERNAL_MANAGED`, `EXTERNAL_MANAGED`. For more information, refer to [Choosing a load balancer](https://cloud.google.com/load-balancing/docs/backend-service).
  /// [name] Name of the `LbTrafficExtension` resource in the following format: `projects/{project}/locations/{location}/lbTrafficExtensions/{lb_traffic_extension}`.
  /// [updateTime] The timestamp when the resource was updated.
  const GetLbTrafficExtensionResult({
    required this.createTime,
    required this.description,
    required this.extensionChains,
    required this.forwardingRules,
    required this.labels,
    required this.loadBalancingScheme,
    required this.name,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'extensionChains': pulumi.Input.encodeList<ExtensionChainResponse, Map<String, dynamic>>(extensionChains, (value) => value.toMap()),
      'forwardingRules': forwardingRules,
      'labels': labels,
      'loadBalancingScheme': loadBalancingScheme,
      'name': name,
      'updateTime': updateTime,
    };
  }

  factory GetLbTrafficExtensionResult.fromMap(Map<String, dynamic> map) {
    return GetLbTrafficExtensionResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      extensionChains: pulumi.Input.decodeList<ExtensionChainResponse>(map['extensionChains']!, (value) => ExtensionChainResponse.fromMap((value as Map).cast<String, dynamic>())),
      forwardingRules: (map['forwardingRules'] as List).cast<String>(),
      labels: (map['labels'] as Map).cast<String, String>(),
      loadBalancingScheme: map['loadBalancingScheme'] as String,
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

