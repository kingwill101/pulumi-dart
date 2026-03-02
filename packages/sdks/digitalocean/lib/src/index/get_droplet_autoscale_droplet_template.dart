// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDropletAutoscaleDropletTemplate {
  /// Droplet image
  final pulumi.Input<String> image;
  /// Enable droplet IPv6
  final pulumi.Input<bool> ipv6;
  /// Droplet project ID
  final pulumi.Input<String> projectId;
  /// Droplet region
  final pulumi.Input<String> region;
  /// Droplet size
  final pulumi.Input<String> size;
  /// Droplet SSH keys
  final pulumi.Input<List<String>> sshKeys;
  /// Droplet tags
  final pulumi.Input<List<String>> tags;
  /// Droplet user data
  final pulumi.Input<String> userData;
  /// Droplet VPC UUID
  final pulumi.Input<String> vpcUuid;
  /// Enable droplet agent
  final pulumi.Input<bool> withDropletAgent;

  /// Creates a new [GetDropletAutoscaleDropletTemplate].
  /// [image] Droplet image
  /// [ipv6] Enable droplet IPv6
  /// [projectId] Droplet project ID
  /// [region] Droplet region
  /// [size] Droplet size
  /// [sshKeys] Droplet SSH keys
  /// [tags] Droplet tags
  /// [userData] Droplet user data
  /// [vpcUuid] Droplet VPC UUID
  /// [withDropletAgent] Enable droplet agent
  GetDropletAutoscaleDropletTemplate({
    required this.image,
    required this.ipv6,
    required this.projectId,
    required this.region,
    required this.size,
    required this.sshKeys,
    required this.tags,
    required this.userData,
    required this.vpcUuid,
    required this.withDropletAgent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'ipv6': ipv6,
      'projectId': projectId,
      'region': region,
      'size': size,
      'sshKeys': sshKeys,
      'tags': tags,
      'userData': userData,
      'vpcUuid': vpcUuid,
      'withDropletAgent': withDropletAgent,
    };
  }

  factory GetDropletAutoscaleDropletTemplate.fromMap(Map<String, dynamic> map) {
    return GetDropletAutoscaleDropletTemplate(
      image: (map['image'] as String).input(),
      ipv6: (map['ipv6'] as bool).input(),
      projectId: (map['projectId'] as String).input(),
      region: (map['region'] as String).input(),
      size: (map['size'] as String).input(),
      sshKeys: ((map['sshKeys'] as List).cast<String>()).input(),
      tags: ((map['tags'] as List).cast<String>()).input(),
      userData: (map['userData'] as String).input(),
      vpcUuid: (map['vpcUuid'] as String).input(),
      withDropletAgent: (map['withDropletAgent'] as bool).input(),
    );
  }
}

