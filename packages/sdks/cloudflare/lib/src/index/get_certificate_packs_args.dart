// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_certificate_packs_get_certificate_packs_args_doc}
/// Arguments for getCertificatePacks.
/// {@endtemplate}
/// {@macro pulumi_index_get_certificate_packs_get_certificate_packs_args_doc}
class GetCertificatePacksArgs {
  /// Specify the deployment environment for the certificate packs.
  /// Available values: "staging", "production".
  final pulumi.Input<String?>? deploy;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Include Certificate Packs of all statuses, not just active ones.
  /// Available values: "all".
  final pulumi.Input<String?>? status;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetCertificatePacksArgs].
  /// [deploy] Specify the deployment environment for the certificate packs.
  /// [maxItems] Max items to fetch, default: 1000
  /// [status] Include Certificate Packs of all statuses, not just active ones.
  /// [zoneId] Identifier.
  const GetCertificatePacksArgs({
    this.deploy,
    this.maxItems,
    this.status,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploy': ?deploy,
      'maxItems': ?maxItems,
      'status': ?status,
      'zoneId': ?zoneId,
    };
  }

  factory GetCertificatePacksArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificatePacksArgs(
      deploy: (() { final guardedValue = map['deploy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
