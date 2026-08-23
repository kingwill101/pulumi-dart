// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupQuotasEntityResponseProperties {
  /// Display name of the GroupQuota entity.
  final pulumi.Input<String>? displayName;
  /// Provisioning state of the operation.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [GroupQuotasEntityResponseProperties].
  /// [displayName] Display name of the GroupQuota entity.
  /// [provisioningState] Provisioning state of the operation.
  const GroupQuotasEntityResponseProperties({
    this.displayName,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'provisioningState': provisioningState,
    };
  }

  factory GroupQuotasEntityResponseProperties.fromMap(Map<String, dynamic> map) {
    return GroupQuotasEntityResponseProperties(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
