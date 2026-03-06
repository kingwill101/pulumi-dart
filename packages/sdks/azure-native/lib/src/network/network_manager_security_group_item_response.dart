// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network manager security group item.
class NetworkManagerSecurityGroupItemResponse {
  /// Network manager group Id.
  final pulumi.Input<String> networkGroupId;

  /// Creates a new [NetworkManagerSecurityGroupItemResponse].
  /// [networkGroupId] Network manager group Id.
  const NetworkManagerSecurityGroupItemResponse({
    required this.networkGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkGroupId': networkGroupId,
    };
  }

  factory NetworkManagerSecurityGroupItemResponse.fromMap(Map<String, dynamic> map) {
    return NetworkManagerSecurityGroupItemResponse(
      networkGroupId: pulumi.Input.fromValue(map['networkGroupId'] as String),
    );
  }
}

