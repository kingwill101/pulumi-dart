// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getService.
class GetServiceResult {
  /// Is aad auth enabled for this SignalR service?
  final bool? aadAuthEnabled;
  /// The FQDN of the SignalR service.
  final String? hostname;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The publicly accessible IP of the SignalR service.
  final String? ipAddress;
  /// Is local auth enable for this SignalR serviced?
  final bool? localAuthEnabled;
  /// Specifies the supported Azure location where the SignalR service exists.
  final String? location;
  final String? name;
  /// The primary access key of the SignalR service.
  final String? primaryAccessKey;
  /// The primary connection string of the SignalR service.
  final String? primaryConnectionString;
  /// Is public network access enabled for this SignalR service?
  final bool? publicNetworkAccessEnabled;
  /// The publicly accessible port of the SignalR service which is designed for browser/client use.
  final int? publicPort;
  final String? resourceGroupName;
  /// The secondary access key of the SignalR service.
  final String? secondaryAccessKey;
  /// The secondary connection string of the SignalR service.
  final String? secondaryConnectionString;
  /// The publicly accessible port of the SignalR service which is designed for customer server side use.
  final int? serverPort;
  /// The serverless connection timeout of this SignalR service.
  final int? serverlessConnectionTimeoutInSeconds;
  final Map<String, String>? tags;
  /// Is tls client cert enabled for this SignalR service?
  final bool? tlsClientCertEnabled;

  /// Creates a new [GetServiceResult].
  /// [aadAuthEnabled] Is aad auth enabled for this SignalR service?
  /// [hostname] The FQDN of the SignalR service.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipAddress] The publicly accessible IP of the SignalR service.
  /// [localAuthEnabled] Is local auth enable for this SignalR serviced?
  /// [location] Specifies the supported Azure location where the SignalR service exists.
  /// [name] Optional.
  /// [primaryAccessKey] The primary access key of the SignalR service.
  /// [primaryConnectionString] The primary connection string of the SignalR service.
  /// [publicNetworkAccessEnabled] Is public network access enabled for this SignalR service?
  /// [publicPort] The publicly accessible port of the SignalR service which is designed for browser/client use.
  /// [resourceGroupName] Optional.
  /// [secondaryAccessKey] The secondary access key of the SignalR service.
  /// [secondaryConnectionString] The secondary connection string of the SignalR service.
  /// [serverPort] The publicly accessible port of the SignalR service which is designed for customer server side use.
  /// [serverlessConnectionTimeoutInSeconds] The serverless connection timeout of this SignalR service.
  /// [tags] Optional.
  /// [tlsClientCertEnabled] Is tls client cert enabled for this SignalR service?
  const GetServiceResult({
    this.aadAuthEnabled,
    this.hostname,
    this.id,
    this.ipAddress,
    this.localAuthEnabled,
    this.location,
    this.name,
    this.primaryAccessKey,
    this.primaryConnectionString,
    this.publicNetworkAccessEnabled,
    this.publicPort,
    this.resourceGroupName,
    this.secondaryAccessKey,
    this.secondaryConnectionString,
    this.serverPort,
    this.serverlessConnectionTimeoutInSeconds,
    this.tags,
    this.tlsClientCertEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadAuthEnabled': ?aadAuthEnabled,
      'hostname': ?hostname,
      'id': ?id,
      'ipAddress': ?ipAddress,
      'localAuthEnabled': ?localAuthEnabled,
      'location': ?location,
      'name': ?name,
      'primaryAccessKey': ?primaryAccessKey,
      'primaryConnectionString': ?primaryConnectionString,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'publicPort': ?publicPort,
      'resourceGroupName': ?resourceGroupName,
      'secondaryAccessKey': ?secondaryAccessKey,
      'secondaryConnectionString': ?secondaryConnectionString,
      'serverPort': ?serverPort,
      'serverlessConnectionTimeoutInSeconds': ?serverlessConnectionTimeoutInSeconds,
      'tags': ?tags,
      'tlsClientCertEnabled': ?tlsClientCertEnabled,
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      aadAuthEnabled: (() { final guardedValue = map['aadAuthEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      localAuthEnabled: (() { final guardedValue = map['localAuthEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryAccessKey: (() { final guardedValue = map['primaryAccessKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryConnectionString: (() { final guardedValue = map['primaryConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccessEnabled: (() { final guardedValue = map['publicNetworkAccessEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      publicPort: (() { final guardedValue = map['publicPort']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryAccessKey: (() { final guardedValue = map['secondaryAccessKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryConnectionString: (() { final guardedValue = map['secondaryConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverPort: (() { final guardedValue = map['serverPort']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      serverlessConnectionTimeoutInSeconds: (() { final guardedValue = map['serverlessConnectionTimeoutInSeconds']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tlsClientCertEnabled: (() { final guardedValue = map['tlsClientCertEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
