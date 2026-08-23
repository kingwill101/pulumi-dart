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
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWebAppPublicCertificateArgs].
  /// [name] Name of the app.
  /// [publicCertificateName] Public certificate name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetWebAppPublicCertificateArgs({
    required this.name,
    required this.publicCertificateName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'publicCertificateName': publicCertificateName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWebAppPublicCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppPublicCertificateArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      publicCertificateName: pulumi.Input.fromValue(map['publicCertificateName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
