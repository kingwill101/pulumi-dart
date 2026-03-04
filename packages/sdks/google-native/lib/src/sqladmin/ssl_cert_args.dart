// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sqladmin_v1_ssl_cert_args_doc}
/// The set of arguments for SslCert.
/// {@endtemplate}
/// {@macro pulumi_sqladmin_v1_ssl_cert_args_doc}
class SslCertArgs {
  /// User supplied name. Must be a distinct name from the other certificates for this instance.
  final pulumi.Input<String>? commonName;
  final pulumi.Input<String> instance;
  final pulumi.Input<String>? project;

  /// Creates a new [SslCertArgs].
  /// [commonName] User supplied name. Must be a distinct name from the other certificates for this instance.
  /// [instance] Required.
  /// [project] Optional.
  SslCertArgs({this.commonName, required this.instance, this.project});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonName': ?commonName,
      'instance': instance,
      'project': ?project,
    };
  }

  factory SslCertArgs.fromMap(Map<String, dynamic> map) {
    return SslCertArgs(
      commonName: (() {
        final guardedValue = map['commonName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
