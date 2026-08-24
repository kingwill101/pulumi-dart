// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connectivity_directory_service_host.dart';
import 'connectivity_directory_service_tls_settings.dart';

/// {@template pulumi_index_connectivity_directory_service_connectivity_directory_service_args_doc}
/// The set of arguments for ConnectivityDirectoryService.
/// {@endtemplate}
/// {@macro pulumi_index_connectivity_directory_service_connectivity_directory_service_args_doc}
class ConnectivityDirectoryServiceArgs {
  /// Account identifier
  final pulumi.Input<String> accountId;
  /// Available values: "postgresql", "mysql".
  final pulumi.Input<String?>? appProtocol;
  final pulumi.Input<ConnectivityDirectoryServiceHost> host;
  final pulumi.Input<int?>? httpPort;
  final pulumi.Input<int?>? httpsPort;
  final pulumi.Input<String> name;
  final pulumi.Input<int?>? tcpPort;
  /// TLS settings for a connectivity service.
  final pulumi.Input<ConnectivityDirectoryServiceTlsSettings?>? tlsSettings;
  /// Available values: "tcp", "http".
  final pulumi.Input<String> type;

  /// Creates a new [ConnectivityDirectoryServiceArgs].
  /// [accountId] Account identifier
  /// [appProtocol] Available values: "postgresql", "mysql".
  /// [host] Required.
  /// [httpPort] Optional.
  /// [httpsPort] Optional.
  /// [name] Required.
  /// [tcpPort] Optional.
  /// [tlsSettings] TLS settings for a connectivity service.
  /// [type] Available values: "tcp", "http".
  const ConnectivityDirectoryServiceArgs({
    required this.accountId,
    this.appProtocol,
    required this.host,
    this.httpPort,
    this.httpsPort,
    required this.name,
    this.tcpPort,
    this.tlsSettings,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'appProtocol': ?appProtocol,
      'host': pulumi.Input.mapInputValue<ConnectivityDirectoryServiceHost, Map<String, dynamic>>(host, (value) => value.toMap()),
      'httpPort': ?httpPort,
      'httpsPort': ?httpsPort,
      'name': name,
      'tcpPort': ?tcpPort,
      'tlsSettings': ?pulumi.Input.mapOptionalInputValue<ConnectivityDirectoryServiceTlsSettings, Map<String, dynamic>>(tlsSettings, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ConnectivityDirectoryServiceArgs.fromMap(Map<String, dynamic> map) {
    return ConnectivityDirectoryServiceArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      appProtocol: (() { final guardedValue = map['appProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: pulumi.Input.fromValue(ConnectivityDirectoryServiceHost.fromMap((map['host']! as Map).cast<String, dynamic>())),
      httpPort: (() { final guardedValue = map['httpPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      httpsPort: (() { final guardedValue = map['httpsPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      tcpPort: (() { final guardedValue = map['tcpPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      tlsSettings: (() { final guardedValue = map['tlsSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectivityDirectoryServiceTlsSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
