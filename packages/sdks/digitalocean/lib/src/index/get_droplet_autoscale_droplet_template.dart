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
      image: pulumi.Input.fromValue(map['image'] as String),
      ipv6: pulumi.Input.fromValue(map['ipv6'] as bool),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
      size: pulumi.Input.fromValue(map['size'] as String),
      sshKeys: pulumi.Input.fromValue((map['sshKeys'] as List).cast<String>()),
      tags: pulumi.Input.fromValue((map['tags'] as List).cast<String>()),
      userData: pulumi.Input.fromValue(map['userData'] as String),
      vpcUuid: pulumi.Input.fromValue(map['vpcUuid'] as String),
      withDropletAgent: pulumi.Input.fromValue(map['withDropletAgent'] as bool),
    );
  }
}
