// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_site_certificate_args_doc}
/// Arguments for getSiteCertificate.
/// {@endtemplate}
/// {@macro pulumi_web_get_site_certificate_args_doc}
class GetSiteCertificateArgs {
  /// Name of the certificate.
  final pulumi.Input<String> certificateName;
  /// Name of the site.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetSiteCertificateArgs].
  /// [certificateName] Name of the certificate.
  /// [name] Name of the site.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetSiteCertificateArgs({
    required this.certificateName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateName': certificateName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetSiteCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetSiteCertificateArgs(
      certificateName: pulumi.Input.fromValue(map['certificateName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
