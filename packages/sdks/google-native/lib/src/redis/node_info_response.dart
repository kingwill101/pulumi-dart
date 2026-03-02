// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Node specific properties.
class NodeInfoResponse {
  /// Location of the node.
  final pulumi.Input<String> zone;

  /// Creates a new [NodeInfoResponse].
  /// [zone] Location of the node.
  NodeInfoResponse({
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zone': zone,
    };
  }

  factory NodeInfoResponse.fromMap(Map<String, dynamic> map) {
    return NodeInfoResponse(
      zone: (map['zone'] as String).input(),
    );
  }
}

