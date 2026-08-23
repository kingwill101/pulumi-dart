// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration options for Cloud Armor.
class SecurityPolicyCloudArmorConfigResponse {
  /// If set to true, enables Cloud Armor Machine Learning.
  final pulumi.Input<bool> enableMl;

  /// Creates a new [SecurityPolicyCloudArmorConfigResponse].
  /// [enableMl] If set to true, enables Cloud Armor Machine Learning.
  const SecurityPolicyCloudArmorConfigResponse({
    required this.enableMl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableMl': enableMl,
    };
  }

  factory SecurityPolicyCloudArmorConfigResponse.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyCloudArmorConfigResponse(
      enableMl: pulumi.Input.fromValue(map['enableMl'] as bool),
    );
  }
}
