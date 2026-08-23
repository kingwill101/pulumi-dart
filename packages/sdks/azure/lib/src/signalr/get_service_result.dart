// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getService.
class GetServiceResult {
  /// Is aad auth enabled for this SignalR service?
  final bool aadAuthEnabled;
  /// The FQDN of the SignalR service.
  final String hostname;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The publicly accessible IP of the SignalR service.
  final String ipAddress;
  /// Is local auth enable for this SignalR serviced?
  final bool localAuthEnabled;
  /// Specifies the supported Azure location where the SignalR service exists.
  final String location;
  final String name;
  /// The primary access key of the SignalR service.
  final String primaryAccessKey;
  /// The primary connection string of the SignalR service.
  final String primaryConnectionString;
  /// Is public network access enabled for this SignalR service?
  final bool publicNetworkAccessEnabled;
  /// The publicly accessible port of the SignalR service which is designed for browser/client use.
  final int publicPort;
  final String resourceGroupName;
  /// The secondary access key of the SignalR service.
  final String secondaryAccessKey;
  /// The secondary connection string of the SignalR service.
  final String secondaryConnectionString;
  /// The publicly accessible port of the SignalR service which is designed for customer server side use.
  final int serverPort;
  /// The serverless connection timeout of this SignalR service.
  final int serverlessConnectionTimeoutInSeconds;
  final Map<String, String> tags;
  /// Is tls client cert enabled for this SignalR service?
  final bool tlsClientCertEnabled;

  /// Creates a new [GetServiceResult].
  /// [aadAuthEnabled] Is aad auth enabled for this SignalR service?
  /// [hostname] The FQDN of the SignalR service.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipAddress] The publicly accessible IP of the SignalR service.
  /// [localAuthEnabled] Is local auth enable for this SignalR serviced?
  /// [location] Specifies the supported Azure location where the SignalR service exists.
  /// [name] Required.
  /// [primaryAccessKey] The primary access key of the SignalR service.
  /// [primaryConnectionString] The primary connection string of the SignalR service.
  /// [publicNetworkAccessEnabled] Is public network access enabled for this SignalR service?
  /// [publicPort] The publicly accessible port of the SignalR service which is designed for browser/client use.
  /// [resourceGroupName] Required.
  /// [secondaryAccessKey] The secondary access key of the SignalR service.
  /// [secondaryConnectionString] The secondary connection string of the SignalR service.
  /// [serverPort] The publicly accessible port of the SignalR service which is designed for customer server side use.
  /// [serverlessConnectionTimeoutInSeconds] The serverless connection timeout of this SignalR service.
  /// [tags] Required.
  /// [tlsClientCertEnabled] Is tls client cert enabled for this SignalR service?
  const GetServiceResult({
    required this.aadAuthEnabled,
    required this.hostname,
    required this.id,
    required this.ipAddress,
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
    required this.serverlessConnectionTimeoutInSeconds,
    required this.tags,
    required this.tlsClientCertEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadAuthEnabled': aadAuthEnabled,
      'hostname': hostname,
      'id': id,
      'ipAddress': ipAddress,
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
      'serverlessConnectionTimeoutInSeconds': serverlessConnectionTimeoutInSeconds,
      'tags': tags,
      'tlsClientCertEnabled': tlsClientCertEnabled,
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      aadAuthEnabled: map['aadAuthEnabled'] as bool,
      hostname: map['hostname'] as String,
      id: map['id'] as String,
      ipAddress: map['ipAddress'] as String,
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
      serverlessConnectionTimeoutInSeconds: map['serverlessConnectionTimeoutInSeconds'] as int,
      tags: (map['tags'] as Map).cast<String, String>(),
      tlsClientCertEnabled: map['tlsClientCertEnabled'] as bool,
    );
  }
}
