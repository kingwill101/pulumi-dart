// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_auditing_policy_state.dart';

/// {@template pulumi_sql_extended_database_blob_auditing_policy_args_doc}
/// The set of arguments for ExtendedDatabaseBlobAuditingPolicy.
/// {@endtemplate}
/// {@macro pulumi_sql_extended_database_blob_auditing_policy_args_doc}
class ExtendedDatabaseBlobAuditingPolicyArgs {
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
  final pulumi.Input<List<String>?>? auditActionsAndGroups;
  /// The name of the blob auditing policy.
  final pulumi.Input<String?>? blobAuditingPolicyName;
  /// The name of the database.
  final pulumi.Input<String> databaseName;
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
  final pulumi.Input<bool?>? isAzureMonitorTargetEnabled;
  /// Specifies whether Managed Identity is used to access blob storage
  final pulumi.Input<bool?>? isManagedIdentityInUse;
  /// Specifies whether storageAccountAccessKey value is the storage's secondary key.
  final pulumi.Input<bool?>? isStorageSecondaryKeyInUse;
  /// Specifies condition of where clause when creating an audit.
  final pulumi.Input<String?>? predicateExpression;
  /// Specifies the amount of time in milliseconds that can elapse before audit actions are forced to be processed.
  /// The default minimum value is 1000 (1 second). The maximum is 2,147,483,647.
  final pulumi.Input<int?>? queueDelayMs;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the number of days to keep in the audit logs in the storage account.
  final pulumi.Input<int?>? retentionDays;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// Specifies the state of the audit. If state is Enabled, storageEndpoint or isAzureMonitorTargetEnabled are required.
  final pulumi.Input<BlobAuditingPolicyState> state;
  /// Specifies the identifier key of the auditing storage account.
  /// If state is Enabled and storageEndpoint is specified, not specifying the storageAccountAccessKey will use SQL server system-assigned managed identity to access the storage.
  /// Prerequisites for using managed identity authentication:
  /// 1. Assign SQL Server a system-assigned managed identity in Azure Active Directory (AAD).
  /// 2. Grant SQL Server identity access to the storage account by adding 'Storage Blob Data Contributor' RBAC role to the server identity.
  /// For more information, see [Auditing to storage using Managed Identity authentication](https://go.microsoft.com/fwlink/?linkid=2114355)
  final pulumi.Input<String?>? storageAccountAccessKey;
  /// Specifies the blob storage subscription Id.
  final pulumi.Input<String?>? storageAccountSubscriptionId;
  /// Specifies the blob storage endpoint (e.g. https://MyAccount.blob.core.windows.net). If state is Enabled, storageEndpoint or isAzureMonitorTargetEnabled is required.
  final pulumi.Input<String?>? storageEndpoint;

  /// Creates a new [ExtendedDatabaseBlobAuditingPolicyArgs].
  /// [auditActionsAndGroups] Specifies the Actions-Groups and Actions to audit.
  /// [blobAuditingPolicyName] The name of the blob auditing policy.
  /// [databaseName] The name of the database.
  /// [isAzureMonitorTargetEnabled] Specifies whether audit events are sent to Azure Monitor.
  /// [isManagedIdentityInUse] Specifies whether Managed Identity is used to access blob storage
  /// [isStorageSecondaryKeyInUse] Specifies whether storageAccountAccessKey value is the storage's secondary key.
  /// [predicateExpression] Specifies condition of where clause when creating an audit.
  /// [queueDelayMs] Specifies the amount of time in milliseconds that can elapse before audit actions are forced to be processed.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [retentionDays] Specifies the number of days to keep in the audit logs in the storage account.
  /// [serverName] The name of the server.
  /// [state] Specifies the state of the audit. If state is Enabled, storageEndpoint or isAzureMonitorTargetEnabled are required.
  /// [storageAccountAccessKey] Specifies the identifier key of the auditing storage account.
  /// [storageAccountSubscriptionId] Specifies the blob storage subscription Id.
  /// [storageEndpoint] Specifies the blob storage endpoint (e.g. https://MyAccount.blob.core.windows.net). If state is Enabled, storageEndpoint or isAzureMonitorTargetEnabled is required.
  const ExtendedDatabaseBlobAuditingPolicyArgs({
    this.auditActionsAndGroups,
    this.blobAuditingPolicyName,
    required this.databaseName,
    this.isAzureMonitorTargetEnabled,
    this.isManagedIdentityInUse,
    this.isStorageSecondaryKeyInUse,
    this.predicateExpression,
    this.queueDelayMs,
    required this.resourceGroupName,
    this.retentionDays,
    required this.serverName,
    required this.state,
    this.storageAccountAccessKey,
    this.storageAccountSubscriptionId,
    this.storageEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditActionsAndGroups': ?auditActionsAndGroups,
      'blobAuditingPolicyName': ?blobAuditingPolicyName,
      'databaseName': databaseName,
      'isAzureMonitorTargetEnabled': ?isAzureMonitorTargetEnabled,
      'isManagedIdentityInUse': ?isManagedIdentityInUse,
      'isStorageSecondaryKeyInUse': ?isStorageSecondaryKeyInUse,
      'predicateExpression': ?predicateExpression,
      'queueDelayMs': ?queueDelayMs,
      'resourceGroupName': resourceGroupName,
      'retentionDays': ?retentionDays,
      'serverName': serverName,
      'state': pulumi.Input.mapInputValue<BlobAuditingPolicyState, String>(state, (value) => value.wireValue),
      'storageAccountAccessKey': ?storageAccountAccessKey,
      'storageAccountSubscriptionId': ?storageAccountSubscriptionId,
      'storageEndpoint': ?storageEndpoint,
    };
  }

  factory ExtendedDatabaseBlobAuditingPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ExtendedDatabaseBlobAuditingPolicyArgs(
      auditActionsAndGroups: (() { final guardedValue = map['auditActionsAndGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      blobAuditingPolicyName: (() { final guardedValue = map['blobAuditingPolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      isAzureMonitorTargetEnabled: (() { final guardedValue = map['isAzureMonitorTargetEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isManagedIdentityInUse: (() { final guardedValue = map['isManagedIdentityInUse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isStorageSecondaryKeyInUse: (() { final guardedValue = map['isStorageSecondaryKeyInUse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      predicateExpression: (() { final guardedValue = map['predicateExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queueDelayMs: (() { final guardedValue = map['queueDelayMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      retentionDays: (() { final guardedValue = map['retentionDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      state: pulumi.Input.fromValue(BlobAuditingPolicyState.fromValue(map['state']! as String)),
      storageAccountAccessKey: (() { final guardedValue = map['storageAccountAccessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountSubscriptionId: (() { final guardedValue = map['storageAccountSubscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageEndpoint: (() { final guardedValue = map['storageEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
