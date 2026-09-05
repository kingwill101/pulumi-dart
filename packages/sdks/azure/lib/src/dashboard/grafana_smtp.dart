// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GrafanaSmtp {
  /// Whether to enable the smtp setting of the Grafana instance. Defaults to `false`.
  final pulumi.Input<bool?>? enabled;
  /// Address used when sending emails.
  final pulumi.Input<String> fromAddress;
  /// Name used when sending emails. Defaults to `Azure Managed Grafana Notification`.
  final pulumi.Input<String?>? fromName;
  /// SMTP server hostname with port, e.g. test.email.net:587
  final pulumi.Input<String> host;
  /// Password of SMTP authentication.
  final pulumi.Input<String> password;
  /// Whether to use TLS when connecting to SMTP server. Possible values are `OpportunisticStartTLS`, `NoStartTLS`, `MandatoryStartTLS`.
  final pulumi.Input<String> startTlsPolicy;
  /// User of SMTP authentication.
  final pulumi.Input<String> user;
  /// Whether verify SSL for SMTP server. Defaults to `false`.
  final pulumi.Input<bool?>? verificationSkipEnabled;

  /// Creates a new [GrafanaSmtp].
  /// [enabled] Whether to enable the smtp setting of the Grafana instance. Defaults to `false`.
  /// [fromAddress] Address used when sending emails.
  /// [fromName] Name used when sending emails. Defaults to `Azure Managed Grafana Notification`.
  /// [host] SMTP server hostname with port, e.g. test.email.net:587
  /// [password] Password of SMTP authentication.
  /// [startTlsPolicy] Whether to use TLS when connecting to SMTP server. Possible values are `OpportunisticStartTLS`, `NoStartTLS`, `MandatoryStartTLS`.
  /// [user] User of SMTP authentication.
  /// [verificationSkipEnabled] Whether verify SSL for SMTP server. Defaults to `false`.
  const GrafanaSmtp({
    this.enabled,
    required this.fromAddress,
    this.fromName,
    required this.host,
    required this.password,
    required this.startTlsPolicy,
    required this.user,
    this.verificationSkipEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'fromAddress': fromAddress,
      'fromName': ?fromName,
      'host': host,
      'password': password,
      'startTlsPolicy': startTlsPolicy,
      'user': user,
      'verificationSkipEnabled': ?verificationSkipEnabled,
    };
  }

  factory GrafanaSmtp.fromMap(Map<String, dynamic> map) {
    return GrafanaSmtp(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      fromAddress: pulumi.Input.fromValue(map['fromAddress'] as String),
      fromName: (() { final guardedValue = map['fromName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: pulumi.Input.fromValue(map['host'] as String),
      password: pulumi.Input.fromValue(map['password'] as String),
      startTlsPolicy: pulumi.Input.fromValue(map['startTlsPolicy'] as String),
      user: pulumi.Input.fromValue(map['user'] as String),
      verificationSkipEnabled: (() { final guardedValue = map['verificationSkipEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
