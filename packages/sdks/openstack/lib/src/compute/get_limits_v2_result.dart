// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLimitsV2.
class GetLimitsV2Result {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The number of allowed metadata items for each image. Starting from version 2.39 this field is dropped from ‘os-limits’ response, because ‘image-metadata’ proxy API was deprecated. Available until version 2.38.
  final int maxImageMeta;
  /// The number of allowed injected files for the tenant. Available until version 2.56.
  final int maxPersonality;
  /// The number of allowed bytes of content for each injected file. Available until version 2.56.
  final int maxPersonalitySize;
  /// The number of allowed rules for each security group. Available until version 2.35.
  final int maxSecurityGroupRules;
  /// The number of allowed security groups for the tenant. Available until version 2.35.
  final int maxSecurityGroups;
  /// The number of allowed members for each server group.
  final int maxServerGroupMembers;
  /// The number of allowed server groups for the tenant.
  final int maxServerGroups;
  /// The number of allowed server groups for the tenant.
  final int maxServerMeta;
  /// The number of allowed server cores for the tenant.
  final int maxTotalCores;
  /// The number of allowed floating IP addresses for each tenant. Available until version 2.35.
  final int maxTotalFloatingIps;
  /// The number of allowed servers for the tenant.
  final int maxTotalInstances;
  /// The number of allowed key pairs for the user.
  final int maxTotalKeypairs;
  /// The number of allowed floating IP addresses for the tenant. Available until version 2.35.
  final int maxTotalRamSize;
  /// See Argument Reference above.
  final String projectId;
  /// See Argument Reference above.
  final String region;
  /// The number of used server cores in the tenant.
  final int totalCoresUsed;
  /// The number of used floating IP addresses in the tenant.
  final int totalFloatingIpsUsed;
  /// The number of used server cores in the tenant.
  final int totalInstancesUsed;
  /// The amount of used server RAM in the tenant.
  final int totalRamUsed;
  /// The number of used security groups in the tenant. Available until version 2.35.
  final int totalSecurityGroupsUsed;
  /// The number of used server groups in each tenant.
  final int totalServerGroupsUsed;

  /// Creates a new [GetLimitsV2Result].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [maxImageMeta] The number of allowed metadata items for each image. Starting from version 2.39 this field is dropped from ‘os-limits’ response, because ‘image-metadata’ proxy API was deprecated. Available until version 2.38.
  /// [maxPersonality] The number of allowed injected files for the tenant. Available until version 2.56.
  /// [maxPersonalitySize] The number of allowed bytes of content for each injected file. Available until version 2.56.
  /// [maxSecurityGroupRules] The number of allowed rules for each security group. Available until version 2.35.
  /// [maxSecurityGroups] The number of allowed security groups for the tenant. Available until version 2.35.
  /// [maxServerGroupMembers] The number of allowed members for each server group.
  /// [maxServerGroups] The number of allowed server groups for the tenant.
  /// [maxServerMeta] The number of allowed server groups for the tenant.
  /// [maxTotalCores] The number of allowed server cores for the tenant.
  /// [maxTotalFloatingIps] The number of allowed floating IP addresses for each tenant. Available until version 2.35.
  /// [maxTotalInstances] The number of allowed servers for the tenant.
  /// [maxTotalKeypairs] The number of allowed key pairs for the user.
  /// [maxTotalRamSize] The number of allowed floating IP addresses for the tenant. Available until version 2.35.
  /// [projectId] See Argument Reference above.
  /// [region] See Argument Reference above.
  /// [totalCoresUsed] The number of used server cores in the tenant.
  /// [totalFloatingIpsUsed] The number of used floating IP addresses in the tenant.
  /// [totalInstancesUsed] The number of used server cores in the tenant.
  /// [totalRamUsed] The amount of used server RAM in the tenant.
  /// [totalSecurityGroupsUsed] The number of used security groups in the tenant. Available until version 2.35.
  /// [totalServerGroupsUsed] The number of used server groups in each tenant.
  const GetLimitsV2Result({
    required this.id,
    required this.maxImageMeta,
    required this.maxPersonality,
    required this.maxPersonalitySize,
    required this.maxSecurityGroupRules,
    required this.maxSecurityGroups,
    required this.maxServerGroupMembers,
    required this.maxServerGroups,
    required this.maxServerMeta,
    required this.maxTotalCores,
    required this.maxTotalFloatingIps,
    required this.maxTotalInstances,
    required this.maxTotalKeypairs,
    required this.maxTotalRamSize,
    required this.projectId,
    required this.region,
    required this.totalCoresUsed,
    required this.totalFloatingIpsUsed,
    required this.totalInstancesUsed,
    required this.totalRamUsed,
    required this.totalSecurityGroupsUsed,
    required this.totalServerGroupsUsed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'maxImageMeta': maxImageMeta,
      'maxPersonality': maxPersonality,
      'maxPersonalitySize': maxPersonalitySize,
      'maxSecurityGroupRules': maxSecurityGroupRules,
      'maxSecurityGroups': maxSecurityGroups,
      'maxServerGroupMembers': maxServerGroupMembers,
      'maxServerGroups': maxServerGroups,
      'maxServerMeta': maxServerMeta,
      'maxTotalCores': maxTotalCores,
      'maxTotalFloatingIps': maxTotalFloatingIps,
      'maxTotalInstances': maxTotalInstances,
      'maxTotalKeypairs': maxTotalKeypairs,
      'maxTotalRamSize': maxTotalRamSize,
      'projectId': projectId,
      'region': region,
      'totalCoresUsed': totalCoresUsed,
      'totalFloatingIpsUsed': totalFloatingIpsUsed,
      'totalInstancesUsed': totalInstancesUsed,
      'totalRamUsed': totalRamUsed,
      'totalSecurityGroupsUsed': totalSecurityGroupsUsed,
      'totalServerGroupsUsed': totalServerGroupsUsed,
    };
  }

  factory GetLimitsV2Result.fromMap(Map<String, dynamic> map) {
    return GetLimitsV2Result(
      id: map['id'] as String,
      maxImageMeta: map['maxImageMeta'] as int,
      maxPersonality: map['maxPersonality'] as int,
      maxPersonalitySize: map['maxPersonalitySize'] as int,
      maxSecurityGroupRules: map['maxSecurityGroupRules'] as int,
      maxSecurityGroups: map['maxSecurityGroups'] as int,
      maxServerGroupMembers: map['maxServerGroupMembers'] as int,
      maxServerGroups: map['maxServerGroups'] as int,
      maxServerMeta: map['maxServerMeta'] as int,
      maxTotalCores: map['maxTotalCores'] as int,
      maxTotalFloatingIps: map['maxTotalFloatingIps'] as int,
      maxTotalInstances: map['maxTotalInstances'] as int,
      maxTotalKeypairs: map['maxTotalKeypairs'] as int,
      maxTotalRamSize: map['maxTotalRamSize'] as int,
      projectId: map['projectId'] as String,
      region: map['region'] as String,
      totalCoresUsed: map['totalCoresUsed'] as int,
      totalFloatingIpsUsed: map['totalFloatingIpsUsed'] as int,
      totalInstancesUsed: map['totalInstancesUsed'] as int,
      totalRamUsed: map['totalRamUsed'] as int,
      totalSecurityGroupsUsed: map['totalSecurityGroupsUsed'] as int,
      totalServerGroupsUsed: map['totalServerGroupsUsed'] as int,
    );
  }
}

