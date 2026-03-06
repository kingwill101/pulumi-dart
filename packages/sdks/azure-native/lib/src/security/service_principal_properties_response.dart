// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of the service principal.
class ServicePrincipalPropertiesResponse {
  /// Application ID of service principal.
  final pulumi.Input<String>? applicationId;
  /// A secret string that the application uses to prove its identity, also can be referred to as application password (write only).
  final pulumi.Input<String>? secret;

  /// Creates a new [ServicePrincipalPropertiesResponse].
  /// [applicationId] Application ID of service principal.
  /// [secret] A secret string that the application uses to prove its identity, also can be referred to as application password (write only).
  const ServicePrincipalPropertiesResponse({
    this.applicationId,
    this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'secret': ?secret,
    };
  }

  factory ServicePrincipalPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ServicePrincipalPropertiesResponse(
      applicationId: (() { final guardedValue = map['applicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

