// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a header message. A header can have a key and a value.
class HeaderResponseCloudtasksV2beta3 {
  /// The Key of the header.
  final pulumi.Input<String> key;
  /// The Value of the header.
  final pulumi.Input<String> value;

  /// Creates a new [HeaderResponseCloudtasksV2beta3].
  /// [key] The Key of the header.
  /// [value] The Value of the header.
  const HeaderResponseCloudtasksV2beta3({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory HeaderResponseCloudtasksV2beta3.fromMap(Map<String, dynamic> map) {
    return HeaderResponseCloudtasksV2beta3(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

