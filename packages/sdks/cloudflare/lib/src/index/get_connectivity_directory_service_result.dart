// ignore_for_file: unused_element, unnecessary_cast

import 'get_connectivity_directory_service_filter.dart';
import 'get_connectivity_directory_service_host.dart';
import 'get_connectivity_directory_service_tls_settings.dart';

/// Result data returned by getConnectivityDirectoryService.
class GetConnectivityDirectoryServiceResult {
  final String? accountId;
  /// Available values: "postgresql", "mysql".
  final String? appProtocol;
  final String? createdAt;
  final GetConnectivityDirectoryServiceFilter? filter;
  final GetConnectivityDirectoryServiceHost? host;
  final int? httpPort;
  final int? httpsPort;
  /// The ID of this resource.
  final String? id;
  final String? name;
  final String? serviceId;
  final int? tcpPort;
  /// TLS settings for a connectivity service.
  final GetConnectivityDirectoryServiceTlsSettings? tlsSettings;
  final String? type;
  final String? updatedAt;

  /// Creates a new [GetConnectivityDirectoryServiceResult].
  /// [accountId] Optional.
  /// [appProtocol] Available values: "postgresql", "mysql".
  /// [createdAt] Optional.
  /// [filter] Optional.
  /// [host] Optional.
  /// [httpPort] Optional.
  /// [httpsPort] Optional.
  /// [id] The ID of this resource.
  /// [name] Optional.
  /// [serviceId] Optional.
  /// [tcpPort] Optional.
  /// [tlsSettings] TLS settings for a connectivity service.
  /// [type] Optional.
  /// [updatedAt] Optional.
  const GetConnectivityDirectoryServiceResult({
    this.accountId,
    this.appProtocol,
    this.createdAt,
    this.filter,
    this.host,
    this.httpPort,
    this.httpsPort,
    this.id,
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
      'filter': ?filter?.toMap(),
      'host': ?host?.toMap(),
      'httpPort': ?httpPort,
      'httpsPort': ?httpsPort,
      'id': ?id,
      'name': ?name,
      'serviceId': ?serviceId,
      'tcpPort': ?tcpPort,
      'tlsSettings': ?tlsSettings?.toMap(),
      'type': ?type,
      'updatedAt': ?updatedAt,
    };
  }

  factory GetConnectivityDirectoryServiceResult.fromMap(Map<String, dynamic> map) {
    return GetConnectivityDirectoryServiceResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      appProtocol: (() { final guardedValue = map['appProtocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetConnectivityDirectoryServiceFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return GetConnectivityDirectoryServiceHost.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      httpPort: (() { final guardedValue = map['httpPort']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      httpsPort: (() { final guardedValue = map['httpsPort']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceId: (() { final guardedValue = map['serviceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tcpPort: (() { final guardedValue = map['tcpPort']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      tlsSettings: (() { final guardedValue = map['tlsSettings']; if (guardedValue == null) return null; return GetConnectivityDirectoryServiceTlsSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
