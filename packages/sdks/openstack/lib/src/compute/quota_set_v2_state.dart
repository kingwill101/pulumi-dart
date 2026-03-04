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
    this.cores,
    this.fixedIps,
    this.floatingIps,
    this.injectedFileContentBytes,
    this.injectedFilePathBytes,
    this.injectedFiles,
    this.instances,
    this.keyPairs,
    this.metadataItems,
    this.projectId,
    this.ram,
    this.region,
    this.securityGroupRules,
    this.securityGroups,
    this.serverGroupMembers,
    this.serverGroups,
  });

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
      cores: (() {
        final guardedValue = map['cores'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      fixedIps: (() {
        final guardedValue = map['fixedIps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      floatingIps: (() {
        final guardedValue = map['floatingIps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      injectedFileContentBytes: (() {
        final guardedValue = map['injectedFileContentBytes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      injectedFilePathBytes: (() {
        final guardedValue = map['injectedFilePathBytes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      injectedFiles: (() {
        final guardedValue = map['injectedFiles'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      instances: (() {
        final guardedValue = map['instances'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      keyPairs: (() {
        final guardedValue = map['keyPairs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      metadataItems: (() {
        final guardedValue = map['metadataItems'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      projectId: (() {
        final guardedValue = map['projectId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ram: (() {
        final guardedValue = map['ram'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      securityGroupRules: (() {
        final guardedValue = map['securityGroupRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      securityGroups: (() {
        final guardedValue = map['securityGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      serverGroupMembers: (() {
        final guardedValue = map['serverGroupMembers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      serverGroups: (() {
        final guardedValue = map['serverGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
