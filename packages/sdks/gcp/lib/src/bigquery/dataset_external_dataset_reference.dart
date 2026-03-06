// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatasetExternalDatasetReference {
  /// The connection id that is used to access the externalSource.
  /// Format: projects/{projectId}/locations/{locationId}/connections/{connectionId}
  final pulumi.Input<String> connection;
  /// External source that backs this dataset.
  final pulumi.Input<String> externalSource;

  /// Creates a new [DatasetExternalDatasetReference].
  /// [connection] The connection id that is used to access the externalSource.
  /// [externalSource] External source that backs this dataset.
  const DatasetExternalDatasetReference({
    required this.connection,
    required this.externalSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connection': connection,
      'externalSource': externalSource,
    };
  }

  factory DatasetExternalDatasetReference.fromMap(Map<String, dynamic> map) {
    return DatasetExternalDatasetReference(
      connection: pulumi.Input.fromValue(map['connection'] as String),
      externalSource: pulumi.Input.fromValue(map['externalSource'] as String),
    );
  }
}

