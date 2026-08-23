// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network manager security group item.
class NetworkManagerSecurityGroupItem {
  /// Network manager group Id.
  final pulumi.Input<String> networkGroupId;

  /// Creates a new [NetworkManagerSecurityGroupItem].
  /// [networkGroupId] Network manager group Id.
  const NetworkManagerSecurityGroupItem({
    required this.networkGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkGroupId': networkGroupId,
    };
  }

  factory NetworkManagerSecurityGroupItem.fromMap(Map<String, dynamic> map) {
    return NetworkManagerSecurityGroupItem(
      networkGroupId: pulumi.Input.fromValue(map['networkGroupId'] as String),
    );
  }
}
