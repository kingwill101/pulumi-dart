// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StepLabelsEntry {
  final pulumi.Input<String>? key;
  final pulumi.Input<String>? value;

  /// Creates a new [StepLabelsEntry].
  /// [key] Optional.
  /// [value] Optional.
  StepLabelsEntry({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory StepLabelsEntry.fromMap(Map<String, dynamic> map) {
    return StepLabelsEntry(
      key: map['key'] == null ? null : (map['key']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

