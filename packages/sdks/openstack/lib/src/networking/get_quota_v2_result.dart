// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getQuotaV2.
class GetQuotaV2Result {
  /// The number of allowed floating ips.
  final int floatingip;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The number of allowed networks.
  final int network;
  /// The number of allowed ports.
  final int port;
  /// See Argument Reference above.
  final String projectId;
  /// The number of allowed rbac policies.
  final int rbacPolicy;
  /// See Argument Reference above.
  final String region;
  /// The amount of allowed routers.
  final int router;
  /// The number of allowed security groups.
  final int securityGroup;
  /// The number of allowed security group rules.
  final int securityGroupRule;
  /// The number of allowed subnets.
  /// * `subnetpool-` - The number of allowed subnet pools.
  final int subnet;
  final int subnetpool;

  /// Creates a new [GetQuotaV2Result].
  /// [floatingip] The number of allowed floating ips.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [network] The number of allowed networks.
  /// [port] The number of allowed ports.
  /// [projectId] See Argument Reference above.
  /// [rbacPolicy] The number of allowed rbac policies.
  /// [region] See Argument Reference above.
  /// [router] The amount of allowed routers.
  /// [securityGroup] The number of allowed security groups.
  /// [securityGroupRule] The number of allowed security group rules.
  /// [subnet] The number of allowed subnets.
  /// [subnetpool] Required.
  const GetQuotaV2Result({
    required this.floatingip,
    required this.id,
    required this.network,
    required this.port,
    required this.projectId,
    required this.rbacPolicy,
    required this.region,
    required this.router,
    required this.securityGroup,
    required this.securityGroupRule,
    required this.subnet,
    required this.subnetpool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'floatingip': floatingip,
      'id': id,
      'network': network,
      'port': port,
      'projectId': projectId,
      'rbacPolicy': rbacPolicy,
      'region': region,
      'router': router,
      'securityGroup': securityGroup,
      'securityGroupRule': securityGroupRule,
      'subnet': subnet,
      'subnetpool': subnetpool,
    };
  }

  factory GetQuotaV2Result.fromMap(Map<String, dynamic> map) {
    return GetQuotaV2Result(
      floatingip: map['floatingip'] as int,
      id: map['id'] as String,
      network: map['network'] as int,
      port: map['port'] as int,
      projectId: map['projectId'] as String,
      rbacPolicy: map['rbacPolicy'] as int,
      region: map['region'] as String,
      router: map['router'] as int,
      securityGroup: map['securityGroup'] as int,
      securityGroupRule: map['securityGroupRule'] as int,
      subnet: map['subnet'] as int,
      subnetpool: map['subnetpool'] as int,
    );
  }
}

