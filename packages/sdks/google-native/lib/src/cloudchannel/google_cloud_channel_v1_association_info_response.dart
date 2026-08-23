// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Association links that an entitlement has to other entitlements.
class GoogleCloudChannelV1AssociationInfoResponse {
  /// The name of the base entitlement, for which this entitlement is an add-on.
  final pulumi.Input<String> baseEntitlement;

  /// Creates a new [GoogleCloudChannelV1AssociationInfoResponse].
  /// [baseEntitlement] The name of the base entitlement, for which this entitlement is an add-on.
  const GoogleCloudChannelV1AssociationInfoResponse({
    required this.baseEntitlement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseEntitlement': baseEntitlement,
    };
  }

  factory GoogleCloudChannelV1AssociationInfoResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudChannelV1AssociationInfoResponse(
      baseEntitlement: pulumi.Input.fromValue(map['baseEntitlement'] as String),
    );
  }
}
