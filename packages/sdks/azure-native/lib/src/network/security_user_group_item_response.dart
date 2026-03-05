// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network manager security user group item.
class SecurityUserGroupItemResponse {
  /// Network manager group Id.
  final pulumi.Input<String> networkGroupId;

  /// Creates a new [SecurityUserGroupItemResponse].
  /// [networkGroupId] Network manager group Id.
  SecurityUserGroupItemResponse({
    required this.networkGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkGroupId': networkGroupId,
    };
  }

  factory SecurityUserGroupItemResponse.fromMap(Map<String, dynamic> map) {
    return SecurityUserGroupItemResponse(
      networkGroupId: pulumi.Input.fromValue(map['networkGroupId'] as String),
    );
  }
}

