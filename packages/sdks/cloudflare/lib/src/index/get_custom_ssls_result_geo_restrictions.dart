// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCustomSslsResultGeoRestrictions {
  /// Available values: "us", "eu", "highestSecurity".
  final pulumi.Input<String> label;

  /// Creates a new [GetCustomSslsResultGeoRestrictions].
  /// [label] Available values: "us", "eu", "highestSecurity".
  const GetCustomSslsResultGeoRestrictions({
    required this.label,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
    };
  }

  factory GetCustomSslsResultGeoRestrictions.fromMap(Map<String, dynamic> map) {
    return GetCustomSslsResultGeoRestrictions(
      label: pulumi.Input.fromValue(map['label'] as String),
    );
  }
}
