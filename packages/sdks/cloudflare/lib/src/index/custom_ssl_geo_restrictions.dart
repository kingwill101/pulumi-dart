// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomSslGeoRestrictions {
  /// Available values: "us", "eu", "highestSecurity".
  final pulumi.Input<String?>? label;

  /// Creates a new [CustomSslGeoRestrictions].
  /// [label] Available values: "us", "eu", "highestSecurity".
  const CustomSslGeoRestrictions({
    this.label,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': ?label,
    };
  }

  factory CustomSslGeoRestrictions.fromMap(Map<String, dynamic> map) {
    return CustomSslGeoRestrictions(
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
