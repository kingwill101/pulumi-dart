// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network manager security user group item.
class SecurityUserGroupItem {
  /// Network manager group Id.
  final pulumi.Input<String> networkGroupId;

  /// Creates a new [SecurityUserGroupItem].
  /// [networkGroupId] Network manager group Id.
  const SecurityUserGroupItem({
    required this.networkGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkGroupId': networkGroupId,
    };
  }

  factory SecurityUserGroupItem.fromMap(Map<String, dynamic> map) {
    return SecurityUserGroupItem(
      networkGroupId: pulumi.Input.fromValue(map['networkGroupId'] as String),
    );
  }
}
