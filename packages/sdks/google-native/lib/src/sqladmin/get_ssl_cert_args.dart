// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sqladmin_v1_get_ssl_cert_args_doc}
/// Arguments for getSslCert.
/// {@endtemplate}
/// {@macro pulumi_sqladmin_v1_get_ssl_cert_args_doc}
class GetSslCertArgs {
  final pulumi.Input<String> instance;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sha1Fingerprint;

  /// Creates a new [GetSslCertArgs].
  /// [instance] Required.
  /// [project] Optional.
  /// [sha1Fingerprint] Required.
  GetSslCertArgs({
    required this.instance,
    this.project,
    required this.sha1Fingerprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instance': instance,
      'project': ?project,
      'sha1Fingerprint': sha1Fingerprint,
    };
  }

  factory GetSslCertArgs.fromMap(Map<String, dynamic> map) {
    return GetSslCertArgs(
      instance: pulumi.Input.fromValue(map['instance'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sha1Fingerprint: pulumi.Input.fromValue(map['sha1Fingerprint'] as String),
    );
  }
}
