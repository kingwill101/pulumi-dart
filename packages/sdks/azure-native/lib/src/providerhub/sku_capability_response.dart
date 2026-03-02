// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SkuCapabilityResponse {
  /// The name.
  final pulumi.Input<String> name;
  /// The value.
  final pulumi.Input<String> value;

  /// Creates a new [SkuCapabilityResponse].
  /// [name] The name.
  /// [value] The value.
  SkuCapabilityResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory SkuCapabilityResponse.fromMap(Map<String, dynamic> map) {
    return SkuCapabilityResponse(
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

