// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerThreatDetectionPolicy {
  /// Specifies a list of alerts which should be disabled. Possible values are `Sql_Injection`, `Sql_Injection_Vulnerability`, `Access_Anomaly`, `Data_Exfiltration` and `Unsafe_Action`.
  final pulumi.Input<List<String>>? disabledAlerts;

  /// Should the account administrators be emailed when this alert is triggered?
  final pulumi.Input<bool>? emailAccountAdmins;

  /// A list of email addresses which alerts should be sent to.
  final pulumi.Input<List<String>>? emailAddresses;

  /// Is the policy enabled?
  final pulumi.Input<bool>? enabled;

  /// Specifies the number of days to keep in the Threat Detection audit logs.
  final pulumi.Input<int>? retentionDays;

  /// Specifies the identifier key of the Threat Detection audit storage account.
  final pulumi.Input<String>? storageAccountAccessKey;

  /// Specifies the blob storage endpoint (e.g. &lt;https://example.blob.core.windows.net&gt;). This blob storage will hold all Threat Detection audit logs.
  final pulumi.Input<String>? storageEndpoint;

  /// Creates a new [ServerThreatDetectionPolicy].
  /// [disabledAlerts] Specifies a list of alerts which should be disabled. Possible values are `Sql_Injection`, `Sql_Injection_Vulnerability`, `Access_Anomaly`, `Data_Exfiltration` and `Unsafe_Action`.
  /// [emailAccountAdmins] Should the account administrators be emailed when this alert is triggered?
  /// [emailAddresses] A list of email addresses which alerts should be sent to.
  /// [enabled] Is the policy enabled?
  /// [retentionDays] Specifies the number of days to keep in the Threat Detection audit logs.
  /// [storageAccountAccessKey] Specifies the identifier key of the Threat Detection audit storage account.
  /// [storageEndpoint] Specifies the blob storage endpoint (e.g. &lt;https://example.blob.core.windows.net&gt;). This blob storage will hold all Threat Detection audit logs.
  ServerThreatDetectionPolicy({
    this.disabledAlerts,
    this.emailAccountAdmins,
    this.emailAddresses,
    this.enabled,
    this.retentionDays,
    this.storageAccountAccessKey,
    this.storageEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabledAlerts': ?disabledAlerts,
      'emailAccountAdmins': ?emailAccountAdmins,
      'emailAddresses': ?emailAddresses,
      'enabled': ?enabled,
      'retentionDays': ?retentionDays,
      'storageAccountAccessKey': ?storageAccountAccessKey,
      'storageEndpoint': ?storageEndpoint,
    };
  }

  factory ServerThreatDetectionPolicy.fromMap(Map<String, dynamic> map) {
    return ServerThreatDetectionPolicy(
      disabledAlerts: (() {
        final guardedValue = map['disabledAlerts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      emailAccountAdmins: (() {
        final guardedValue = map['emailAccountAdmins'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      emailAddresses: (() {
        final guardedValue = map['emailAddresses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      retentionDays: (() {
        final guardedValue = map['retentionDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      storageAccountAccessKey: (() {
        final guardedValue = map['storageAccountAccessKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageEndpoint: (() {
        final guardedValue = map['storageEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
