// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRegistry.
class GetRegistryResult {
  /// Is the Administrator account enabled for this Container Registry.
  final bool adminEnabled;
  /// The Password associated with the Container Registry Admin account - if the admin account is enabled.
  final String adminPassword;
  /// The Username associated with the Container Registry Admin account - if the admin account is enabled.
  final String adminUsername;
  /// Whether dedicated data endpoints for this Container Registry are enabled?
  final bool dataEndpointEnabled;
  /// A set of data endpoint hostnames associated with the container registry if data endpoints are enabled.
  final List<String> dataEndpointHostNames;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure Region in which this Container Registry exists.
  final String location;
  /// The URL that can be used to log into the container registry.
  final String loginServer;
  final String name;
  final String resourceGroupName;
  /// The SKU of this Container Registry, such as `Basic`.
  final String sku;
  /// A map of tags assigned to the Container Registry.
  final Map<String, String> tags;

  /// Creates a new [GetRegistryResult].
  /// [adminEnabled] Is the Administrator account enabled for this Container Registry.
  /// [adminPassword] The Password associated with the Container Registry Admin account - if the admin account is enabled.
  /// [adminUsername] The Username associated with the Container Registry Admin account - if the admin account is enabled.
  /// [dataEndpointEnabled] Whether dedicated data endpoints for this Container Registry are enabled?
  /// [dataEndpointHostNames] A set of data endpoint hostnames associated with the container registry if data endpoints are enabled.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region in which this Container Registry exists.
  /// [loginServer] The URL that can be used to log into the container registry.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [sku] The SKU of this Container Registry, such as `Basic`.
  /// [tags] A map of tags assigned to the Container Registry.
  const GetRegistryResult({
    required this.adminEnabled,
    required this.adminPassword,
    required this.adminUsername,
    required this.dataEndpointEnabled,
    required this.dataEndpointHostNames,
    required this.id,
    required this.location,
    required this.loginServer,
    required this.name,
    required this.resourceGroupName,
    required this.sku,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminEnabled': adminEnabled,
      'adminPassword': adminPassword,
      'adminUsername': adminUsername,
      'dataEndpointEnabled': dataEndpointEnabled,
      'dataEndpointHostNames': dataEndpointHostNames,
      'id': id,
      'location': location,
      'loginServer': loginServer,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'sku': sku,
      'tags': tags,
    };
  }

  factory GetRegistryResult.fromMap(Map<String, dynamic> map) {
    return GetRegistryResult(
      adminEnabled: map['adminEnabled'] as bool,
      adminPassword: map['adminPassword'] as String,
      adminUsername: map['adminUsername'] as String,
      dataEndpointEnabled: map['dataEndpointEnabled'] as bool,
      dataEndpointHostNames: (map['dataEndpointHostNames'] as List).cast<String>(),
      id: map['id'] as String,
      location: map['location'] as String,
      loginServer: map['loginServer'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sku: map['sku'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

