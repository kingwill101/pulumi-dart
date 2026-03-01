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
    required pulumi.Output<String> instance,
    pulumi.Output<String>? project,
    required pulumi.Output<String> sha1Fingerprint,
  }) :
      instance = pulumi.Input.asInput<String>(instance),
      project = pulumi.Input.asOptionalInput<String>(project),
      sha1Fingerprint = pulumi.Input.asInput<String>(sha1Fingerprint);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instance': instance,
      'project': ?project,
      'sha1Fingerprint': sha1Fingerprint,
    };
  }

  factory GetSslCertArgs.fromMap(Map<String, dynamic> map) {
    return GetSslCertArgs(
      instance: pulumi.Output.create<String>(map['instance'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      sha1Fingerprint: pulumi.Output.create<String>(map['sha1Fingerprint'] as String),
    );
  }
}

