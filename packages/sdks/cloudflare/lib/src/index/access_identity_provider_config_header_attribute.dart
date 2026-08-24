// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessIdentityProviderConfigHeaderAttribute {
  /// attribute name from the IDP
  final pulumi.Input<String?>? attributeName;
  /// header that will be added on the request to the origin
  final pulumi.Input<String?>? headerName;

  /// Creates a new [AccessIdentityProviderConfigHeaderAttribute].
  /// [attributeName] attribute name from the IDP
  /// [headerName] header that will be added on the request to the origin
  const AccessIdentityProviderConfigHeaderAttribute({
    this.attributeName,
    this.headerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeName': ?attributeName,
      'headerName': ?headerName,
    };
  }

  factory AccessIdentityProviderConfigHeaderAttribute.fromMap(Map<String, dynamic> map) {
    return AccessIdentityProviderConfigHeaderAttribute(
      attributeName: (() { final guardedValue = map['attributeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headerName: (() { final guardedValue = map['headerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
