// ignore_for_file: unused_element, unnecessary_cast


/// Resource pool model
class ResourcePoolResponse {
  /// Hierarchical resource pool name
  final String fullName;
  /// resource pool id (privateCloudId:vsphereId)
  final String id;
  /// Azure region
  final String location;
  /// {ResourcePoolName}
  final String name;
  /// The Private Cloud Id
  final String privateCloudId;
  /// {resourceProviderNamespace}/{resourceType}
  final String type;

  /// Creates a new [ResourcePoolResponse].
  /// [fullName] Hierarchical resource pool name
  /// [id] resource pool id (privateCloudId:vsphereId)
  /// [location] Azure region
  /// [name] {ResourcePoolName}
  /// [privateCloudId] The Private Cloud Id
  /// [type] {resourceProviderNamespace}/{resourceType}
  ResourcePoolResponse({
    required this.fullName,
    required this.id,
    required this.location,
    required this.name,
    required this.privateCloudId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fullName': fullName,
      'id': id,
      'location': location,
      'name': name,
      'privateCloudId': privateCloudId,
      'type': type,
    };
  }

  factory ResourcePoolResponse.fromMap(Map<String, dynamic> map) {
    return ResourcePoolResponse(
      fullName: map['fullName'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      privateCloudId: map['privateCloudId'] as String,
      type: map['type'] as String,
    );
  }
}

