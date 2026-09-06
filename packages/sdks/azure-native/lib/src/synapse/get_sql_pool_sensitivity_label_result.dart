// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSqlPoolSensitivityLabel.
class GetSqlPoolSensitivityLabelResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The column name.
  final String? columnName;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The information type.
  final String? informationType;
  /// The information type ID.
  final String? informationTypeId;
  /// Is sensitivity recommendation disabled. Applicable for recommended sensitivity label only. Specifies whether the sensitivity recommendation on this column is disabled (dismissed) or not.
  final bool? isDisabled;
  /// The label ID.
  final String? labelId;
  /// The label name.
  final String? labelName;
  /// managed by
  final String? managedBy;
  /// The name of the resource
  final String? name;
  final String? rank;
  /// The schema name.
  final String? schemaName;
  /// The table name.
  final String? tableName;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetSqlPoolSensitivityLabelResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [columnName] The column name.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [informationType] The information type.
  /// [informationTypeId] The information type ID.
  /// [isDisabled] Is sensitivity recommendation disabled. Applicable for recommended sensitivity label only. Specifies whether the sensitivity recommendation on this column is disabled (dismissed) or not.
  /// [labelId] The label ID.
  /// [labelName] The label name.
  /// [managedBy] managed by
  /// [name] The name of the resource
  /// [rank] Optional.
  /// [schemaName] The schema name.
  /// [tableName] The table name.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetSqlPoolSensitivityLabelResult({
    this.azureApiVersion,
    this.columnName,
    this.id,
    this.informationType,
    this.informationTypeId,
    this.isDisabled,
    this.labelId,
    this.labelName,
    this.managedBy,
    this.name,
    this.rank,
    this.schemaName,
    this.tableName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'columnName': ?columnName,
      'id': ?id,
      'informationType': ?informationType,
      'informationTypeId': ?informationTypeId,
      'isDisabled': ?isDisabled,
      'labelId': ?labelId,
      'labelName': ?labelName,
      'managedBy': ?managedBy,
      'name': ?name,
      'rank': ?rank,
      'schemaName': ?schemaName,
      'tableName': ?tableName,
      'type': ?type,
    };
  }

  factory GetSqlPoolSensitivityLabelResult.fromMap(Map<String, dynamic> map) {
    return GetSqlPoolSensitivityLabelResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      columnName: (() { final guardedValue = map['columnName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      informationType: (() { final guardedValue = map['informationType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      informationTypeId: (() { final guardedValue = map['informationTypeId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isDisabled: (() { final guardedValue = map['isDisabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      labelId: (() { final guardedValue = map['labelId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labelName: (() { final guardedValue = map['labelName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedBy: (() { final guardedValue = map['managedBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rank: (() { final guardedValue = map['rank']; if (guardedValue == null) return null; return guardedValue as String; })(),
      schemaName: (() { final guardedValue = map['schemaName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tableName: (() { final guardedValue = map['tableName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
