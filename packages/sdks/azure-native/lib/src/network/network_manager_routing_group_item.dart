// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network manager routing group item.
class NetworkManagerRoutingGroupItem {
  /// Network manager group Id.
  final pulumi.Input<String> networkGroupId;

  /// Creates a new [NetworkManagerRoutingGroupItem].
  /// [networkGroupId] Network manager group Id.
  NetworkManagerRoutingGroupItem({
    required this.networkGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkGroupId': networkGroupId,
    };
  }

  factory NetworkManagerRoutingGroupItem.fromMap(Map<String, dynamic> map) {
    return NetworkManagerRoutingGroupItem(
      networkGroupId: pulumi.Input.fromValue(map['networkGroupId'] as String),
    );
  }
}

