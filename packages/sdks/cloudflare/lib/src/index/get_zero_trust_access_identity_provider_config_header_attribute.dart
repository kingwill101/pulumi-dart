// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessIdentityProviderConfigHeaderAttribute {
  /// attribute name from the IDP
  final pulumi.Input<String> attributeName;
  /// header that will be added on the request to the origin
  final pulumi.Input<String> headerName;

  /// Creates a new [GetZeroTrustAccessIdentityProviderConfigHeaderAttribute].
  /// [attributeName] attribute name from the IDP
  /// [headerName] header that will be added on the request to the origin
  const GetZeroTrustAccessIdentityProviderConfigHeaderAttribute({
    required this.attributeName,
    required this.headerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeName': attributeName,
      'headerName': headerName,
    };
  }

  factory GetZeroTrustAccessIdentityProviderConfigHeaderAttribute.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessIdentityProviderConfigHeaderAttribute(
      attributeName: pulumi.Input.fromValue(map['attributeName'] as String),
      headerName: pulumi.Input.fromValue(map['headerName'] as String),
    );
  }
}
