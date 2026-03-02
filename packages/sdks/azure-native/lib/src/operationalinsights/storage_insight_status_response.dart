// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The status of the storage insight.
class StorageInsightStatusResponse {
  /// Description of the state of the storage insight.
  final pulumi.Input<String>? description;
  /// The state of the storage insight connection to the workspace
  final pulumi.Input<String> state;

  /// Creates a new [StorageInsightStatusResponse].
  /// [description] Description of the state of the storage insight.
  /// [state] The state of the storage insight connection to the workspace
  StorageInsightStatusResponse({
    this.description,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'state': state,
    };
  }

  factory StorageInsightStatusResponse.fromMap(Map<String, dynamic> map) {
    return StorageInsightStatusResponse(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      state: (map['state'] as String).input(),
    );
  }
}

