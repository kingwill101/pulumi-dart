// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLogExplorerDatasetsResult {
  /// RFC3339 timestamp recording when the API created this dataset.
  final pulumi.Input<String> createdAt;
  /// Dataset type name (e.g. `httpRequests`).
  final pulumi.Input<String> dataset;
  /// Unique dataset ID.
  final pulumi.Input<String> datasetId;
  /// Whether deletion is blocked. Set to `false` before deleting the dataset.
  final pulumi.Input<bool> deletionProtection;
  /// Whether log ingest is currently active for this dataset.
  final pulumi.Input<bool> enabled;
  /// Unique dataset ID.
  final pulumi.Input<String> id;
  /// Public ID of the account or zone that owns this dataset.
  final pulumi.Input<String> objectId;
  /// Whether this dataset belongs to an account or a zone.
  /// Available values: "account", "zone".
  final pulumi.Input<String> objectType;
  /// RFC3339 timestamp recording when the API last updated this dataset.
  final pulumi.Input<String> updatedAt;

  /// Creates a new [GetLogExplorerDatasetsResult].
  /// [createdAt] RFC3339 timestamp recording when the API created this dataset.
  /// [dataset] Dataset type name (e.g. `httpRequests`).
  /// [datasetId] Unique dataset ID.
  /// [deletionProtection] Whether deletion is blocked. Set to `false` before deleting the dataset.
  /// [enabled] Whether log ingest is currently active for this dataset.
  /// [id] Unique dataset ID.
  /// [objectId] Public ID of the account or zone that owns this dataset.
  /// [objectType] Whether this dataset belongs to an account or a zone.
  /// [updatedAt] RFC3339 timestamp recording when the API last updated this dataset.
  const GetLogExplorerDatasetsResult({
    required this.createdAt,
    required this.dataset,
    required this.datasetId,
    required this.deletionProtection,
    required this.enabled,
    required this.id,
    required this.objectId,
    required this.objectType,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'dataset': dataset,
      'datasetId': datasetId,
      'deletionProtection': deletionProtection,
      'enabled': enabled,
      'id': id,
      'objectId': objectId,
      'objectType': objectType,
      'updatedAt': updatedAt,
    };
  }

  factory GetLogExplorerDatasetsResult.fromMap(Map<String, dynamic> map) {
    return GetLogExplorerDatasetsResult(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      dataset: pulumi.Input.fromValue(map['dataset'] as String),
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      deletionProtection: pulumi.Input.fromValue(map['deletionProtection'] as bool),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      objectId: pulumi.Input.fromValue(map['objectId'] as String),
      objectType: pulumi.Input.fromValue(map['objectType'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
    );
  }
}
