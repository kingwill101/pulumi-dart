// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig {
  /// Resource name of the collection the data store belongs to.
  final pulumi.Input<String>? collection;
  /// Display name of the collection the data store belongs to.
  final pulumi.Input<String>? collectionDisplayName;
  /// The name of the data source.
  /// Example: 'salesforce', 'jira', 'confluence', 'bigquery'.
  final pulumi.Input<String>? dataSource;

  /// Creates a new [ToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig].
  /// [collection] Resource name of the collection the data store belongs to.
  /// [collectionDisplayName] Display name of the collection the data store belongs to.
  /// [dataSource] The name of the data source.
  const ToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig({
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

  factory ToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig.fromMap(Map<String, dynamic> map) {
    return ToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig(
      collection: (() { final guardedValue = map['collection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      collectionDisplayName: (() { final guardedValue = map['collectionDisplayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataSource: (() { final guardedValue = map['dataSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
