// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupQuotasEntityProperties {
  /// Display name of the GroupQuota entity.
  final pulumi.Input<String?>? displayName;

  /// Creates a new [GroupQuotasEntityProperties].
  /// [displayName] Display name of the GroupQuota entity.
  const GroupQuotasEntityProperties({
    this.displayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
    };
  }

  factory GroupQuotasEntityProperties.fromMap(Map<String, dynamic> map) {
    return GroupQuotasEntityProperties(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
