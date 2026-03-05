// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getService.
class GetServiceResult {
  final bool aadAuthEnabled;
  final int capacity;
  final String externalIp;

  /// The FQDN of the Web Pubsub service.
  final String hostname;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool localAuthEnabled;

  /// The Azure location where the Web Pubsub service exists.
  final String location;
  final String name;

  /// The primary access key of the Web Pubsub service.
  final String primaryAccessKey;

  /// The primary connection string of the Web Pubsub service.
  final String primaryConnectionString;
  final bool publicNetworkAccessEnabled;

  /// The publicly accessible port of the Web Pubsub service which is designed for browser/client use.
  final int publicPort;
  final String resourceGroupName;

  /// The secondary access key of the Web Pubsub service.
  final String secondaryAccessKey;

  /// The secondary connection string of the Web Pubsub service.
  final String secondaryConnectionString;

  /// The publicly accessible port of the Web Pubsub service which is designed for customer server side use.
  final int serverPort;
  final String sku;
  final Map<String, String> tags;
  final bool tlsClientCertEnabled;
  final String version;

  /// Creates a new [GetServiceResult].
  /// [aadAuthEnabled] Required.
  /// [capacity] Required.
  /// [externalIp] Required.
  /// [hostname] The FQDN of the Web Pubsub service.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [localAuthEnabled] Required.
  /// [location] The Azure location where the Web Pubsub service exists.
  /// [name] Required.
  /// [primaryAccessKey] The primary access key of the Web Pubsub service.
  /// [primaryConnectionString] The primary connection string of the Web Pubsub service.
  /// [publicNetworkAccessEnabled] Required.
  /// [publicPort] The publicly accessible port of the Web Pubsub service which is designed for browser/client use.
  /// [resourceGroupName] Required.
  /// [secondaryAccessKey] The secondary access key of the Web Pubsub service.
  /// [secondaryConnectionString] The secondary connection string of the Web Pubsub service.
  /// [serverPort] The publicly accessible port of the Web Pubsub service which is designed for customer server side use.
  /// [sku] Required.
  /// [tags] Required.
  /// [tlsClientCertEnabled] Required.
  /// [version] Required.
  GetServiceResult({
    required this.aadAuthEnabled,
    required this.capacity,
    required this.externalIp,
    required this.hostname,
    required this.id,
    required this.localAuthEnabled,
    required this.location,
    required this.name,
    required this.primaryAccessKey,
    required this.primaryConnectionString,
    required this.publicNetworkAccessEnabled,
    required this.publicPort,
    required this.resourceGroupName,
    required this.secondaryAccessKey,
    required this.secondaryConnectionString,
    required this.serverPort,
    required this.sku,
    required this.tags,
    required this.tlsClientCertEnabled,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadAuthEnabled': aadAuthEnabled,
      'capacity': capacity,
      'externalIp': externalIp,
      'hostname': hostname,
      'id': id,
      'localAuthEnabled': localAuthEnabled,
      'location': location,
      'name': name,
      'primaryAccessKey': primaryAccessKey,
      'primaryConnectionString': primaryConnectionString,
      'publicNetworkAccessEnabled': publicNetworkAccessEnabled,
      'publicPort': publicPort,
      'resourceGroupName': resourceGroupName,
      'secondaryAccessKey': secondaryAccessKey,
      'secondaryConnectionString': secondaryConnectionString,
      'serverPort': serverPort,
      'sku': sku,
      'tags': tags,
      'tlsClientCertEnabled': tlsClientCertEnabled,
      'version': version,
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      aadAuthEnabled: map['aadAuthEnabled'] as bool,
      capacity: map['capacity'] as int,
      externalIp: map['externalIp'] as String,
      hostname: map['hostname'] as String,
      id: map['id'] as String,
      localAuthEnabled: map['localAuthEnabled'] as bool,
      location: map['location'] as String,
      name: map['name'] as String,
      primaryAccessKey: map['primaryAccessKey'] as String,
      primaryConnectionString: map['primaryConnectionString'] as String,
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] as bool,
      publicPort: map['publicPort'] as int,
      resourceGroupName: map['resourceGroupName'] as String,
      secondaryAccessKey: map['secondaryAccessKey'] as String,
      secondaryConnectionString: map['secondaryConnectionString'] as String,
      serverPort: map['serverPort'] as int,
      sku: map['sku'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      tlsClientCertEnabled: map['tlsClientCertEnabled'] as bool,
      version: map['version'] as String,
    );
  }
}
