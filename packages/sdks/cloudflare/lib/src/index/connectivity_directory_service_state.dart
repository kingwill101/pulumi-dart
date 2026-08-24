// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connectivity_directory_service_host.dart';
import 'connectivity_directory_service_tls_settings.dart';

/// Input properties used for looking up and filtering ConnectivityDirectoryService resources.
class ConnectivityDirectoryServiceState {
  /// Account identifier
  final pulumi.Input<String?>? accountId;
  /// Available values: "postgresql", "mysql".
  final pulumi.Input<String?>? appProtocol;
  final pulumi.Input<String?>? createdAt;
  final pulumi.Input<ConnectivityDirectoryServiceHost?>? host;
  final pulumi.Input<int?>? httpPort;
  final pulumi.Input<int?>? httpsPort;
  final pulumi.Input<String?>? name;
  final pulumi.Input<String?>? serviceId;
  final pulumi.Input<int?>? tcpPort;
  /// TLS settings for a connectivity service.
  final pulumi.Input<ConnectivityDirectoryServiceTlsSettings?>? tlsSettings;
  /// Available values: "tcp", "http".
  final pulumi.Input<String?>? type;
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [ConnectivityDirectoryServiceState].
  /// [accountId] Account identifier
  /// [appProtocol] Available values: "postgresql", "mysql".
  /// [createdAt] Optional.
  /// [host] Optional.
  /// [httpPort] Optional.
  /// [httpsPort] Optional.
  /// [name] Optional.
  /// [serviceId] Optional.
  /// [tcpPort] Optional.
  /// [tlsSettings] TLS settings for a connectivity service.
  /// [type] Available values: "tcp", "http".
  /// [updatedAt] Optional.
  const ConnectivityDirectoryServiceState({
    this.accountId,
    this.appProtocol,
    this.createdAt,
    this.host,
    this.httpPort,
    this.httpsPort,
    this.name,
    this.serviceId,
    this.tcpPort,
    this.tlsSettings,
    this.type,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'appProtocol': ?appProtocol,
      'createdAt': ?createdAt,
      'host': ?pulumi.Input.mapOptionalInputValue<ConnectivityDirectoryServiceHost, Map<String, dynamic>>(host, (value) => value.toMap()),
      'httpPort': ?httpPort,
      'httpsPort': ?httpsPort,
      'name': ?name,
      'serviceId': ?serviceId,
      'tcpPort': ?tcpPort,
      'tlsSettings': ?pulumi.Input.mapOptionalInputValue<ConnectivityDirectoryServiceTlsSettings, Map<String, dynamic>>(tlsSettings, (value) => value.toMap()),
      'type': ?type,
      'updatedAt': ?updatedAt,
    };
  }

  factory ConnectivityDirectoryServiceState.fromMap(Map<String, dynamic> map) {
    return ConnectivityDirectoryServiceState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appProtocol: (() { final guardedValue = map['appProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectivityDirectoryServiceHost.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpPort: (() { final guardedValue = map['httpPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      httpsPort: (() { final guardedValue = map['httpsPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceId: (() { final guardedValue = map['serviceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tcpPort: (() { final guardedValue = map['tcpPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      tlsSettings: (() { final guardedValue = map['tlsSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectivityDirectoryServiceTlsSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
