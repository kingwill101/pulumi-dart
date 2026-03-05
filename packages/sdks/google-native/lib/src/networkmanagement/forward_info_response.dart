// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of the final state "forward" and associated resource.
class ForwardInfoResponse {
  /// URI of the resource that the packet is forwarded to.
  final pulumi.Input<String> resourceUri;
  /// Target type where this packet is forwarded to.
  final pulumi.Input<String> target;

  /// Creates a new [ForwardInfoResponse].
  /// [resourceUri] URI of the resource that the packet is forwarded to.
  /// [target] Target type where this packet is forwarded to.
  ForwardInfoResponse({
    required this.resourceUri,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceUri': resourceUri,
      'target': target,
    };
  }

  factory ForwardInfoResponse.fromMap(Map<String, dynamic> map) {
    return ForwardInfoResponse(
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
      target: pulumi.Input.fromValue(map['target'] as String),
    );
  }
}

