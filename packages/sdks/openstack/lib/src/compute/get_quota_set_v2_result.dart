// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getQuotaSetV2.
class GetQuotaSetV2Result {
  /// The number of allowed server cores.
  final int cores;
  /// The number of allowed fixed IP addresses. Available until version 2.35.
  final int fixedIps;
  /// The number of allowed floating IP addresses. Available until version 2.35.
  final int floatingIps;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The number of allowed bytes of content for each injected file. Available until version 2.56.
  final int injectedFileContentBytes;
  /// The number of allowed bytes for each injected file path. Available until version 2.56.
  final int injectedFilePathBytes;
  /// The number of allowed injected files. Available until version 2.56.
  final int injectedFiles;
  /// The number of allowed servers.
  final int instances;
  /// The number of allowed key pairs for each user.
  final int keyPairs;
  /// The number of allowed metadata items for each server.
  final int metadataItems;
  /// See Argument Reference above.
  final String projectId;
  /// The amount of allowed server RAM, in MiB.
  final int ram;
  /// See Argument Reference above.
  final String region;
  /// The number of allowed rules for each security group. Available until version 2.35.
  final int securityGroupRules;
  /// The number of allowed security groups. Available until version 2.35.
  final int securityGroups;
  /// The number of allowed members for each server group.
  final int serverGroupMembers;
  /// The number of allowed server groups.
  final int serverGroups;

  /// Creates a new [GetQuotaSetV2Result].
  /// [cores] The number of allowed server cores.
  /// [fixedIps] The number of allowed fixed IP addresses. Available until version 2.35.
  /// [floatingIps] The number of allowed floating IP addresses. Available until version 2.35.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [injectedFileContentBytes] The number of allowed bytes of content for each injected file. Available until version 2.56.
  /// [injectedFilePathBytes] The number of allowed bytes for each injected file path. Available until version 2.56.
  /// [injectedFiles] The number of allowed injected files. Available until version 2.56.
  /// [instances] The number of allowed servers.
  /// [keyPairs] The number of allowed key pairs for each user.
  /// [metadataItems] The number of allowed metadata items for each server.
  /// [projectId] See Argument Reference above.
  /// [ram] The amount of allowed server RAM, in MiB.
  /// [region] See Argument Reference above.
  /// [securityGroupRules] The number of allowed rules for each security group. Available until version 2.35.
  /// [securityGroups] The number of allowed security groups. Available until version 2.35.
  /// [serverGroupMembers] The number of allowed members for each server group.
  /// [serverGroups] The number of allowed server groups.
  const GetQuotaSetV2Result({
    required this.cores,
    required this.fixedIps,
    required this.floatingIps,
    required this.id,
    required this.injectedFileContentBytes,
    required this.injectedFilePathBytes,
    required this.injectedFiles,
    required this.instances,
    required this.keyPairs,
    required this.metadataItems,
    required this.projectId,
    required this.ram,
    required this.region,
    required this.securityGroupRules,
    required this.securityGroups,
    required this.serverGroupMembers,
    required this.serverGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cores': cores,
      'fixedIps': fixedIps,
      'floatingIps': floatingIps,
      'id': id,
      'injectedFileContentBytes': injectedFileContentBytes,
      'injectedFilePathBytes': injectedFilePathBytes,
      'injectedFiles': injectedFiles,
      'instances': instances,
      'keyPairs': keyPairs,
      'metadataItems': metadataItems,
      'projectId': projectId,
      'ram': ram,
      'region': region,
      'securityGroupRules': securityGroupRules,
      'securityGroups': securityGroups,
      'serverGroupMembers': serverGroupMembers,
      'serverGroups': serverGroups,
    };
  }

  factory GetQuotaSetV2Result.fromMap(Map<String, dynamic> map) {
    return GetQuotaSetV2Result(
      cores: map['cores'] as int,
      fixedIps: map['fixedIps'] as int,
      floatingIps: map['floatingIps'] as int,
      id: map['id'] as String,
      injectedFileContentBytes: map['injectedFileContentBytes'] as int,
      injectedFilePathBytes: map['injectedFilePathBytes'] as int,
      injectedFiles: map['injectedFiles'] as int,
      instances: map['instances'] as int,
      keyPairs: map['keyPairs'] as int,
      metadataItems: map['metadataItems'] as int,
      projectId: map['projectId'] as String,
      ram: map['ram'] as int,
      region: map['region'] as String,
      securityGroupRules: map['securityGroupRules'] as int,
      securityGroups: map['securityGroups'] as int,
      serverGroupMembers: map['serverGroupMembers'] as int,
      serverGroups: map['serverGroups'] as int,
    );
  }
}

