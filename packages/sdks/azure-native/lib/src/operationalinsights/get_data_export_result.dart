// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDataExport.
class GetDataExportResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The latest data export rule modification time.
  final String? createdDate;
  /// The data export rule ID.
  final String? dataExportId;
  /// Active when enabled.
  final bool? enable;
  /// Optional. Allows to define an Event Hub name. Not applicable when destination is Storage Account.
  final String? eventHubName;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Date and time when the export was last modified.
  final String? lastModifiedDate;
  /// The name of the resource
  final String name;
  /// The destination resource ID. This can be copied from the Properties entry of the destination resource in Azure.
  final String resourceId;
  /// An array of tables to export, for example: [“Heartbeat, SecurityEvent”].
  final List<String> tableNames;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetDataExportResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdDate] The latest data export rule modification time.
  /// [dataExportId] The data export rule ID.
  /// [enable] Active when enabled.
  /// [eventHubName] Optional. Allows to define an Event Hub name. Not applicable when destination is Storage Account.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [lastModifiedDate] Date and time when the export was last modified.
  /// [name] The name of the resource
  /// [resourceId] The destination resource ID. This can be copied from the Properties entry of the destination resource in Azure.
  /// [tableNames] An array of tables to export, for example: [“Heartbeat, SecurityEvent”].
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetDataExportResult({
    required this.azureApiVersion,
    this.createdDate,
    this.dataExportId,
    this.enable,
    this.eventHubName,
    required this.id,
    this.lastModifiedDate,
    required this.name,
    required this.resourceId,
    required this.tableNames,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'createdDate': ?createdDate,
      'dataExportId': ?dataExportId,
      'enable': ?enable,
      'eventHubName': ?eventHubName,
      'id': id,
      'lastModifiedDate': ?lastModifiedDate,
      'name': name,
      'resourceId': resourceId,
      'tableNames': tableNames,
      'type': type,
    };
  }

  factory GetDataExportResult.fromMap(Map<String, dynamic> map) {
    return GetDataExportResult(
      azureApiVersion: map['azureApiVersion'] as String,
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataExportId: (() { final guardedValue = map['dataExportId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      eventHubName: (() { final guardedValue = map['eventHubName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      lastModifiedDate: (() { final guardedValue = map['lastModifiedDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      resourceId: map['resourceId'] as String,
      tableNames: (map['tableNames'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}

