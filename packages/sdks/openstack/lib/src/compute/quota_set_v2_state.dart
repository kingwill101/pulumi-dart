// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering QuotaSetV2 resources.
class QuotaSetV2State {
  /// Quota value for cores.
  /// Changing this updates the existing quotaset.
  final pulumi.Input<int>? cores;
  /// Quota value for fixed IPs.
  /// Changing this updates the existing quotaset.
  final pulumi.Input<int>? fixedIps;
  /// Quota value for floating IPs.
  /// Changing this updates the existing quotaset.
  final pulumi.Input<int>? floatingIps;
  /// Quota value for content bytes
  /// of injected files. Changing this updates the existing quotaset.
  final pulumi.Input<int>? injectedFileContentBytes;
  /// Quota value for path bytes of
  /// injected files. Changing this updates the existing quotaset.
  final pulumi.Input<int>? injectedFilePathBytes;
  /// Quota value for injected files.
  /// Changing this updates the existing quotaset.
  final pulumi.Input<int>? injectedFiles;
  /// Quota value for instances.
  /// Changing this updates the existing quotaset.
  final pulumi.Input<int>? instances;
  /// Quota value for key pairs.
  /// Changing this updates the existing quotaset.
  final pulumi.Input<int>? keyPairs;
  /// Quota value for metadata items.
  /// Changing this updates the existing quotaset.
  final pulumi.Input<int>? metadataItems;
  /// ID of the project to manage quotas.
  /// Changing this creates a new quotaset.
  final pulumi.Input<String>? projectId;
  /// Quota value for RAM.
  /// Changing this updates the existing quotaset.
  final pulumi.Input<int>? ram;
  /// The region in which to create the volume. If
  /// omitted, the `region` argument of the provider is used. Changing this
  /// creates a new quotaset.
  final pulumi.Input<String>? region;
  /// Quota value for security group rules.
  /// Changing this updates the existing quotaset.
  final pulumi.Input<int>? securityGroupRules;
  /// Quota value for security groups.
  /// Changing this updates the existing quotaset.
  final pulumi.Input<int>? securityGroups;
  /// Quota value for server groups members.
  /// Changing this updates the existing quotaset.
  final pulumi.Input<int>? serverGroupMembers;
  /// Quota value for server groups.
  /// Changing this updates the existing quotaset.
  final pulumi.Input<int>? serverGroups;

