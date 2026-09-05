// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appservice_get_certificate_get_certificate_args_doc}
/// Arguments for getCertificate.
/// {@endtemplate}
/// {@macro pulumi_appservice_get_certificate_get_certificate_args_doc}
class GetCertificateArgs {
  /// Specifies the name of the certificate.
  final pulumi.Input<String> name;
  /// The name of the resource group in which to create the certificate.
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [GetCertificateArgs].
  /// [name] Specifies the name of the certificate.
  /// [resourceGroupName] The name of the resource group in which to create the certificate.
  /// [tags] Optional.
  const GetCertificateArgs({
    required this.name,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
