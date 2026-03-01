// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_v2_network.dart';

/// Result data returned by getInstanceV2.
class GetInstanceV2Result {
  /// The first IPv4 address assigned to this server.
  final String accessIpV4;
  /// The first IPv6 address assigned to this server.
  final String accessIpV6;
  /// The availability zone of this server.
  final String availabilityZone;
  /// The creation time of the instance.
  final String created;
  /// The flavor ID used to create the server.
  final String flavorId;
  /// The flavor name used to create the server.
  final String flavorName;
  final String id;
  /// The image ID used to create the server.
  final String imageId;
  /// The image name used to create the server.
  final String imageName;
  /// The name of the key pair assigned to this server.
  final String keyPair;
  /// A set of key/value pairs made available to the server.
  final Map<String, String> metadata;
  /// The name of the network
  final String name;
  /// An array of maps, detailed below.
  final List<GetInstanceV2Network> networks;
  final String powerState;
  /// See Argument Reference above.
  final String region;
  /// An array of security group names associated with this server.
  final List<String> securityGroups;
  /// A set of string tags assigned to this server.
  final List<String> tags;
  /// The time when the instance was last updated.
  final String updated;
  /// The user data added when the server was created.
  final String userData;

  /// Creates a new [GetInstanceV2Result].
  /// [accessIpV4] The first IPv4 address assigned to this server.
  /// [accessIpV6] The first IPv6 address assigned to this server.
  /// [availabilityZone] The availability zone of this server.
  /// [created] The creation time of the instance.
  /// [flavorId] The flavor ID used to create the server.
  /// [flavorName] The flavor name used to create the server.
  /// [id] Required.
  /// [imageId] The image ID used to create the server.
  /// [imageName] The image name used to create the server.
  /// [keyPair] The name of the key pair assigned to this server.
  /// [metadata] A set of key/value pairs made available to the server.
  /// [name] The name of the network
  /// [networks] An array of maps, detailed below.
  /// [powerState] Required.
  /// [region] See Argument Reference above.
  /// [securityGroups] An array of security group names associated with this server.
  /// [tags] A set of string tags assigned to this server.
  /// [updated] The time when the instance was last updated.
  /// [userData] The user data added when the server was created.
  GetInstanceV2Result({
    required this.accessIpV4,
    required this.accessIpV6,
    required this.availabilityZone,
    required this.created,
    required this.flavorId,
    required this.flavorName,
    required this.id,
    required this.imageId,
    required this.imageName,
    required this.keyPair,
    required this.metadata,
    required this.name,
    required this.networks,
    required this.powerState,
    required this.region,
    required this.securityGroups,
    required this.tags,
    required this.updated,
    required this.userData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessIpV4': accessIpV4,
      'accessIpV6': accessIpV6,
      'availabilityZone': availabilityZone,
      'created': created,
      'flavorId': flavorId,
      'flavorName': flavorName,
      'id': id,
      'imageId': imageId,
      'imageName': imageName,
      'keyPair': keyPair,
      'metadata': metadata,
      'name': name,
      'networks': pulumi.Input.encodeList<GetInstanceV2Network, Map<String, dynamic>>(networks, (value) => value.toMap()),
      'powerState': powerState,
      'region': region,
      'securityGroups': securityGroups,
      'tags': tags,
      'updated': updated,
      'userData': userData,
    };
  }

  factory GetInstanceV2Result.fromMap(Map<String, dynamic> map) {
    return GetInstanceV2Result(
      accessIpV4: map['accessIpV4'] as String,
      accessIpV6: map['accessIpV6'] as String,
      availabilityZone: map['availabilityZone'] as String,
      created: map['created'] as String,
      flavorId: map['flavorId'] as String,
      flavorName: map['flavorName'] as String,
      id: map['id'] as String,
      imageId: map['imageId'] as String,
      imageName: map['imageName'] as String,
      keyPair: map['keyPair'] as String,
      metadata: (map['metadata'] as Map).cast<String, String>(),
      name: map['name'] as String,
      networks: pulumi.Input.decodeList<GetInstanceV2Network>(map['networks'], (value) => GetInstanceV2Network.fromMap((value as Map).cast<String, dynamic>())),
      powerState: map['powerState'] as String,
      region: map['region'] as String,
      securityGroups: (map['securityGroups'] as List).cast<String>(),
      tags: (map['tags'] as List).cast<String>(),
      updated: map['updated'] as String,
      userData: map['userData'] as String,
    );
  }
}

