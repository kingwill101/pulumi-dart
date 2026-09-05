// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getService.
class GetServiceResult {
  final bool? aadAuthEnabled;
  final int? capacity;
  final String? externalIp;
  /// The FQDN of the Web Pubsub service.
  final String? hostname;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final bool? localAuthEnabled;
  /// The Azure location where the Web Pubsub service exists.
  final String? location;
  final String? name;
  /// The primary access key of the Web Pubsub service.
  final String? primaryAccessKey;
  /// The primary connection string of the Web Pubsub service.
  final String? primaryConnectionString;
  final bool? publicNetworkAccessEnabled;
  /// The publicly accessible port of the Web Pubsub service which is designed for browser/client use.
  final int? publicPort;
  final String? resourceGroupName;
  /// The secondary access key of the Web Pubsub service.
  final String? secondaryAccessKey;
  /// The secondary connection string of the Web Pubsub service.
  final String? secondaryConnectionString;
  /// The publicly accessible port of the Web Pubsub service which is designed for customer server side use.
  final int? serverPort;
  final String? sku;
  final Map<String, String>? tags;
  final bool? tlsClientCertEnabled;
  final String? version;

  /// Creates a new [GetServiceResult].
  /// [aadAuthEnabled] Optional.
  /// [capacity] Optional.
  /// [externalIp] Optional.
  /// [hostname] The FQDN of the Web Pubsub service.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [localAuthEnabled] Optional.
  /// [location] The Azure location where the Web Pubsub service exists.
  /// [name] Optional.
  /// [primaryAccessKey] The primary access key of the Web Pubsub service.
  /// [primaryConnectionString] The primary connection string of the Web Pubsub service.
  /// [publicNetworkAccessEnabled] Optional.
  /// [publicPort] The publicly accessible port of the Web Pubsub service which is designed for browser/client use.
  /// [resourceGroupName] Optional.
  /// [secondaryAccessKey] The secondary access key of the Web Pubsub service.
  /// [secondaryConnectionString] The secondary connection string of the Web Pubsub service.
  /// [serverPort] The publicly accessible port of the Web Pubsub service which is designed for customer server side use.
  /// [sku] Optional.
  /// [tags] Optional.
  /// [tlsClientCertEnabled] Optional.
  /// [version] Optional.
  const GetServiceResult({
    this.aadAuthEnabled,
    this.capacity,
    this.externalIp,
    this.hostname,
    this.id,
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
    this.sku,
    this.tags,
    this.tlsClientCertEnabled,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadAuthEnabled': ?aadAuthEnabled,
      'capacity': ?capacity,
      'externalIp': ?externalIp,
      'hostname': ?hostname,
      'id': ?id,
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
      'sku': ?sku,
      'tags': ?tags,
      'tlsClientCertEnabled': ?tlsClientCertEnabled,
      'version': ?version,
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      aadAuthEnabled: (() { final guardedValue = map['aadAuthEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      externalIp: (() { final guardedValue = map['externalIp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
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
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tlsClientCertEnabled: (() { final guardedValue = map['tlsClientCertEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
