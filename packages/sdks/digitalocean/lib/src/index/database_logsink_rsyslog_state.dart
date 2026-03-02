// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DatabaseLogsinkRsyslog resources.
class DatabaseLogsinkRsyslogState {
  /// CA certificate for TLS verification in PEM format. Can be specified using `file()` function.
  final pulumi.Input<String>? caCert;
  /// Client certificate for mutual TLS authentication in PEM format. **Note**: Requires `tls` to be `true`.
  final pulumi.Input<String>? clientCert;
  /// Client private key for mutual TLS authentication in PEM format. **Note**: Requires `tls` to be `true`. This field is marked as sensitive.
  final pulumi.Input<String>? clientKey;
  /// UUID of the source database cluster that will forward logs.
  final pulumi.Input<String>? clusterId;
  /// Log format to use. Must be one of `rfc5424` (default), `rfc3164`, or `custom`.
  final pulumi.Input<String>? format;
  /// Custom logline template. **Required** when `format` is set to `custom`. Supports rsyslog-style templating with the following tokens: `%HOSTNAME%`, `%app-name%`, `%msg%`, `%msgid%`, `%pri%`, `%procid%`, `%structured-data%`, `%timestamp%`, and `%timestamp:::date-rfc3339%`.
  final pulumi.Input<String>? logline;
  /// The unique identifier for the logsink as returned by the DigitalOcean API.
  final pulumi.Input<String>? logsinkId;
  /// Display name for the logsink. **Note**: This is immutable; changing it will force recreation of the resource.
  final pulumi.Input<String>? name;
  /// Port number for the rsyslog server. Must be between 1 and 65535.
  final pulumi.Input<int>? port;
  /// Hostname or IP address of the rsyslog server.
  final pulumi.Input<String>? server;
  /// Content of the structured data block for RFC5424 messages.
  final pulumi.Input<String>? structuredData;
  /// Enable TLS encryption for the rsyslog connection. Defaults to `false`. **Note**: It is highly recommended to enable TLS as log messages may contain sensitive information.
  final pulumi.Input<bool>? tls;

  /// Creates a new [DatabaseLogsinkRsyslogState].
  /// [caCert] CA certificate for TLS verification in PEM format. Can be specified using `file()` function.
  /// [clientCert] Client certificate for mutual TLS authentication in PEM format. **Note**: Requires `tls` to be `true`.
  /// [clientKey] Client private key for mutual TLS authentication in PEM format. **Note**: Requires `tls` to be `true`. This field is marked as sensitive.
  /// [clusterId] UUID of the source database cluster that will forward logs.
  /// [format] Log format to use. Must be one of `rfc5424` (default), `rfc3164`, or `custom`.
  /// [logline] Custom logline template. **Required** when `format` is set to `custom`. Supports rsyslog-style templating with the following tokens: `%HOSTNAME%`, `%app-name%`, `%msg%`, `%msgid%`, `%pri%`, `%procid%`, `%structured-data%`, `%timestamp%`, and `%timestamp:::date-rfc3339%`.
  /// [logsinkId] The unique identifier for the logsink as returned by the DigitalOcean API.
  /// [name] Display name for the logsink. **Note**: This is immutable; changing it will force recreation of the resource.
  /// [port] Port number for the rsyslog server. Must be between 1 and 65535.
  /// [server] Hostname or IP address of the rsyslog server.
  /// [structuredData] Content of the structured data block for RFC5424 messages.
  /// [tls] Enable TLS encryption for the rsyslog connection. Defaults to `false`. **Note**: It is highly recommended to enable TLS as log messages may contain sensitive information.
  DatabaseLogsinkRsyslogState({
    this.caCert,
    this.clientCert,
    this.clientKey,
    this.clusterId,
    this.format,
    this.logline,
    this.logsinkId,
    this.name,
    this.port,
    this.server,
    this.structuredData,
    this.tls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCert': ?caCert,
      'clientCert': ?clientCert,
      'clientKey': ?clientKey,
      'clusterId': ?clusterId,
      'format': ?format,
      'logline': ?logline,
      'logsinkId': ?logsinkId,
      'name': ?name,
      'port': ?port,
      'server': ?server,
      'structuredData': ?structuredData,
      'tls': ?tls,
    };
  }

  factory DatabaseLogsinkRsyslogState.fromMap(Map<String, dynamic> map) {
    return DatabaseLogsinkRsyslogState(
      caCert: map['caCert'] == null ? null : (map['caCert'] as String).input(),
      clientCert: map['clientCert'] == null ? null : (map['clientCert'] as String).input(),
      clientKey: map['clientKey'] == null ? null : (map['clientKey'] as String).input(),
      clusterId: map['clusterId'] == null ? null : (map['clusterId'] as String).input(),
      format: map['format'] == null ? null : (map['format'] as String).input(),
      logline: map['logline'] == null ? null : (map['logline'] as String).input(),
      logsinkId: map['logsinkId'] == null ? null : (map['logsinkId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      server: map['server'] == null ? null : (map['server'] as String).input(),
      structuredData: map['structuredData'] == null ? null : (map['structuredData'] as String).input(),
      tls: map['tls'] == null ? null : (map['tls'] as bool).input(),
    );
  }
}

