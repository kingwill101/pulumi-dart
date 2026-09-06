// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Service principal metadata.
class ServicePrincipal {
  /// Expiration time of service principal credentials.
  final pulumi.Input<String?>? credentialsExpireOn;

  /// Creates a new [ServicePrincipal].
  /// [credentialsExpireOn] Expiration time of service principal credentials.
  const ServicePrincipal({
    this.credentialsExpireOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialsExpireOn': ?credentialsExpireOn,
    };
  }

  factory ServicePrincipal.fromMap(Map<String, dynamic> map) {
    return ServicePrincipal(
      credentialsExpireOn: (() { final guardedValue = map['credentialsExpireOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
