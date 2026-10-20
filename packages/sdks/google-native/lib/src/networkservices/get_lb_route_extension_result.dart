// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extension_chain_response.dart';

/// Result data returned by getLbRouteExtension.
class GetLbRouteExtensionResult {
  /// The timestamp when the resource was created.
  final String? createTime;
  /// Optional. A human-readable description of the resource.
  final String? description;
  /// A set of ordered extension chains that contain the match conditions and extensions to execute. Match conditions for each extension chain are evaluated in sequence for a given request. The first extension chain that has a condition that matches the request is executed. Any subsequent extension chains do not execute. Limited to 5 extension chains per resource.
  final List<ExtensionChainResponse>? extensionChains;
  /// A list of references to the forwarding rules to which this service extension is attached to. At least one forwarding rule is required. There can be only one `LbRouteExtension` resource per forwarding rule.
  final List<String>? forwardingRules;
  /// Optional. Set of labels associated with the `LbRouteExtension` resource. The format must comply with [the following requirements](/compute/docs/labeling-resources#requirements).
  final Map<String, String>? labels;
  /// All backend services and forwarding rules referenced by this extension must share the same load balancing scheme. Supported values: `INTERNAL_MANAGED`, `EXTERNAL_MANAGED`. For more information, refer to [Choosing a load balancer](https://cloud.google.com/load-balancing/docs/backend-service).
  final String? loadBalancingScheme;
  /// Name of the `LbRouteExtension` resource in the following format: `projects/{project}/locations/{location}/lbRouteExtensions/{lb_route_extension}`.
  final String? name;
  /// The timestamp when the resource was updated.
  final String? updateTime;

  /// Creates a new [GetLbRouteExtensionResult].
  /// [createTime] The timestamp when the resource was created.
  /// [description] Optional. A human-readable description of the resource.
  /// [extensionChains] A set of ordered extension chains that contain the match conditions and extensions to execute. Match conditions for each extension chain are evaluated in sequence for a given request. The first extension chain that has a condition that matches the request is executed. Any subsequent extension chains do not execute. Limited to 5 extension chains per resource.
  /// [forwardingRules] A list of references to the forwarding rules to which this service extension is attached to. At least one forwarding rule is required. There can be only one `LbRouteExtension` resource per forwarding rule.
  /// [labels] Optional. Set of labels associated with the `LbRouteExtension` resource. The format must comply with [the following requirements](/compute/docs/labeling-resources#requirements).
  /// [loadBalancingScheme] All backend services and forwarding rules referenced by this extension must share the same load balancing scheme. Supported values: `INTERNAL_MANAGED`, `EXTERNAL_MANAGED`. For more information, refer to [Choosing a load balancer](https://cloud.google.com/load-balancing/docs/backend-service).
  /// [name] Name of the `LbRouteExtension` resource in the following format: `projects/{project}/locations/{location}/lbRouteExtensions/{lb_route_extension}`.
  /// [updateTime] The timestamp when the resource was updated.
  const GetLbRouteExtensionResult({
    this.createTime,
    this.description,
    this.extensionChains,
    this.forwardingRules,
    this.labels,
    this.loadBalancingScheme,
    this.name,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'extensionChains': ?(() { final guardedValue = extensionChains; if (guardedValue == null) return null; return pulumi.Input.encodeList<ExtensionChainResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'forwardingRules': ?forwardingRules,
      'labels': ?labels,
      'loadBalancingScheme': ?loadBalancingScheme,
      'name': ?name,
      'updateTime': ?updateTime,
    };
  }

  factory GetLbRouteExtensionResult.fromMap(Map<String, dynamic> map) {
    return GetLbRouteExtensionResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extensionChains: (() { final guardedValue = map['extensionChains']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExtensionChainResponse>(guardedValue, (value) => ExtensionChainResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      forwardingRules: (() { final guardedValue = map['forwardingRules']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      loadBalancingScheme: (() { final guardedValue = map['loadBalancingScheme']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
