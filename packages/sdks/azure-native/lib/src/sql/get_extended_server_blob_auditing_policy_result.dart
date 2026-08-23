// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getExtendedServerBlobAuditingPolicy.
class GetExtendedServerBlobAuditingPolicyResult {
  /// Specifies the Actions-Groups and Actions to audit.
  ///
  /// The recommended set of action groups to use is the following combination - this will audit all the queries and stored procedures executed against the database, as well as successful and failed logins:
  ///
  /// BATCH_COMPLETED_GROUP,
  /// SUCCESSFUL_DATABASE_AUTHENTICATION_GROUP,
  /// FAILED_DATABASE_AUTHENTICATION_GROUP.
  ///
  /// This above combination is also the set that is configured by default when enabling auditing from the Azure portal.
  ///
  /// The supported action groups to audit are (note: choose only specific groups that cover your auditing needs. Using unnecessary groups could lead to very large quantities of audit records):
  ///
  /// APPLICATION_ROLE_CHANGE_PASSWORD_GROUP
  /// BACKUP_RESTORE_GROUP
  /// DATABASE_LOGOUT_GROUP
  /// DATABASE_OBJECT_CHANGE_GROUP
  /// DATABASE_OBJECT_OWNERSHIP_CHANGE_GROUP
  /// DATABASE_OBJECT_PERMISSION_CHANGE_GROUP
  /// DATABASE_OPERATION_GROUP
  /// DATABASE_PERMISSION_CHANGE_GROUP
  /// DATABASE_PRINCIPAL_CHANGE_GROUP
  /// DATABASE_PRINCIPAL_IMPERSONATION_GROUP
  /// DATABASE_ROLE_MEMBER_CHANGE_GROUP
  /// FAILED_DATABASE_AUTHENTICATION_GROUP
  /// SCHEMA_OBJECT_ACCESS_GROUP
  /// SCHEMA_OBJECT_CHANGE_GROUP
  /// SCHEMA_OBJECT_OWNERSHIP_CHANGE_GROUP
  /// SCHEMA_OBJECT_PERMISSION_CHANGE_GROUP
  /// SUCCESSFUL_DATABASE_AUTHENTICATION_GROUP
  /// USER_CHANGE_PASSWORD_GROUP
  /// BATCH_STARTED_GROUP
  /// BATCH_COMPLETED_GROUP
  /// DBCC_GROUP
  /// DATABASE_OWNERSHIP_CHANGE_GROUP
  /// DATABASE_CHANGE_GROUP
  /// LEDGER_OPERATION_GROUP
  ///
  /// These are groups that cover all sql statements and stored procedures executed against the database, and should not be used in combination with other groups as this will result in duplicate audit logs.
  ///
  /// For more information, see [Database-Level Audit Action Groups](https://docs.microsoft.com/en-us/sql/relational-databases/security/auditing/sql-server-audit-action-groups-and-actions#database-level-audit-action-groups).
  ///
  /// For Database auditing policy, specific Actions can also be specified (note that Actions cannot be specified for Server auditing policy). The supported actions to audit are:
  /// SELECT
  /// UPDATE
  /// INSERT
  /// DELETE
  /// EXECUTE
  /// RECEIVE
  /// REFERENCES
  ///
  /// The general form for defining an action to be audited is:
  /// {action} ON {object} BY {principal}
  ///
  /// Note that &lt;object&gt; in the above format can refer to an object like a table, view, or stored procedure, or an entire database or schema. For the latter cases, the forms DATABASE::{db_name} and SCHEMA::{schema_name} are used, respectively.
  ///
  /// For example:
  /// SELECT on dbo.myTable by public
  /// SELECT on DATABASE::myDatabase by public
  /// SELECT on SCHEMA::mySchema by public
  ///
  /// For more information, see [Database-Level Audit Actions](https://docs.microsoft.com/en-us/sql/relational-databases/security/auditing/sql-server-audit-action-groups-and-actions#database-level-audit-actions)
  final List<String>? auditActionsAndGroups;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource ID.
  final String id;
  /// Specifies whether audit events are sent to Azure Monitor.
  /// In order to send the events to Azure Monitor, specify 'State' as 'Enabled' and 'IsAzureMonitorTargetEnabled' as true.
  ///
  /// When using REST API to configure auditing, Diagnostic Settings with 'SQLSecurityAuditEvents' diagnostic logs category on the database should be also created.
  /// Note that for server level audit you should use the 'master' database as {databaseName}.
  ///
  /// Diagnostic Settings URI format:
  /// PUT https://management.azure.com/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Sql/servers/{serverName}/databases/{databaseName}/providers/microsoft.insights/diagnosticSettings/{settingsName}?api-version=2017-05-01-preview
  ///
  /// For more information, see [Diagnostic Settings REST API](https://go.microsoft.com/fwlink/?linkid=2033207)
  /// or [Diagnostic Settings PowerShell](https://go.microsoft.com/fwlink/?linkid=2033043)
  final bool? isAzureMonitorTargetEnabled;
  /// Specifies the state of devops audit. If state is Enabled, devops logs will be sent to Azure Monitor.
  /// In order to send the events to Azure Monitor, specify 'State' as 'Enabled', 'IsAzureMonitorTargetEnabled' as true and 'IsDevopsAuditEnabled' as true
  ///
  /// When using REST API to configure auditing, Diagnostic Settings with 'DevOpsOperationsAudit' diagnostic logs category on the master database should also be created.
  ///
  /// Diagnostic Settings URI format:
  /// PUT https://management.azure.com/subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Sql/servers/{serverName}/databases/master/providers/microsoft.insights/diagnosticSettings/{settingsName}?api-version=2017-05-01-preview
  ///
  /// For more information, see [Diagnostic Settings REST API](https://go.microsoft.com/fwlink/?linkid=2033207)
  /// or [Diagnostic Settings PowerShell](https://go.microsoft.com/fwlink/?linkid=2033043)
  final bool? isDevopsAuditEnabled;
  /// Specifies whether Managed Identity is used to access blob storage
  final bool? isManagedIdentityInUse;
  /// Specifies whether storageAccountAccessKey value is the storage's secondary key.
  final bool? isStorageSecondaryKeyInUse;
  /// Resource name.
  final String name;
  /// Specifies condition of where clause when creating an audit.
  final String? predicateExpression;
  /// Specifies the amount of time in milliseconds that can elapse before audit actions are forced to be processed.
  /// The default minimum value is 1000 (1 second). The maximum is 2,147,483,647.
  final int? queueDelayMs;
  /// Specifies the number of days to keep in the audit logs in the storage account.
  final int? retentionDays;
  /// Specifies the state of the audit. If state is Enabled, storageEndpoint or isAzureMonitorTargetEnabled are required.
  final String state;
  /// Specifies the blob storage subscription Id.
  final String? storageAccountSubscriptionId;
  /// Specifies the blob storage endpoint (e.g. https://MyAccount.blob.core.windows.net). If state is Enabled, storageEndpoint or isAzureMonitorTargetEnabled is required.
  final String? storageEndpoint;
  /// Resource type.
  final String type;

