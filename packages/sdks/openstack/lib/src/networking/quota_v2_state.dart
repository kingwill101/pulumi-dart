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
    pulumi.Output<int>? floatingip,
    pulumi.Output<int>? network,
    pulumi.Output<int>? port,
    pulumi.Output<String>? projectId,
    pulumi.Output<int>? rbacPolicy,
    pulumi.Output<String>? region,
    pulumi.Output<int>? router,
    pulumi.Output<int>? securityGroup,
    pulumi.Output<int>? securityGroupRule,
    pulumi.Output<int>? subnet,
    pulumi.Output<int>? subnetpool,
  }) :
      floatingip = pulumi.Input.asOptionalInput<int>(floatingip),
      network = pulumi.Input.asOptionalInput<int>(network),
      port = pulumi.Input.asOptionalInput<int>(port),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      rbacPolicy = pulumi.Input.asOptionalInput<int>(rbacPolicy),
      region = pulumi.Input.asOptionalInput<String>(region),
      router = pulumi.Input.asOptionalInput<int>(router),
      securityGroup = pulumi.Input.asOptionalInput<int>(securityGroup),
      securityGroupRule = pulumi.Input.asOptionalInput<int>(securityGroupRule),
      subnet = pulumi.Input.asOptionalInput<int>(subnet),
      subnetpool = pulumi.Input.asOptionalInput<int>(subnetpool);

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
      floatingip: map['floatingip'] == null ? null : pulumi.Output.create<int>(map['floatingip'] as int),
      network: map['network'] == null ? null : pulumi.Output.create<int>(map['network'] as int),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      rbacPolicy: map['rbacPolicy'] == null ? null : pulumi.Output.create<int>(map['rbacPolicy'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      router: map['router'] == null ? null : pulumi.Output.create<int>(map['router'] as int),
      securityGroup: map['securityGroup'] == null ? null : pulumi.Output.create<int>(map['securityGroup'] as int),
      securityGroupRule: map['securityGroupRule'] == null ? null : pulumi.Output.create<int>(map['securityGroupRule'] as int),
      subnet: map['subnet'] == null ? null : pulumi.Output.create<int>(map['subnet'] as int),
      subnetpool: map['subnetpool'] == null ? null : pulumi.Output.create<int>(map['subnetpool'] as int),
    );
  }
}

