// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCustomSslGeoRestrictions {
  /// Available values: "us", "eu", "highestSecurity".
  final pulumi.Input<String> label;

  /// Creates a new [GetCustomSslGeoRestrictions].
  /// [label] Available values: "us", "eu", "highestSecurity".
  const GetCustomSslGeoRestrictions({
    required this.label,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
    };
  }

  factory GetCustomSslGeoRestrictions.fromMap(Map<String, dynamic> map) {
    return GetCustomSslGeoRestrictions(
      label: pulumi.Input.fromValue(map['label'] as String),
    );
  }
}