  /// Creates a new [GetExtendedServerBlobAuditingPolicyResult].
  /// [auditActionsAndGroups] Specifies the Actions-Groups and Actions to audit.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [isAzureMonitorTargetEnabled] Specifies whether audit events are sent to Azure Monitor.
  /// [isDevopsAuditEnabled] Specifies the state of devops audit. If state is Enabled, devops logs will be sent to Azure Monitor.
  /// [isManagedIdentityInUse] Specifies whether Managed Identity is used to access blob storage
  /// [isStorageSecondaryKeyInUse] Specifies whether storageAccountAccessKey value is the storage's secondary key.
  /// [name] Resource name.
  /// [predicateExpression] Specifies condition of where clause when creating an audit.
  /// [queueDelayMs] Specifies the amount of time in milliseconds that can elapse before audit actions are forced to be processed.
  /// [retentionDays] Specifies the number of days to keep in the audit logs in the storage account.
  /// [state] Specifies the state of the audit. If state is Enabled, storageEndpoint or isAzureMonitorTargetEnabled are required.
  /// [storageAccountSubscriptionId] Specifies the blob storage subscription Id.
  /// [storageEndpoint] Specifies the blob storage endpoint (e.g. https://MyAccount.blob.core.windows.net). If state is Enabled, storageEndpoint or isAzureMonitorTargetEnabled is required.
  /// [type] Resource type.
  const GetExtendedServerBlobAuditingPolicyResult({
    this.auditActionsAndGroups,
    required this.azureApiVersion,
    required this.id,
    this.isAzureMonitorTargetEnabled,
    this.isDevopsAuditEnabled,
    this.isManagedIdentityInUse,
    this.isStorageSecondaryKeyInUse,
    required this.name,
    this.predicateExpression,
    this.queueDelayMs,
    this.retentionDays,
    required this.state,
    this.storageAccountSubscriptionId,
    this.storageEndpoint,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditActionsAndGroups': ?auditActionsAndGroups,
      'azureApiVersion': azureApiVersion,
      'id': id,
      'isAzureMonitorTargetEnabled': ?isAzureMonitorTargetEnabled,
      'isDevopsAuditEnabled': ?isDevopsAuditEnabled,
      'isManagedIdentityInUse': ?isManagedIdentityInUse,
      'isStorageSecondaryKeyInUse': ?isStorageSecondaryKeyInUse,
      'name': name,
      'predicateExpression': ?predicateExpression,
      'queueDelayMs': ?queueDelayMs,
      'retentionDays': ?retentionDays,
      'state': state,
      'storageAccountSubscriptionId': ?storageAccountSubscriptionId,
      'storageEndpoint': ?storageEndpoint,
      'type': type,
    };
  }

  factory GetExtendedServerBlobAuditingPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetExtendedServerBlobAuditingPolicyResult(
      auditActionsAndGroups: (() { final guardedValue = map['auditActionsAndGroups']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      isAzureMonitorTargetEnabled: (() { final guardedValue = map['isAzureMonitorTargetEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isDevopsAuditEnabled: (() { final guardedValue = map['isDevopsAuditEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isManagedIdentityInUse: (() { final guardedValue = map['isManagedIdentityInUse']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isStorageSecondaryKeyInUse: (() { final guardedValue = map['isStorageSecondaryKeyInUse']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: map['name'] as String,
      predicateExpression: (() { final guardedValue = map['predicateExpression']; if (guardedValue == null) return null; return guardedValue as String; })(),
      queueDelayMs: (() { final guardedValue = map['queueDelayMs']; if (guardedValue == null) return null; return guardedValue as int; })(),
      retentionDays: (() { final guardedValue = map['retentionDays']; if (guardedValue == null) return null; return guardedValue as int; })(),
      state: map['state'] as String,
      storageAccountSubscriptionId: (() { final guardedValue = map['storageAccountSubscriptionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageEndpoint: (() { final guardedValue = map['storageEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}
