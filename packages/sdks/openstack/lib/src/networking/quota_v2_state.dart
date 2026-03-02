// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering QuotaV2 resources.
class QuotaV2State {
  /// Quota value for floating IPs. Changing this updates the
  /// existing quota.
  final pulumi.Input<int>? floatingip;
  /// Quota value for networks. Changing this updates the
  /// existing quota.
  final pulumi.Input<int>? network;
  /// Quota value for ports. Changing this updates the
  /// existing quota.
  final pulumi.Input<int>? port;
  /// ID of the project to manage quota. Changing this
  /// creates new quota.
  final pulumi.Input<String>? projectId;
  /// Quota value for RBAC policies.
  /// Changing this updates the existing quota.
  final pulumi.Input<int>? rbacPolicy;
  /// The region in which to create the quota. If
  /// omitted, the `region` argument of the provider is used. Changing this
  /// creates new quota.
  final pulumi.Input<String>? region;
  /// Quota value for routers. Changing this updates the
  /// existing quota.
  final pulumi.Input<int>? router;
  /// Quota value for security groups. Changing
  /// this updates the existing quota.
  final pulumi.Input<int>? securityGroup;
  /// Quota value for security group rules.
  /// Changing this updates the existing quota.
  final pulumi.Input<int>? securityGroupRule;
  /// Quota value for subnets. Changing
  /// this updates the existing quota.
  final pulumi.Input<int>? subnet;
  /// Quota value for subnetpools.
  /// Changing this updates the existing quota.
  final pulumi.Input<int>? subnetpool;

  /// Creates a new [QuotaV2State].
  /// [floatingip] Quota value for floating IPs. Changing this updates the
  /// [network] Quota value for networks. Changing this updates the
  /// [port] Quota value for ports. Changing this updates the
  /// [projectId] ID of the project to manage quota. Changing this
  /// [rbacPolicy] Quota value for RBAC policies.
  /// [region] The region in which to create the quota. If
  /// [router] Quota value for routers. Changing this updates the
  /// [securityGroup] Quota value for security groups. Changing
  /// [securityGroupRule] Quota value for security group rules.
  /// [subnet] Quota value for subnets. Changing
  /// [subnetpool] Quota value for subnetpools.
  QuotaV2State({
    this.floatingip,
    this.network,
    this.port,
    this.projectId,
    this.rbacPolicy,
    this.region,
    this.router,
    this.securityGroup,
    this.securityGroupRule,
    this.subnet,
    this.subnetpool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'floatingip': ?floatingip,
      'network': ?network,
      'port': ?port,
      'projectId': ?projectId,
      'rbacPolicy': ?rbacPolicy,
      'region': ?region,
      'router': ?router,
      'securityGroup': ?securityGroup,
      'securityGroupRule': ?securityGroupRule,
      'subnet': ?subnet,
      'subnetpool': ?subnetpool,
    };
  }

  factory QuotaV2State.fromMap(Map<String, dynamic> map) {
    return QuotaV2State(
      floatingip: map['floatingip'] == null ? null : (map['floatingip']! as int).input(),
      network: map['network'] == null ? null : (map['network']! as int).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      projectId: map['projectId'] == null ? null : (map['projectId']! as String).input(),
      rbacPolicy: map['rbacPolicy'] == null ? null : (map['rbacPolicy']! as int).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      router: map['router'] == null ? null : (map['router']! as int).input(),
      securityGroup: map['securityGroup'] == null ? null : (map['securityGroup']! as int).input(),
      securityGroupRule: map['securityGroupRule'] == null ? null : (map['securityGroupRule']! as int).input(),
      subnet: map['subnet'] == null ? null : (map['subnet']! as int).input(),
      subnetpool: map['subnetpool'] == null ? null : (map['subnetpool']! as int).input(),
    );
  }
}