  /// Creates a new [QuotaSetV2State].
  /// [cores] Quota value for cores.
  /// [fixedIps] Quota value for fixed IPs.
  /// [floatingIps] Quota value for floating IPs.
  /// [injectedFileContentBytes] Quota value for content bytes
  /// [injectedFilePathBytes] Quota value for path bytes of
  /// [injectedFiles] Quota value for injected files.
  /// [instances] Quota value for instances.
  /// [keyPairs] Quota value for key pairs.
  /// [metadataItems] Quota value for metadata items.
  /// [projectId] ID of the project to manage quotas.
  /// [ram] Quota value for RAM.
  /// [region] The region in which to create the volume. If
  /// [securityGroupRules] Quota value for security group rules.
  /// [securityGroups] Quota value for security groups.
  /// [serverGroupMembers] Quota value for server groups members.
  /// [serverGroups] Quota value for server groups.
  QuotaSetV2State({
    pulumi.Output<int>? cores,
    pulumi.Output<int>? fixedIps,
    pulumi.Output<int>? floatingIps,
    pulumi.Output<int>? injectedFileContentBytes,
    pulumi.Output<int>? injectedFilePathBytes,
    pulumi.Output<int>? injectedFiles,
    pulumi.Output<int>? instances,
    pulumi.Output<int>? keyPairs,
    pulumi.Output<int>? metadataItems,
    pulumi.Output<String>? projectId,
    pulumi.Output<int>? ram,
    pulumi.Output<String>? region,
    pulumi.Output<int>? securityGroupRules,
    pulumi.Output<int>? securityGroups,
    pulumi.Output<int>? serverGroupMembers,
    pulumi.Output<int>? serverGroups,
  }) :
      cores = pulumi.Input.asOptionalInput<int>(cores),
      fixedIps = pulumi.Input.asOptionalInput<int>(fixedIps),
      floatingIps = pulumi.Input.asOptionalInput<int>(floatingIps),
      injectedFileContentBytes = pulumi.Input.asOptionalInput<int>(injectedFileContentBytes),
      injectedFilePathBytes = pulumi.Input.asOptionalInput<int>(injectedFilePathBytes),
      injectedFiles = pulumi.Input.asOptionalInput<int>(injectedFiles),
      instances = pulumi.Input.asOptionalInput<int>(instances),
      keyPairs = pulumi.Input.asOptionalInput<int>(keyPairs),
      metadataItems = pulumi.Input.asOptionalInput<int>(metadataItems),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      ram = pulumi.Input.asOptionalInput<int>(ram),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroupRules = pulumi.Input.asOptionalInput<int>(securityGroupRules),
      securityGroups = pulumi.Input.asOptionalInput<int>(securityGroups),
      serverGroupMembers = pulumi.Input.asOptionalInput<int>(serverGroupMembers),
      serverGroups = pulumi.Input.asOptionalInput<int>(serverGroups);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cores': ?cores,
      'fixedIps': ?fixedIps,
      'floatingIps': ?floatingIps,
      'injectedFileContentBytes': ?injectedFileContentBytes,
      'injectedFilePathBytes': ?injectedFilePathBytes,
      'injectedFiles': ?injectedFiles,
      'instances': ?instances,
      'keyPairs': ?keyPairs,
      'metadataItems': ?metadataItems,
      'projectId': ?projectId,
      'ram': ?ram,
      'region': ?region,
      'securityGroupRules': ?securityGroupRules,
      'securityGroups': ?securityGroups,
      'serverGroupMembers': ?serverGroupMembers,
      'serverGroups': ?serverGroups,
    };
  }

  factory QuotaSetV2State.fromMap(Map<String, dynamic> map) {
    return QuotaSetV2State(
      cores: map['cores'] == null ? null : pulumi.Output.create<int>(map['cores'] as int),
      fixedIps: map['fixedIps'] == null ? null : pulumi.Output.create<int>(map['fixedIps'] as int),
      floatingIps: map['floatingIps'] == null ? null : pulumi.Output.create<int>(map['floatingIps'] as int),
      injectedFileContentBytes: map['injectedFileContentBytes'] == null ? null : pulumi.Output.create<int>(map['injectedFileContentBytes'] as int),
      injectedFilePathBytes: map['injectedFilePathBytes'] == null ? null : pulumi.Output.create<int>(map['injectedFilePathBytes'] as int),
      injectedFiles: map['injectedFiles'] == null ? null : pulumi.Output.create<int>(map['injectedFiles'] as int),
      instances: map['instances'] == null ? null : pulumi.Output.create<int>(map['instances'] as int),
      keyPairs: map['keyPairs'] == null ? null : pulumi.Output.create<int>(map['keyPairs'] as int),
      metadataItems: map['metadataItems'] == null ? null : pulumi.Output.create<int>(map['metadataItems'] as int),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      ram: map['ram'] == null ? null : pulumi.Output.create<int>(map['ram'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityGroupRules: map['securityGroupRules'] == null ? null : pulumi.Output.create<int>(map['securityGroupRules'] as int),
      securityGroups: map['securityGroups'] == null ? null : pulumi.Output.create<int>(map['securityGroups'] as int),
      serverGroupMembers: map['serverGroupMembers'] == null ? null : pulumi.Output.create<int>(map['serverGroupMembers'] as int),
      serverGroups: map['serverGroups'] == null ? null : pulumi.Output.create<int>(map['serverGroups'] as int),
    );
  }
}

