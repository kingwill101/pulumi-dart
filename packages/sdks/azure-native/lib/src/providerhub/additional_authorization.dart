// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AdditionalAuthorization {
  final pulumi.Input<String?>? applicationId;
  final pulumi.Input<String?>? roleDefinitionId;

  /// Creates a new [AdditionalAuthorization].
  /// [applicationId] Optional.
  /// [roleDefinitionId] Optional.
  const AdditionalAuthorization({
    this.applicationId,
    this.roleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'roleDefinitionId': ?roleDefinitionId,
    };
  }

  factory AdditionalAuthorization.fromMap(Map<String, dynamic> map) {
    return AdditionalAuthorization(
      applicationId: (() { final guardedValue = map['applicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleDefinitionId: (() { final guardedValue = map['roleDefinitionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
