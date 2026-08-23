// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Association links that an entitlement has to other entitlements.
class GoogleCloudChannelV1AssociationInfo {
  /// The name of the base entitlement, for which this entitlement is an add-on.
  final pulumi.Input<String>? baseEntitlement;

  /// Creates a new [GoogleCloudChannelV1AssociationInfo].
  /// [baseEntitlement] The name of the base entitlement, for which this entitlement is an add-on.
  const GoogleCloudChannelV1AssociationInfo({
    this.baseEntitlement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseEntitlement': ?baseEntitlement,
    };
  }

  factory GoogleCloudChannelV1AssociationInfo.fromMap(Map<String, dynamic> map) {
    return GoogleCloudChannelV1AssociationInfo(
      baseEntitlement: (() { final guardedValue = map['baseEntitlement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
