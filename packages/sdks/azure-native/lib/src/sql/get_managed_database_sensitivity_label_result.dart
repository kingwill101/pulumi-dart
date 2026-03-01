// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getManagedDatabaseSensitivityLabel.
class GetManagedDatabaseSensitivityLabelResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  final String? clientClassificationSource;
  /// The column name.
  final String columnName;
  /// Resource ID.
  final String id;
  /// The information type.
  final String? informationType;
  /// The information type ID.
  final String? informationTypeId;
  /// Is sensitivity recommendation disabled. Applicable for recommended sensitivity label only. Specifies whether the sensitivity recommendation on this column is disabled (dismissed) or not.
  final bool isDisabled;
  /// The label ID.
  final String? labelId;
  /// The label name.
  final String? labelName;
  /// Resource that manages the sensitivity label.
  final String managedBy;
  /// Resource name.
  final String name;
  final String? rank;
  /// The schema name.
  final String schemaName;
  /// The table name.
  final String tableName;
  /// Resource type.
  final String type;

  /// Creates a new [GetManagedDatabaseSensitivityLabelResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clientClassificationSource] Optional.
  /// [columnName] The column name.
  /// [id] Resource ID.
  /// [informationType] The information type.
  /// [informationTypeId] The information type ID.
  /// [isDisabled] Is sensitivity recommendation disabled. Applicable for recommended sensitivity label only. Specifies whether the sensitivity recommendation on this column is disabled (dismissed) or not.
  /// [labelId] The label ID.
  /// [labelName] The label name.
  /// [managedBy] Resource that manages the sensitivity label.
  /// [name] Resource name.
  /// [rank] Optional.
  /// [schemaName] The schema name.
  /// [tableName] The table name.
  /// [type] Resource type.
  GetManagedDatabaseSensitivityLabelResult({
    required this.azureApiVersion,
    this.clientClassificationSource,
    required this.columnName,
    required this.id,
    this.informationType,
    this.informationTypeId,
    required this.isDisabled,
    this.labelId,
    this.labelName,
    required this.managedBy,
    required this.name,
    this.rank,
    required this.schemaName,
    required this.tableName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'clientClassificationSource': ?clientClassificationSource,
      'columnName': columnName,
      'id': id,
      'informationType': ?informationType,
      'informationTypeId': ?informationTypeId,
      'isDisabled': isDisabled,
      'labelId': ?labelId,
      'labelName': ?labelName,
      'managedBy': managedBy,
      'name': name,
      'rank': ?rank,
      'schemaName': schemaName,
      'tableName': tableName,
      'type': type,
    };
  }

  factory GetManagedDatabaseSensitivityLabelResult.fromMap(Map<String, dynamic> map) {
    return GetManagedDatabaseSensitivityLabelResult(
      azureApiVersion: map['azureApiVersion'] as String,
      clientClassificationSource: map['clientClassificationSource'] == null ? null : map['clientClassificationSource'] as String,
      columnName: map['columnName'] as String,
      id: map['id'] as String,
      informationType: map['informationType'] == null ? null : map['informationType'] as String,
      informationTypeId: map['informationTypeId'] == null ? null : map['informationTypeId'] as String,
      isDisabled: map['isDisabled'] as bool,
      labelId: map['labelId'] == null ? null : map['labelId'] as String,
      labelName: map['labelName'] == null ? null : map['labelName'] as String,
      managedBy: map['managedBy'] as String,
      name: map['name'] as String,
      rank: map['rank'] == null ? null : map['rank'] as String,
      schemaName: map['schemaName'] as String,
      tableName: map['tableName'] as String,
      type: map['type'] as String,
    );
  }
}

