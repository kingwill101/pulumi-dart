// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkloadIdentityPoolProviderSaml {
  /// SAML Identity provider configuration metadata xml doc.
  ///
  /// &lt;a name="nestedX509"&gt;&lt;/a&gt;The `x509` block supports:
  final pulumi.Input<String> idpMetadataXml;

  /// Creates a new [WorkloadIdentityPoolProviderSaml].
  /// [idpMetadataXml] SAML Identity provider configuration metadata xml doc.
  const WorkloadIdentityPoolProviderSaml({
    required this.idpMetadataXml,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idpMetadataXml': idpMetadataXml,
    };
  }

  factory WorkloadIdentityPoolProviderSaml.fromMap(Map<String, dynamic> map) {
    return WorkloadIdentityPoolProviderSaml(
      idpMetadataXml: pulumi.Input.fromValue(map['idpMetadataXml'] as String),
    );
  }
}
