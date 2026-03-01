// ignore_for_file: unused_element, unnecessary_cast


class GetWorkloadIdentityPoolProviderSaml {
  /// SAML Identity provider configuration metadata xml doc.
  final String idpMetadataXml;

  /// Creates a new [GetWorkloadIdentityPoolProviderSaml].
  /// [idpMetadataXml] SAML Identity provider configuration metadata xml doc.
  GetWorkloadIdentityPoolProviderSaml({
    required this.idpMetadataXml,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idpMetadataXml': idpMetadataXml,
    };
  }

  factory GetWorkloadIdentityPoolProviderSaml.fromMap(Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolProviderSaml(
      idpMetadataXml: map['idpMetadataXml'] as String,
    );
  }
}

