// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_ssl_cert_ssl_cert_args_doc}
/// The set of arguments for SslCert.
/// {@endtemplate}
/// {@macro pulumi_sql_ssl_cert_ssl_cert_args_doc}
class SslCertArgs {
  /// The common name to be used in the certificate to identify the
  /// client. Constrained to [a-zA-Z.-_ ]+. Changing this forces a new resource to be created.
  final pulumi.Input<String> commonName;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The name of the Cloud SQL instance. Changing this
  /// forces a new resource to be created.
  final pulumi.Input<String> instance;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [SslCertArgs].
  /// [commonName] The common name to be used in the certificate to identify the
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [instance] The name of the Cloud SQL instance. Changing this
  /// [project] The ID of the project in which the resource belongs. If it
  const SslCertArgs({
    required this.commonName,
    this.deletionPolicy,
    required this.instance,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonName': commonName,
      'deletionPolicy': ?deletionPolicy,
      'instance': instance,
      'project': ?project,
    };
  }

  factory SslCertArgs.fromMap(Map<String, dynamic> map) {
    return SslCertArgs(
      commonName: pulumi.Input.fromValue(map['commonName'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
