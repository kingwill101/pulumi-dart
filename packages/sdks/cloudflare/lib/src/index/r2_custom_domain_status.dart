// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class R2CustomDomainStatus {
  /// Ownership status of the domain.
  /// Available values: "pending", "active", "deactivated", "blocked", "error", "unknown".
  final pulumi.Input<String?>? ownership;
  /// SSL certificate status.
  /// Available values: "initializing", "pending", "active", "deactivated", "error", "unknown".
  final pulumi.Input<String?>? ssl;

  /// Creates a new [R2CustomDomainStatus].
  /// [ownership] Ownership status of the domain.
  /// [ssl] SSL certificate status.
  const R2CustomDomainStatus({
    this.ownership,
    this.ssl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ownership': ?ownership,
      'ssl': ?ssl,
    };
  }

  factory R2CustomDomainStatus.fromMap(Map<String, dynamic> map) {
    return R2CustomDomainStatus(
      ownership: (() { final guardedValue = map['ownership']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ssl: (() { final guardedValue = map['ssl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
