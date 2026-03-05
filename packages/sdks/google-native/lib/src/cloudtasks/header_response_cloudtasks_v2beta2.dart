// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a header message. A header can have a key and a value.
class HeaderResponseCloudtasksV2beta2 {
  /// The key of the header.
  final pulumi.Input<String> key;
  /// The value of the header.
  final pulumi.Input<String> value;

  /// Creates a new [HeaderResponseCloudtasksV2beta2].
  /// [key] The key of the header.
  /// [value] The value of the header.
  HeaderResponseCloudtasksV2beta2({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory HeaderResponseCloudtasksV2beta2.fromMap(Map<String, dynamic> map) {
    return HeaderResponseCloudtasksV2beta2(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

