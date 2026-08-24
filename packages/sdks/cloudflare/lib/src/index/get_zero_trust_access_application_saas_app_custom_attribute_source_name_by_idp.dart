// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationSaasAppCustomAttributeSourceNameByIdp {
  /// The UID of the IdP.
  final pulumi.Input<String> idpId;
  /// The name of the IdP provided attribute.
  final pulumi.Input<String> sourceName;

  /// Creates a new [GetZeroTrustAccessApplicationSaasAppCustomAttributeSourceNameByIdp].
  /// [idpId] The UID of the IdP.
  /// [sourceName] The name of the IdP provided attribute.
  const GetZeroTrustAccessApplicationSaasAppCustomAttributeSourceNameByIdp({
    required this.idpId,
    required this.sourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idpId': idpId,
      'sourceName': sourceName,
    };
  }

  factory GetZeroTrustAccessApplicationSaasAppCustomAttributeSourceNameByIdp.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationSaasAppCustomAttributeSourceNameByIdp(
      idpId: pulumi.Input.fromValue(map['idpId'] as String),
      sourceName: pulumi.Input.fromValue(map['sourceName'] as String),
    );
  }
}
