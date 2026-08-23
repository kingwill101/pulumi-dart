// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkloadIdentityPoolProviderSaml {
  /// SAML Identity provider configuration metadata xml doc.
  final pulumi.Input<String> idpMetadataXml;

  /// Creates a new [GetWorkloadIdentityPoolProviderSaml].
  /// [idpMetadataXml] SAML Identity provider configuration metadata xml doc.
  const GetWorkloadIdentityPoolProviderSaml({
    required this.idpMetadataXml,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idpMetadataXml': idpMetadataXml,
    };
  }

  factory GetWorkloadIdentityPoolProviderSaml.fromMap(Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolProviderSaml(
      idpMetadataXml: pulumi.Input.fromValue(map['idpMetadataXml'] as String),
    );
  }
}
