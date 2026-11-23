// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationComponentParameterParameter {
  /// The key of the parameter.
  final pulumi.Input<String> key;
  /// The value of the parameter, as a JSON-encoded string. Use
  /// `jsonencode()` to set it.
  final pulumi.Input<String?>? value;

  /// Creates a new [ApplicationComponentParameterParameter].
  /// [key] The key of the parameter.
  /// [value] The value of the parameter, as a JSON-encoded string. Use
  const ApplicationComponentParameterParameter({
    required this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': ?value,
    };
  }

  factory ApplicationComponentParameterParameter.fromMap(Map<String, dynamic> map) {
    return ApplicationComponentParameterParameter(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
