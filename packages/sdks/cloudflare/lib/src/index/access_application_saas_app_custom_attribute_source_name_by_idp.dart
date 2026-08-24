// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationSaasAppCustomAttributeSourceNameByIdp {
  /// The UID of the IdP.
  final pulumi.Input<String?>? idpId;
  /// The name of the IdP provided attribute.
  final pulumi.Input<String?>? sourceName;

  /// Creates a new [AccessApplicationSaasAppCustomAttributeSourceNameByIdp].
  /// [idpId] The UID of the IdP.
  /// [sourceName] The name of the IdP provided attribute.
  const AccessApplicationSaasAppCustomAttributeSourceNameByIdp({
    this.idpId,
    this.sourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idpId': ?idpId,
      'sourceName': ?sourceName,
    };
  }

  factory AccessApplicationSaasAppCustomAttributeSourceNameByIdp.fromMap(Map<String, dynamic> map) {
    return AccessApplicationSaasAppCustomAttributeSourceNameByIdp(
      idpId: (() { final guardedValue = map['idpId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceName: (() { final guardedValue = map['sourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
