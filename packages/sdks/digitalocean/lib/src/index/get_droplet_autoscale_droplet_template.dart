// ignore_for_file: unused_element, unnecessary_cast


class GetDropletAutoscaleDropletTemplate {
  /// Droplet image
  final String image;
  /// Enable droplet IPv6
  final bool ipv6;
  /// Droplet project ID
  final String projectId;
  /// Droplet region
  final String region;
  /// Droplet size
  final String size;
  /// Droplet SSH keys
  final List<String> sshKeys;
  /// Droplet tags
  final List<String> tags;
  /// Droplet user data
  final String userData;
  /// Droplet VPC UUID
  final String vpcUuid;
  /// Enable droplet agent
  final bool withDropletAgent;

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
      image: map['image'] as String,
      ipv6: map['ipv6'] as bool,
      projectId: map['projectId'] as String,
      region: map['region'] as String,
      size: map['size'] as String,
      sshKeys: (map['sshKeys'] as List).cast<String>(),
      tags: (map['tags'] as List).cast<String>(),
      userData: map['userData'] as String,
      vpcUuid: map['vpcUuid'] as String,
      withDropletAgent: map['withDropletAgent'] as bool,
    );
  }
}

