// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_web_app_public_certificate_args_doc}
/// Arguments for getWebAppPublicCertificate.
/// {@endtemplate}
/// {@macro pulumi_web_get_web_app_public_certificate_args_doc}
class GetWebAppPublicCertificateArgs {
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Public certificate name.
  final pulumi.Input<String> publicCertificateName;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWebAppPublicCertificateArgs].
  /// [name] Name of the app.
  /// [publicCertificateName] Public certificate name.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  GetWebAppPublicCertificateArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> publicCertificateName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      publicCertificateName = pulumi.Input.asInput<String>(publicCertificateName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'publicCertificateName': publicCertificateName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWebAppPublicCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppPublicCertificateArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      publicCertificateName: pulumi.Output.create<String>(map['publicCertificateName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

