// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a header message. A header can have a key and a value.
class HeaderCloudtasksV2beta3 {
  /// The Key of the header.
  final pulumi.Input<String>? key;

  /// The Value of the header.
  final pulumi.Input<String>? value;

  /// Creates a new [HeaderCloudtasksV2beta3].
  /// [key] The Key of the header.
  /// [value] The Value of the header.
  HeaderCloudtasksV2beta3({this.key, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': ?key, 'value': ?value};
  }

  factory HeaderCloudtasksV2beta3.fromMap(Map<String, dynamic> map) {
    return HeaderCloudtasksV2beta3(
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
