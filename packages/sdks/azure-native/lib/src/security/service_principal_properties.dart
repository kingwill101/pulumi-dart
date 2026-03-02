// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of the service principal.
class ServicePrincipalProperties {
  /// Application ID of service principal.
  final pulumi.Input<String>? applicationId;
  /// A secret string that the application uses to prove its identity, also can be referred to as application password (write only).
  final pulumi.Input<String>? secret;

  /// Creates a new [ServicePrincipalProperties].
  /// [applicationId] Application ID of service principal.
  /// [secret] A secret string that the application uses to prove its identity, also can be referred to as application password (write only).
  ServicePrincipalProperties({
    this.applicationId,
    this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'secret': ?secret,
    };
  }

  factory ServicePrincipalProperties.fromMap(Map<String, dynamic> map) {
    return ServicePrincipalProperties(
      applicationId: map['applicationId'] == null ? null : (map['applicationId'] as String).input(),
      secret: map['secret'] == null ? null : (map['secret'] as String).input(),
    );
  }
}

