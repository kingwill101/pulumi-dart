// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getDatabaseSecurityAlertPolicy.
class GetDatabaseSecurityAlertPolicyResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Specifies the UTC creation time of the policy.
  final String creationTime;
  /// Specifies an array of alerts that are disabled. Allowed values are: Sql_Injection, Sql_Injection_Vulnerability, Access_Anomaly, Data_Exfiltration, Unsafe_Action, Brute_Force
  final List<String>? disabledAlerts;
  /// Specifies that the alert is sent to the account administrators.
  final bool? emailAccountAdmins;
  /// Specifies an array of e-mail addresses to which the alert is sent.
  final List<String>? emailAddresses;
  /// Resource ID.
  final String id;
  /// Resource name.
  final String name;
  /// Specifies the number of days to keep in the Threat Detection audit logs.
  final int? retentionDays;
  /// Specifies the state of the policy, whether it is enabled or disabled or a policy has not been applied yet on the specific database.
  final String state;
  /// Specifies the identifier key of the Threat Detection audit storage account.
  final String? storageAccountAccessKey;
  /// Specifies the blob storage endpoint (e.g. https://MyAccount.blob.core.windows.net). This blob storage will hold all Threat Detection audit logs.
  final String? storageEndpoint;
  /// SystemData of SecurityAlertPolicyResource.
  final SystemDataResponse systemData;
  /// Resource type.
  final String type;

  /// Creates a new [GetDatabaseSecurityAlertPolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationTime] Specifies the UTC creation time of the policy.
  /// [disabledAlerts] Specifies an array of alerts that are disabled. Allowed values are: Sql_Injection, Sql_Injection_Vulnerability, Access_Anomaly, Data_Exfiltration, Unsafe_Action, Brute_Force
  /// [emailAccountAdmins] Specifies that the alert is sent to the account administrators.
  /// [emailAddresses] Specifies an array of e-mail addresses to which the alert is sent.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [retentionDays] Specifies the number of days to keep in the Threat Detection audit logs.
  /// [state] Specifies the state of the policy, whether it is enabled or disabled or a policy has not been applied yet on the specific database.
  /// [storageAccountAccessKey] Specifies the identifier key of the Threat Detection audit storage account.
  /// [storageEndpoint] Specifies the blob storage endpoint (e.g. https://MyAccount.blob.core.windows.net). This blob storage will hold all Threat Detection audit logs.
  /// [systemData] SystemData of SecurityAlertPolicyResource.
  /// [type] Resource type.
  const GetDatabaseSecurityAlertPolicyResult({
    required this.azureApiVersion,
    required this.creationTime,
    this.disabledAlerts,
    this.emailAccountAdmins,
    this.emailAddresses,
    required this.id,
    required this.name,
    this.retentionDays,
    required this.state,
    this.storageAccountAccessKey,
    this.storageEndpoint,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'creationTime': creationTime,
      'disabledAlerts': ?disabledAlerts,
      'emailAccountAdmins': ?emailAccountAdmins,
      'emailAddresses': ?emailAddresses,
      'id': id,
      'name': name,
      'retentionDays': ?retentionDays,
      'state': state,
      'storageAccountAccessKey': ?storageAccountAccessKey,
      'storageEndpoint': ?storageEndpoint,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetDatabaseSecurityAlertPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseSecurityAlertPolicyResult(
      azureApiVersion: map['azureApiVersion'] as String,
      creationTime: map['creationTime'] as String,
      disabledAlerts: (() { final guardedValue = map['disabledAlerts']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      emailAccountAdmins: (() { final guardedValue = map['emailAccountAdmins']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      emailAddresses: (() { final guardedValue = map['emailAddresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: map['id'] as String,
      name: map['name'] as String,
      retentionDays: (() { final guardedValue = map['retentionDays']; if (guardedValue == null) return null; return guardedValue as int; })(),
      state: map['state'] as String,
      storageAccountAccessKey: (() { final guardedValue = map['storageAccountAccessKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageEndpoint: (() { final guardedValue = map['storageEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

