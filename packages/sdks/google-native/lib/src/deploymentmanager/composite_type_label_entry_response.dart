// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Label object for CompositeTypes
class CompositeTypeLabelEntryResponse {
  /// Key of the label
  final pulumi.Input<String> key;
  /// Value of the label
  final pulumi.Input<String> value;

  /// Creates a new [CompositeTypeLabelEntryResponse].
  /// [key] Key of the label
  /// [value] Value of the label
  const CompositeTypeLabelEntryResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory CompositeTypeLabelEntryResponse.fromMap(Map<String, dynamic> map) {
    return CompositeTypeLabelEntryResponse(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
