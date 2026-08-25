// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig {
  /// (Output)
  /// Resource name of the collection the data store belongs to.
  final pulumi.Input<String?>? collection;
  /// (Output)
  /// Display name of the collection the data store belongs to.
  final pulumi.Input<String?>? collectionDisplayName;
  /// (Output)
  /// The name of the data source.
  /// Example: `salesforce`, `jira`, `confluence`, `bigquery`.
  final pulumi.Input<String?>? dataSource;

  /// Creates a new [AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig].
  /// [collection] (Output)
  /// [collectionDisplayName] (Output)
  /// [dataSource] (Output)
  const AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig({
    this.collection,
    this.collectionDisplayName,
    this.dataSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collection': ?collection,
      'collectionDisplayName': ?collectionDisplayName,
      'dataSource': ?dataSource,
    };
  }

  factory AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig(
      collection: (() { final guardedValue = map['collection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      collectionDisplayName: (() { final guardedValue = map['collectionDisplayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataSource: (() { final guardedValue = map['dataSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
