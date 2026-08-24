// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificatePackCertificateGeoRestrictions {
  /// Available values: "us", "eu", "highestSecurity".
  final pulumi.Input<String?>? label;

  /// Creates a new [CertificatePackCertificateGeoRestrictions].
  /// [label] Available values: "us", "eu", "highestSecurity".
  const CertificatePackCertificateGeoRestrictions({
    this.label,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': ?label,
    };
  }

  factory CertificatePackCertificateGeoRestrictions.fromMap(Map<String, dynamic> map) {
    return CertificatePackCertificateGeoRestrictions(
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
