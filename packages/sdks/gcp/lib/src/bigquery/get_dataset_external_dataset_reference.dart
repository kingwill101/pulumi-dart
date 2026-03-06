// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatasetExternalDatasetReference {
  /// The connection id that is used to access the externalSource.
  /// Format: projects/{projectId}/locations/{locationId}/connections/{connectionId}
  final pulumi.Input<String> connection;
  /// External source that backs this dataset.
  final pulumi.Input<String> externalSource;

  /// Creates a new [GetDatasetExternalDatasetReference].
  /// [connection] The connection id that is used to access the externalSource.
  /// [externalSource] External source that backs this dataset.
  const GetDatasetExternalDatasetReference({
    required this.connection,
    required this.externalSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connection': connection,
      'externalSource': externalSource,
    };
  }

  factory GetDatasetExternalDatasetReference.fromMap(Map<String, dynamic> map) {
    return GetDatasetExternalDatasetReference(
      connection: pulumi.Input.fromValue(map['connection'] as String),
      externalSource: pulumi.Input.fromValue(map['externalSource'] as String),
    );
  }
}

