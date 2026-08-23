// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataExportIngestionLabel {
  /// The key.
  final pulumi.Input<String> key;
  /// The value.
  final pulumi.Input<String> value;

  /// Creates a new [DataExportIngestionLabel].
  /// [key] The key.
  /// [value] The value.
  const DataExportIngestionLabel({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory DataExportIngestionLabel.fromMap(Map<String, dynamic> map) {
    return DataExportIngestionLabel(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
