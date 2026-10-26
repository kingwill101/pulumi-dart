// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDatasetVersion.
class GetDatasetVersionAiplatformV1beta1Result {
  /// Name of the associated BigQuery dataset.
  final String? bigQueryDatasetName;
  /// Timestamp when this DatasetVersion was created.
  final String? createTime;
  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final String? etag;
  /// The resource name of the DatasetVersion.
  final String? name;
  /// Timestamp when this DatasetVersion was last updated.
  final String? updateTime;

  /// Creates a new [GetDatasetVersionAiplatformV1beta1Result].
  /// [bigQueryDatasetName] Name of the associated BigQuery dataset.
  /// [createTime] Timestamp when this DatasetVersion was created.
  /// [etag] Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [name] The resource name of the DatasetVersion.
  /// [updateTime] Timestamp when this DatasetVersion was last updated.
  const GetDatasetVersionAiplatformV1beta1Result({
    this.bigQueryDatasetName,
    this.createTime,
    this.etag,
    this.name,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigQueryDatasetName': ?bigQueryDatasetName,
      'createTime': ?createTime,
      'etag': ?etag,
      'name': ?name,
      'updateTime': ?updateTime,
    };
  }

  factory GetDatasetVersionAiplatformV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetDatasetVersionAiplatformV1beta1Result(
      bigQueryDatasetName: (() { final guardedValue = map['bigQueryDatasetName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
