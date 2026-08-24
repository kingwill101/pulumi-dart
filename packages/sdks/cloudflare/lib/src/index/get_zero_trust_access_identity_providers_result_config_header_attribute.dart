// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessIdentityProvidersResultConfigHeaderAttribute {
  /// attribute name from the IDP
  final pulumi.Input<String> attributeName;
  /// header that will be added on the request to the origin
  final pulumi.Input<String> headerName;

  /// Creates a new [GetZeroTrustAccessIdentityProvidersResultConfigHeaderAttribute].
  /// [attributeName] attribute name from the IDP
  /// [headerName] header that will be added on the request to the origin
  const GetZeroTrustAccessIdentityProvidersResultConfigHeaderAttribute({
    required this.attributeName,
    required this.headerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeName': attributeName,
      'headerName': headerName,
    };
  }

  factory GetZeroTrustAccessIdentityProvidersResultConfigHeaderAttribute.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessIdentityProvidersResultConfigHeaderAttribute(
      attributeName: pulumi.Input.fromValue(map['attributeName'] as String),
      headerName: pulumi.Input.fromValue(map['headerName'] as String),
    );
  }
}
