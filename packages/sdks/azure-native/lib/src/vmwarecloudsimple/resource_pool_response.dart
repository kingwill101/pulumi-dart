// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource pool model
class ResourcePoolResponse {
  /// Hierarchical resource pool name
  final pulumi.Input<String> fullName;
  /// resource pool id (privateCloudId:vsphereId)
  final pulumi.Input<String> id;
  /// Azure region
  final pulumi.Input<String> location;
  /// {ResourcePoolName}
  final pulumi.Input<String> name;
  /// The Private Cloud Id
  final pulumi.Input<String> privateCloudId;
  /// {resourceProviderNamespace}/{resourceType}
  final pulumi.Input<String> type;

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
      fullName: (map['fullName'] as String).input(),
      id: (map['id'] as String).input(),
      location: (map['location'] as String).input(),
      name: (map['name'] as String).input(),
      privateCloudId: (map['privateCloudId'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

