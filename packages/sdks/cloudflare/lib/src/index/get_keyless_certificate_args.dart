// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_keyless_certificate_get_keyless_certificate_args_doc}
/// Arguments for getKeylessCertificate.
/// {@endtemplate}
/// {@macro pulumi_index_get_keyless_certificate_get_keyless_certificate_args_doc}
class GetKeylessCertificateArgs {
  /// Identifier.
  final pulumi.Input<String> keylessCertificateId;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetKeylessCertificateArgs].
  /// [keylessCertificateId] Identifier.
  /// [zoneId] Identifier.
  const GetKeylessCertificateArgs({
    required this.keylessCertificateId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keylessCertificateId': keylessCertificateId,
      'zoneId': ?zoneId,
    };
  }

  factory GetKeylessCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetKeylessCertificateArgs(
      keylessCertificateId: pulumi.Input.fromValue(map['keylessCertificateId'] as String),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
