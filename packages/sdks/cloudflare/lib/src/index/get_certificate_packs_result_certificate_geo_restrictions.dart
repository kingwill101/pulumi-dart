// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCertificatePacksResultCertificateGeoRestrictions {
  /// Available values: "us", "eu", "highestSecurity".
  final pulumi.Input<String> label;

  /// Creates a new [GetCertificatePacksResultCertificateGeoRestrictions].
  /// [label] Available values: "us", "eu", "highestSecurity".
  const GetCertificatePacksResultCertificateGeoRestrictions({
    required this.label,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
    };
  }

  factory GetCertificatePacksResultCertificateGeoRestrictions.fromMap(Map<String, dynamic> map) {
    return GetCertificatePacksResultCertificateGeoRestrictions(
      label: pulumi.Input.fromValue(map['label'] as String),
    );
  }
}
