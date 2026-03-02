// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getGroupV2.
class GetGroupV2Result {
  /// See Argument Reference above.
  final bool adminStateUp;
  /// See Argument Reference above.
  final String? description;
  /// See Argument Reference above.
  final String? egressFirewallPolicyId;
  /// See Argument Reference above.
  final String? groupId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// See Argument Reference above.
  final String? ingressFirewallPolicyId;
  /// See Argument Reference above.
  final String? name;
  /// Ports associated with the firewall group.
  final List<String> ports;
  /// See Argument Reference above.
  final String projectId;
  /// See Argument Reference above.
  final String region;
  /// See Argument Reference above.
  final bool shared;
  /// See Argument Reference above.
  final String status;
  /// See Argument Reference above.
  final String tenantId;

  /// Creates a new [GetGroupV2Result].
  /// [adminStateUp] See Argument Reference above.
  /// [description] See Argument Reference above.
  /// [egressFirewallPolicyId] See Argument Reference above.
  /// [groupId] See Argument Reference above.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ingressFirewallPolicyId] See Argument Reference above.
  /// [name] See Argument Reference above.
  /// [ports] Ports associated with the firewall group.
  /// [projectId] See Argument Reference above.
  /// [region] See Argument Reference above.
  /// [shared] See Argument Reference above.
  /// [status] See Argument Reference above.
  /// [tenantId] See Argument Reference above.
  GetGroupV2Result({
    required this.adminStateUp,
    this.description,
    this.egressFirewallPolicyId,
    this.groupId,
    required this.id,
    this.ingressFirewallPolicyId,
    this.name,
    required this.ports,
    required this.projectId,
    required this.region,
    required this.shared,
    required this.status,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminStateUp': adminStateUp,
      'description': ?description,
      'egressFirewallPolicyId': ?egressFirewallPolicyId,
      'groupId': ?groupId,
      'id': id,
      'ingressFirewallPolicyId': ?ingressFirewallPolicyId,
      'name': ?name,
      'ports': ports,
      'projectId': projectId,
      'region': region,
      'shared': shared,
      'status': status,
      'tenantId': tenantId,
    };
  }

  factory GetGroupV2Result.fromMap(Map<String, dynamic> map) {
    return GetGroupV2Result(
      adminStateUp: map['adminStateUp'] as bool,
      description: map['description'] == null ? null : map['description']! as String,
      egressFirewallPolicyId: map['egressFirewallPolicyId'] == null ? null : map['egressFirewallPolicyId']! as String,
      groupId: map['groupId'] == null ? null : map['groupId']! as String,
      id: map['id'] as String,
      ingressFirewallPolicyId: map['ingressFirewallPolicyId'] == null ? null : map['ingressFirewallPolicyId']! as String,
      name: map['name'] == null ? null : map['name']! as String,
      ports: (map['ports'] as List).cast<String>(),
      projectId: map['projectId'] as String,
      region: map['region'] as String,
      shared: map['shared'] as bool,
      status: map['status'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}

