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
  const ResourcePoolResponse({
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
      fullName: pulumi.Input.fromValue(map['fullName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      privateCloudId: pulumi.Input.fromValue(map['privateCloudId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

