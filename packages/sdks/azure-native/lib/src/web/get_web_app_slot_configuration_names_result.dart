// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWebAppSlotConfigurationNames.
class GetWebAppSlotConfigurationNamesResult {
  /// List of application settings names.
  final List<String>? appSettingNames;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// List of external Azure storage account identifiers.
  final List<String>? azureStorageConfigNames;
  /// List of connection string names.
  final List<String>? connectionStringNames;
  /// Resource Id.
  final String id;
  /// Kind of resource.
  final String? kind;
  /// Resource Name.
  final String name;
  /// Resource type.
  final String type;

  /// Creates a new [GetWebAppSlotConfigurationNamesResult].
  /// [appSettingNames] List of application settings names.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [azureStorageConfigNames] List of external Azure storage account identifiers.
  /// [connectionStringNames] List of connection string names.
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [type] Resource type.
  GetWebAppSlotConfigurationNamesResult({
    this.appSettingNames,
    required this.azureApiVersion,
    this.azureStorageConfigNames,
    this.connectionStringNames,
    required this.id,
    this.kind,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appSettingNames': ?appSettingNames,
      'azureApiVersion': azureApiVersion,
      'azureStorageConfigNames': ?azureStorageConfigNames,
      'connectionStringNames': ?connectionStringNames,
      'id': id,
      'kind': ?kind,
      'name': name,
      'type': type,
    };
  }

  factory GetWebAppSlotConfigurationNamesResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppSlotConfigurationNamesResult(
      appSettingNames: map['appSettingNames'] == null ? null : (map['appSettingNames']! as List).cast<String>(),
      azureApiVersion: map['azureApiVersion'] as String,
      azureStorageConfigNames: map['azureStorageConfigNames'] == null ? null : (map['azureStorageConfigNames']! as List).cast<String>(),
      connectionStringNames: map['connectionStringNames'] == null ? null : (map['connectionStringNames']! as List).cast<String>(),
      id: map['id'] as String,
      kind: map['kind'] == null ? null : map['kind']! as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

