// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCertificatePackCertificateGeoRestrictions {
  /// Available values: "us", "eu", "highestSecurity".
  final pulumi.Input<String> label;

  /// Creates a new [GetCertificatePackCertificateGeoRestrictions].
  /// [label] Available values: "us", "eu", "highestSecurity".
  const GetCertificatePackCertificateGeoRestrictions({
    required this.label,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
    };
  }

  factory GetCertificatePackCertificateGeoRestrictions.fromMap(Map<String, dynamic> map) {
    return GetCertificatePackCertificateGeoRestrictions(
      label: pulumi.Input.fromValue(map['label'] as String),
    );
  }
}
