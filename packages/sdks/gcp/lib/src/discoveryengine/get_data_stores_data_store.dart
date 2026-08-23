// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataStoresDataStore {
  /// The content configuration of the data store (e.g. `NO_CONTENT`, `CONTENT_REQUIRED`, `PUBLIC_WEBSITE`).
  final pulumi.Input<String> contentConfig;
  /// The timestamp of when the data store was created.
  final pulumi.Input<String> createTime;
  /// The unique id of the data store.
  final pulumi.Input<String> dataStoreId;
  /// The id of the default schema associated with the data store.
  final pulumi.Input<String> defaultSchemaId;
  /// The display name of the data store.
  final pulumi.Input<String> displayName;
  /// The industry vertical of the data store (e.g. `GENERIC`, `MEDIA`, `HEALTHCARE_FHIR`).
  final pulumi.Input<String> industryVertical;
  /// The full resource name of the data store.
  final pulumi.Input<String> name;
  /// The solutions the data store enrolls (e.g. `SOLUTION_TYPE_SEARCH`, `SOLUTION_TYPE_CHAT`, `SOLUTION_TYPE_RECOMMENDATION`).
  final pulumi.Input<List<String>> solutionTypes;

  /// Creates a new [GetDataStoresDataStore].
  /// [contentConfig] The content configuration of the data store (e.g. `NO_CONTENT`, `CONTENT_REQUIRED`, `PUBLIC_WEBSITE`).
  /// [createTime] The timestamp of when the data store was created.
  /// [dataStoreId] The unique id of the data store.
  /// [defaultSchemaId] The id of the default schema associated with the data store.
  /// [displayName] The display name of the data store.
  /// [industryVertical] The industry vertical of the data store (e.g. `GENERIC`, `MEDIA`, `HEALTHCARE_FHIR`).
  /// [name] The full resource name of the data store.
  /// [solutionTypes] The solutions the data store enrolls (e.g. `SOLUTION_TYPE_SEARCH`, `SOLUTION_TYPE_CHAT`, `SOLUTION_TYPE_RECOMMENDATION`).
  const GetDataStoresDataStore({
    required this.contentConfig,
    required this.createTime,
    required this.dataStoreId,
    required this.defaultSchemaId,
    required this.displayName,
    required this.industryVertical,
    required this.name,
    required this.solutionTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentConfig': contentConfig,
      'createTime': createTime,
      'dataStoreId': dataStoreId,
      'defaultSchemaId': defaultSchemaId,
      'displayName': displayName,
      'industryVertical': industryVertical,
      'name': name,
      'solutionTypes': solutionTypes,
    };
  }

  factory GetDataStoresDataStore.fromMap(Map<String, dynamic> map) {
    return GetDataStoresDataStore(
      contentConfig: pulumi.Input.fromValue(map['contentConfig'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      dataStoreId: pulumi.Input.fromValue(map['dataStoreId'] as String),
      defaultSchemaId: pulumi.Input.fromValue(map['defaultSchemaId'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      industryVertical: pulumi.Input.fromValue(map['industryVertical'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      solutionTypes: pulumi.Input.fromValue((map['solutionTypes'] as List).cast<String>()),
    );
  }
}
