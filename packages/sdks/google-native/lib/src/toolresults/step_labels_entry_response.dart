// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StepLabelsEntryResponse {
  final pulumi.Input<String> key;
  final pulumi.Input<String> value;

  /// Creates a new [StepLabelsEntryResponse].
  /// [key] Required.
  /// [value] Required.
  const StepLabelsEntryResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory StepLabelsEntryResponse.fromMap(Map<String, dynamic> map) {
    return StepLabelsEntryResponse(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

