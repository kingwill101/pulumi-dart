// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_nginx_get_certificate_get_certificate_args_doc}
/// Arguments for getCertificate.
/// {@endtemplate}
/// {@macro pulumi_nginx_get_certificate_get_certificate_args_doc}
class GetCertificateArgs {
  /// The name of the NGINX Certificate.
  final pulumi.Input<String> name;
  /// The ID of the NGINX Deployment that the certificate is associated with.
  final pulumi.Input<String> nginxDeploymentId;

  /// Creates a new [GetCertificateArgs].
  /// [name] The name of the NGINX Certificate.
  /// [nginxDeploymentId] The ID of the NGINX Deployment that the certificate is associated with.
  GetCertificateArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> nginxDeploymentId,
  }) :
      name = pulumi.Input.asInput<String>(name),
      nginxDeploymentId = pulumi.Input.asInput<String>(nginxDeploymentId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'nginxDeploymentId': nginxDeploymentId,
    };
  }

  factory GetCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      nginxDeploymentId: pulumi.Output.create<String>(map['nginxDeploymentId'] as String),
    );
  }
}

