// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationsResultSaasAppCustomAttributeSourceNameByIdp {
  /// The UID of the IdP.
  final pulumi.Input<String> idpId;
  /// The name of the IdP provided attribute.
  final pulumi.Input<String> sourceName;

  /// Creates a new [GetZeroTrustAccessApplicationsResultSaasAppCustomAttributeSourceNameByIdp].
  /// [idpId] The UID of the IdP.
  /// [sourceName] The name of the IdP provided attribute.
  const GetZeroTrustAccessApplicationsResultSaasAppCustomAttributeSourceNameByIdp({
    required this.idpId,
    required this.sourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idpId': idpId,
      'sourceName': sourceName,
    };
  }

  factory GetZeroTrustAccessApplicationsResultSaasAppCustomAttributeSourceNameByIdp.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationsResultSaasAppCustomAttributeSourceNameByIdp(
      idpId: pulumi.Input.fromValue(map['idpId'] as String),
      sourceName: pulumi.Input.fromValue(map['sourceName'] as String),
    );
  }
}
