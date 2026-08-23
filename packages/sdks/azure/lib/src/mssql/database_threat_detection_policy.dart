// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseThreatDetectionPolicy {
  /// Specifies a list of alerts which should be disabled. Possible values include `Access_Anomaly`, `Sql_Injection` and `Sql_Injection_Vulnerability`.
  final pulumi.Input<List<String>>? disabledAlerts;
  /// Should the account administrators be emailed when this alert is triggered? Possible values are `Enabled` or `Disabled`. Defaults to `Disabled`.
  final pulumi.Input<String>? emailAccountAdmins;
  /// A list of email addresses which alerts should be sent to.
  final pulumi.Input<List<String>>? emailAddresses;
  /// Specifies the number of days to keep in the Threat Detection audit logs.
  final pulumi.Input<int>? retentionDays;
  /// The State of the Policy. Possible values are `Enabled` or `Disabled`. Defaults to `Disabled`.
  final pulumi.Input<String>? state;
  /// Specifies the identifier key of the Threat Detection audit storage account. Required if `state` is `Enabled`.
  final pulumi.Input<String>? storageAccountAccessKey;
  /// Specifies the blob storage endpoint (e.g. &lt;https://example.blob.core.windows.net&gt;). This blob storage will hold all Threat Detection audit logs. Required if `state` is `Enabled`.
  final pulumi.Input<String>? storageEndpoint;

  /// Creates a new [DatabaseThreatDetectionPolicy].
  /// [disabledAlerts] Specifies a list of alerts which should be disabled. Possible values include `Access_Anomaly`, `Sql_Injection` and `Sql_Injection_Vulnerability`.
  /// [emailAccountAdmins] Should the account administrators be emailed when this alert is triggered? Possible values are `Enabled` or `Disabled`. Defaults to `Disabled`.
  /// [emailAddresses] A list of email addresses which alerts should be sent to.
  /// [retentionDays] Specifies the number of days to keep in the Threat Detection audit logs.
  /// [state] The State of the Policy. Possible values are `Enabled` or `Disabled`. Defaults to `Disabled`.
  /// [storageAccountAccessKey] Specifies the identifier key of the Threat Detection audit storage account. Required if `state` is `Enabled`.
  /// [storageEndpoint] Specifies the blob storage endpoint (e.g. &lt;https://example.blob.core.windows.net&gt;). This blob storage will hold all Threat Detection audit logs. Required if `state` is `Enabled`.
  const DatabaseThreatDetectionPolicy({
    this.disabledAlerts,
    this.emailAccountAdmins,
    this.emailAddresses,
    this.retentionDays,
    this.state,
    this.storageAccountAccessKey,
    this.storageEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabledAlerts': ?disabledAlerts,
      'emailAccountAdmins': ?emailAccountAdmins,
      'emailAddresses': ?emailAddresses,
      'retentionDays': ?retentionDays,
      'state': ?state,
      'storageAccountAccessKey': ?storageAccountAccessKey,
      'storageEndpoint': ?storageEndpoint,
    };
  }

  factory DatabaseThreatDetectionPolicy.fromMap(Map<String, dynamic> map) {
    return DatabaseThreatDetectionPolicy(
      disabledAlerts: (() { final guardedValue = map['disabledAlerts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      emailAccountAdmins: (() { final guardedValue = map['emailAccountAdmins']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emailAddresses: (() { final guardedValue = map['emailAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      retentionDays: (() { final guardedValue = map['retentionDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountAccessKey: (() { final guardedValue = map['storageAccountAccessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageEndpoint: (() { final guardedValue = map['storageEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
