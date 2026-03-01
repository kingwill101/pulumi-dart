// ignore_for_file: unused_element, unnecessary_cast


class GetDatasetExternalDatasetReference {
  /// The connection id that is used to access the externalSource.
  /// Format: projects/{projectId}/locations/{locationId}/connections/{connectionId}
  final String connection;
  /// External source that backs this dataset.
  final String externalSource;

  /// Creates a new [GetDatasetExternalDatasetReference].
  /// [connection] The connection id that is used to access the externalSource.
  /// [externalSource] External source that backs this dataset.
  GetDatasetExternalDatasetReference({
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
      connection: map['connection'] as String,
      externalSource: map['externalSource'] as String,
    );
  }
}

