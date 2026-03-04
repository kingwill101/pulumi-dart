// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScriptMonitorTag {
  /// Name of the tag key.
  final pulumi.Input<String> key;

  /// Values associated with the tag key.
  final pulumi.Input<List<String>> values;

  /// Creates a new [ScriptMonitorTag].
  /// [key] Name of the tag key.
  /// [values] Values associated with the tag key.
  ScriptMonitorTag({required this.key, required this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'values': values};
  }

  factory ScriptMonitorTag.fromMap(Map<String, dynamic> map) {
    return ScriptMonitorTag(
      key: pulumi.Input.fromValue(map['key'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
