// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LogExplorerDatasetField {
  /// Whether the API includes this field in log ingest.
  final pulumi.Input<bool> enabled;
  /// Field name. Names are matched without regard to case.
  final pulumi.Input<String> name;

  /// Creates a new [LogExplorerDatasetField].
  /// [enabled] Whether the API includes this field in log ingest.
  /// [name] Field name. Names are matched without regard to case.
  const LogExplorerDatasetField({
    required this.enabled,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'name': name,
    };
  }

  factory LogExplorerDatasetField.fromMap(Map<String, dynamic> map) {
    return LogExplorerDatasetField(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
