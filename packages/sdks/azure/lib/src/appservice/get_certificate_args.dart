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
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetCertificateArgs].
  /// [name] Specifies the name of the certificate.
  /// [resourceGroupName] The name of the resource group in which to create the certificate.
  /// [tags] Optional.
  GetCertificateArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

