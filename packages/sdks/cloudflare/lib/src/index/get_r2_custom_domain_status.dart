// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetR2CustomDomainStatus {
  /// Ownership status of the domain.
  /// Available values: "pending", "active", "deactivated", "blocked", "error", "unknown".
  final pulumi.Input<String> ownership;
  /// SSL certificate status.
  /// Available values: "initializing", "pending", "active", "deactivated", "error", "unknown".
  final pulumi.Input<String> ssl;

  /// Creates a new [GetR2CustomDomainStatus].
  /// [ownership] Ownership status of the domain.
  /// [ssl] SSL certificate status.
  const GetR2CustomDomainStatus({
    required this.ownership,
    required this.ssl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ownership': ownership,
      'ssl': ssl,
    };
  }

  factory GetR2CustomDomainStatus.fromMap(Map<String, dynamic> map) {
    return GetR2CustomDomainStatus(
      ownership: pulumi.Input.fromValue(map['ownership'] as String),
      ssl: pulumi.Input.fromValue(map['ssl'] as String),
    );
  }
}
