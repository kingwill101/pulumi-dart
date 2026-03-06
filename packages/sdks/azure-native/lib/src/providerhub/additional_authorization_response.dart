// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AdditionalAuthorizationResponse {
  final pulumi.Input<String>? applicationId;
  final pulumi.Input<String>? roleDefinitionId;

  /// Creates a new [AdditionalAuthorizationResponse].
  /// [applicationId] Optional.
  /// [roleDefinitionId] Optional.
  const AdditionalAuthorizationResponse({
    this.applicationId,
    this.roleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'roleDefinitionId': ?roleDefinitionId,
    };
  }

  factory AdditionalAuthorizationResponse.fromMap(Map<String, dynamic> map) {
    return AdditionalAuthorizationResponse(
      applicationId: (() { final guardedValue = map['applicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleDefinitionId: (() { final guardedValue = map['roleDefinitionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

