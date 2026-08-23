// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network manager routing group item.
class NetworkManagerRoutingGroupItemResponse {
  /// Network manager group Id.
  final pulumi.Input<String> networkGroupId;

  /// Creates a new [NetworkManagerRoutingGroupItemResponse].
  /// [networkGroupId] Network manager group Id.
  const NetworkManagerRoutingGroupItemResponse({
    required this.networkGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkGroupId': networkGroupId,
    };
  }

  factory NetworkManagerRoutingGroupItemResponse.fromMap(Map<String, dynamic> map) {
    return NetworkManagerRoutingGroupItemResponse(
      networkGroupId: pulumi.Input.fromValue(map['networkGroupId'] as String),
    );
  }
}
