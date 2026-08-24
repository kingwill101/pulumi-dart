// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCertificatePackFilter {
  /// Specify the deployment environment for the certificate packs.
  /// Available values: "staging", "production".
  final pulumi.Input<String?>? deploy;
  /// Include Certificate Packs of all statuses, not just active ones.
  /// Available values: "all".
  final pulumi.Input<String?>? status;

  /// Creates a new [GetCertificatePackFilter].
  /// [deploy] Specify the deployment environment for the certificate packs.
  /// [status] Include Certificate Packs of all statuses, not just active ones.
  const GetCertificatePackFilter({
    this.deploy,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploy': ?deploy,
      'status': ?status,
    };
  }

  factory GetCertificatePackFilter.fromMap(Map<String, dynamic> map) {
    return GetCertificatePackFilter(
      deploy: (() { final guardedValue = map['deploy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
