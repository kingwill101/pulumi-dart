// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDatabaseThreatDetectionPolicy.
class GetDatabaseThreatDetectionPolicyResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Specifies the semicolon-separated list of alerts that are disabled, or empty string to disable no alerts. Possible values: Sql_Injection; Sql_Injection_Vulnerability; Access_Anomaly; Data_Exfiltration; Unsafe_Action.
  final String? disabledAlerts;
  /// Specifies that the alert is sent to the account administrators.
  final String? emailAccountAdmins;
  /// Specifies the semicolon-separated list of e-mail addresses to which the alert is sent.
  final String? emailAddresses;
  /// Resource ID.
  final String id;
  /// Resource kind.
  final String kind;
  /// The geo-location where the resource lives
  final String? location;
  /// Resource name.
  final String name;
  /// Specifies the number of days to keep in the Threat Detection audit logs.
  final int? retentionDays;
  /// Specifies the state of the policy. If state is Enabled, storageEndpoint and storageAccountAccessKey are required.
  final String state;
  /// Specifies the blob storage endpoint (e.g. https://MyAccount.blob.core.windows.net). This blob storage will hold all Threat Detection audit logs. If state is Enabled, storageEndpoint is required.
  final String? storageEndpoint;
  /// Resource type.
  final String type;
  /// Specifies whether to use the default server policy.
  final String? useServerDefault;

  /// Creates a new [GetDatabaseThreatDetectionPolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [disabledAlerts] Specifies the semicolon-separated list of alerts that are disabled, or empty string to disable no alerts. Possible values: Sql_Injection; Sql_Injection_Vulnerability; Access_Anomaly; Data_Exfiltration; Unsafe_Action.
  /// [emailAccountAdmins] Specifies that the alert is sent to the account administrators.
  /// [emailAddresses] Specifies the semicolon-separated list of e-mail addresses to which the alert is sent.
  /// [id] Resource ID.
  /// [kind] Resource kind.
  /// [location] The geo-location where the resource lives
  /// [name] Resource name.
  /// [retentionDays] Specifies the number of days to keep in the Threat Detection audit logs.
  /// [state] Specifies the state of the policy. If state is Enabled, storageEndpoint and storageAccountAccessKey are required.
  /// [storageEndpoint] Specifies the blob storage endpoint (e.g. https://MyAccount.blob.core.windows.net). This blob storage will hold all Threat Detection audit logs. If state is Enabled, storageEndpoint is required.
  /// [type] Resource type.
  /// [useServerDefault] Specifies whether to use the default server policy.
  const GetDatabaseThreatDetectionPolicyResult({
    required this.azureApiVersion,
    this.disabledAlerts,
    this.emailAccountAdmins,
    this.emailAddresses,
    required this.id,
    required this.kind,
    this.location,
    required this.name,
    this.retentionDays,
    required this.state,
    this.storageEndpoint,
    required this.type,
    this.useServerDefault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'disabledAlerts': ?disabledAlerts,
      'emailAccountAdmins': ?emailAccountAdmins,
      'emailAddresses': ?emailAddresses,
      'id': id,
      'kind': kind,
      'location': ?location,
      'name': name,
      'retentionDays': ?retentionDays,
      'state': state,
      'storageEndpoint': ?storageEndpoint,
      'type': type,
      'useServerDefault': ?useServerDefault,
    };
  }

  factory GetDatabaseThreatDetectionPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseThreatDetectionPolicyResult(
      azureApiVersion: map['azureApiVersion'] as String,
      disabledAlerts: (() { final guardedValue = map['disabledAlerts']; if (guardedValue == null) return null; return guardedValue as String; })(),
      emailAccountAdmins: (() { final guardedValue = map['emailAccountAdmins']; if (guardedValue == null) return null; return guardedValue as String; })(),
      emailAddresses: (() { final guardedValue = map['emailAddresses']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      kind: map['kind'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      retentionDays: (() { final guardedValue = map['retentionDays']; if (guardedValue == null) return null; return guardedValue as int; })(),
      state: map['state'] as String,
      storageEndpoint: (() { final guardedValue = map['storageEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
      useServerDefault: (() { final guardedValue = map['useServerDefault']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

