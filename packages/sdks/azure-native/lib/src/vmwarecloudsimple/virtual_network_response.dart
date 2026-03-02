// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Virtual network model
class VirtualNetworkResponse {
  /// can be used in vm creation/deletion
  final pulumi.Input<bool> assignable;
  /// virtual network id (privateCloudId:vsphereId)
  final pulumi.Input<String> id;
  /// Azure region
  final pulumi.Input<String> location;
  /// {VirtualNetworkName}
  final pulumi.Input<String> name;
  /// The Private Cloud id
  final pulumi.Input<String> privateCloudId;
  /// {resourceProviderNamespace}/{resourceType}
  final pulumi.Input<String> type;

  /// Creates a new [VirtualNetworkResponse].
  /// [assignable] can be used in vm creation/deletion
  /// [id] virtual network id (privateCloudId:vsphereId)
  /// [location] Azure region
  /// [name] {VirtualNetworkName}
  /// [privateCloudId] The Private Cloud id
  /// [type] {resourceProviderNamespace}/{resourceType}
  VirtualNetworkResponse({
    required this.assignable,
    required this.id,
    required this.location,
    required this.name,
    required this.privateCloudId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignable': assignable,
      'id': id,
      'location': location,
      'name': name,
      'privateCloudId': privateCloudId,
      'type': type,
    };
  }

  factory VirtualNetworkResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkResponse(
      assignable: (map['assignable'] as bool).input(),
      id: (map['id'] as String).input(),
      location: (map['location'] as String).input(),
      name: (map['name'] as String).input(),
      privateCloudId: (map['privateCloudId'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

