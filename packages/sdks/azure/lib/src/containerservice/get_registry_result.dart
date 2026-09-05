// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRegistry.
class GetRegistryResult {
  /// Is the Administrator account enabled for this Container Registry.
  final bool? adminEnabled;
  /// The Password associated with the Container Registry Admin account - if the admin account is enabled.
  final String? adminPassword;
  /// The Username associated with the Container Registry Admin account - if the admin account is enabled.
  final String? adminUsername;
  /// Whether dedicated data endpoints for this Container Registry are enabled?
  final bool? dataEndpointEnabled;
  /// A set of data endpoint hostnames associated with the container registry if data endpoints are enabled.
  final List<String>? dataEndpointHostNames;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure Region in which this Container Registry exists.
  final String? location;
  /// The URL that can be used to log into the container registry.
  final String? loginServer;
  final String? name;
  final String? resourceGroupName;
  /// The SKU of this Container Registry, such as `Basic`.
  final String? sku;
  /// A map of tags assigned to the Container Registry.
  final Map<String, String>? tags;

  /// Creates a new [GetRegistryResult].
  /// [adminEnabled] Is the Administrator account enabled for this Container Registry.
  /// [adminPassword] The Password associated with the Container Registry Admin account - if the admin account is enabled.
  /// [adminUsername] The Username associated with the Container Registry Admin account - if the admin account is enabled.
  /// [dataEndpointEnabled] Whether dedicated data endpoints for this Container Registry are enabled?
  /// [dataEndpointHostNames] A set of data endpoint hostnames associated with the container registry if data endpoints are enabled.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region in which this Container Registry exists.
  /// [loginServer] The URL that can be used to log into the container registry.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [sku] The SKU of this Container Registry, such as `Basic`.
  /// [tags] A map of tags assigned to the Container Registry.
  const GetRegistryResult({
    this.adminEnabled,
    this.adminPassword,
    this.adminUsername,
    this.dataEndpointEnabled,
    this.dataEndpointHostNames,
    this.id,
    this.location,
    this.loginServer,
    this.name,
    this.resourceGroupName,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminEnabled': ?adminEnabled,
      'adminPassword': ?adminPassword,
      'adminUsername': ?adminUsername,
      'dataEndpointEnabled': ?dataEndpointEnabled,
      'dataEndpointHostNames': ?dataEndpointHostNames,
      'id': ?id,
      'location': ?location,
      'loginServer': ?loginServer,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'sku': ?sku,
      'tags': ?tags,
    };
  }

  factory GetRegistryResult.fromMap(Map<String, dynamic> map) {
    return GetRegistryResult(
      adminEnabled: (() { final guardedValue = map['adminEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      adminPassword: (() { final guardedValue = map['adminPassword']; if (guardedValue == null) return null; return guardedValue as String; })(),
      adminUsername: (() { final guardedValue = map['adminUsername']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataEndpointEnabled: (() { final guardedValue = map['dataEndpointEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      dataEndpointHostNames: (() { final guardedValue = map['dataEndpointHostNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      loginServer: (() { final guardedValue = map['loginServer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
