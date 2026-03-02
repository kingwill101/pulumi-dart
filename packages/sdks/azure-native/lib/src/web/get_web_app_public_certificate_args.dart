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
      name: (map['name'] as String).input(),
      publicCertificateName: (map['publicCertificateName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

