// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getFwGroupV2.
class GetFwGroupV2Result {
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

  /// Creates a new [GetFwGroupV2Result].
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
  GetFwGroupV2Result({
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

  factory GetFwGroupV2Result.fromMap(Map<String, dynamic> map) {
    return GetFwGroupV2Result(
      adminStateUp: map['adminStateUp'] as bool,
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      egressFirewallPolicyId: (() {
        final guardedValue = map['egressFirewallPolicyId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      groupId: (() {
        final guardedValue = map['groupId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      ingressFirewallPolicyId: (() {
        final guardedValue = map['ingressFirewallPolicyId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      ports: (map['ports'] as List).cast<String>(),
      projectId: map['projectId'] as String,
      region: map['region'] as String,
      shared: map['shared'] as bool,
      status: map['status'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}
