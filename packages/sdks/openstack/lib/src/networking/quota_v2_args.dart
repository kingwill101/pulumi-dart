// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_quota_v2_quota_v2_args_doc}
/// The set of arguments for QuotaV2.
/// {@endtemplate}
/// {@macro pulumi_networking_quota_v2_quota_v2_args_doc}
class QuotaV2Args {
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
  final pulumi.Input<String> projectId;
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

  /// Creates a new [QuotaV2Args].
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
  const QuotaV2Args({
    this.floatingip,
    this.network,
    this.port,
    required this.projectId,
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
      'projectId': projectId,
      'rbacPolicy': ?rbacPolicy,
      'region': ?region,
      'router': ?router,
      'securityGroup': ?securityGroup,
      'securityGroupRule': ?securityGroupRule,
      'subnet': ?subnet,
      'subnetpool': ?subnetpool,
    };
  }

  factory QuotaV2Args.fromMap(Map<String, dynamic> map) {
    return QuotaV2Args(
      floatingip: (() { final guardedValue = map['floatingip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      rbacPolicy: (() { final guardedValue = map['rbacPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      router: (() { final guardedValue = map['router']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      securityGroup: (() { final guardedValue = map['securityGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      securityGroupRule: (() { final guardedValue = map['securityGroupRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      subnetpool: (() { final guardedValue = map['subnetpool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

