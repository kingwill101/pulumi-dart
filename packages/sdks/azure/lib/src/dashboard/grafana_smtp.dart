// ignore_for_file: unused_element, unnecessary_cast


class GrafanaSmtp {
  /// Whether to enable the smtp setting of the Grafana instance. Defaults to `false`.
  final bool? enabled;
  /// Address used when sending emails.
  final String fromAddress;
  /// Name used when sending emails. Defaults to `Azure Managed Grafana Notification`.
  final String? fromName;
  /// SMTP server hostname with port, e.g. test.email.net:587
  final String host;
  /// Password of SMTP authentication.
  final String password;
  /// Whether to use TLS when connecting to SMTP server. Possible values are `OpportunisticStartTLS`, `NoStartTLS`, `MandatoryStartTLS`.
  final String startTlsPolicy;
  /// User of SMTP authentication.
  final String user;
  /// Whether verify SSL for SMTP server. Defaults to `false`.
  final bool? verificationSkipEnabled;

  /// Creates a new [GrafanaSmtp].
  /// [enabled] Whether to enable the smtp setting of the Grafana instance. Defaults to `false`.
  /// [fromAddress] Address used when sending emails.
  /// [fromName] Name used when sending emails. Defaults to `Azure Managed Grafana Notification`.
  /// [host] SMTP server hostname with port, e.g. test.email.net:587
  /// [password] Password of SMTP authentication.
  /// [startTlsPolicy] Whether to use TLS when connecting to SMTP server. Possible values are `OpportunisticStartTLS`, `NoStartTLS`, `MandatoryStartTLS`.
  /// [user] User of SMTP authentication.
  /// [verificationSkipEnabled] Whether verify SSL for SMTP server. Defaults to `false`.
  GrafanaSmtp({
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
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      fromAddress: map['fromAddress'] as String,
      fromName: map['fromName'] == null ? null : map['fromName'] as String,
      host: map['host'] as String,
      password: map['password'] as String,
      startTlsPolicy: map['startTlsPolicy'] as String,
      user: map['user'] as String,
      verificationSkipEnabled: map['verificationSkipEnabled'] == null ? null : map['verificationSkipEnabled'] as bool,
    );
  }
}

