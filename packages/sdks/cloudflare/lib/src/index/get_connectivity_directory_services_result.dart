// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connectivity_directory_services_result_host.dart';
import 'get_connectivity_directory_services_result_tls_settings.dart';

class GetConnectivityDirectoryServicesResult {
  /// Available values: "postgresql", "mysql".
  final pulumi.Input<String> appProtocol;
  final pulumi.Input<String> createdAt;
  final pulumi.Input<GetConnectivityDirectoryServicesResultHost> host;
  final pulumi.Input<int> httpPort;
  final pulumi.Input<int> httpsPort;
  final pulumi.Input<String> name;
  final pulumi.Input<String> serviceId;
  final pulumi.Input<int> tcpPort;
  /// TLS settings for a connectivity service.
  final pulumi.Input<GetConnectivityDirectoryServicesResultTlsSettings> tlsSettings;
  /// Available values: "tcp", "http".
  final pulumi.Input<String> type;
  final pulumi.Input<String> updatedAt;

  /// Creates a new [GetConnectivityDirectoryServicesResult].
  /// [appProtocol] Available values: "postgresql", "mysql".
  /// [createdAt] Required.
  /// [host] Required.
  /// [httpPort] Required.
  /// [httpsPort] Required.
  /// [name] Required.
  /// [serviceId] Required.
  /// [tcpPort] Required.
  /// [tlsSettings] TLS settings for a connectivity service.
  /// [type] Available values: "tcp", "http".
  /// [updatedAt] Required.
  const GetConnectivityDirectoryServicesResult({
    required this.appProtocol,
    required this.createdAt,
    required this.host,
    required this.httpPort,
    required this.httpsPort,
    required this.name,
    required this.serviceId,
    required this.tcpPort,
    required this.tlsSettings,
    required this.type,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appProtocol': appProtocol,
      'createdAt': createdAt,
      'host': pulumi.Input.mapInputValue<GetConnectivityDirectoryServicesResultHost, Map<String, dynamic>>(host, (value) => value.toMap()),
      'httpPort': httpPort,
      'httpsPort': httpsPort,
      'name': name,
      'serviceId': serviceId,
      'tcpPort': tcpPort,
      'tlsSettings': pulumi.Input.mapInputValue<GetConnectivityDirectoryServicesResultTlsSettings, Map<String, dynamic>>(tlsSettings, (value) => value.toMap()),
      'type': type,
      'updatedAt': updatedAt,
    };
  }

  factory GetConnectivityDirectoryServicesResult.fromMap(Map<String, dynamic> map) {
    return GetConnectivityDirectoryServicesResult(
      appProtocol: pulumi.Input.fromValue(map['appProtocol'] as String),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      host: pulumi.Input.fromValue(GetConnectivityDirectoryServicesResultHost.fromMap((map['host']! as Map).cast<String, dynamic>())),
      httpPort: pulumi.Input.fromValue((map['httpPort'] as num).toInt()),
      httpsPort: pulumi.Input.fromValue((map['httpsPort'] as num).toInt()),
      name: pulumi.Input.fromValue(map['name'] as String),
      serviceId: pulumi.Input.fromValue(map['serviceId'] as String),
      tcpPort: pulumi.Input.fromValue((map['tcpPort'] as num).toInt()),
      tlsSettings: pulumi.Input.fromValue(GetConnectivityDirectoryServicesResultTlsSettings.fromMap((map['tlsSettings']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
    );
  }
}
