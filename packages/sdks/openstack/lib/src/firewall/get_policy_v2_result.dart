// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPolicyV2.
class GetPolicyV2Result {
  /// The audit status of the firewall policy.
  final bool audited;
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// See Argument Reference above.
  final String? name;
  /// See Argument Reference above.
  final String? policyId;
  /// See Argument Reference above.
  final String projectId;
  /// See Argument Reference above.
  final String region;
  /// The array of one or more firewall rules that comprise the policy.
  final List<String> rules;
  /// The sharing status of the firewall policy.
  final bool shared;
  /// See Argument Reference above.
  final String tenantId;

  /// Creates a new [GetPolicyV2Result].
  /// [audited] The audit status of the firewall policy.
  /// [description] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] See Argument Reference above.
  /// [policyId] See Argument Reference above.
  /// [projectId] See Argument Reference above.
  /// [region] See Argument Reference above.
  /// [rules] The array of one or more firewall rules that comprise the policy.
  /// [shared] The sharing status of the firewall policy.
  /// [tenantId] See Argument Reference above.
  GetPolicyV2Result({
    required this.audited,
    this.description,
    required this.id,
    this.name,
    this.policyId,
    required this.projectId,
    required this.region,
    required this.rules,
    required this.shared,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audited': audited,
      'description': ?description,
      'id': id,
      'name': ?name,
      'policyId': ?policyId,
      'projectId': projectId,
      'region': region,
      'rules': rules,
      'shared': shared,
      'tenantId': tenantId,
    };
  }

  factory GetPolicyV2Result.fromMap(Map<String, dynamic> map) {
    return GetPolicyV2Result(
      audited: map['audited'] as bool,
      description: map['description'] == null ? null : map['description']! as String,
      id: map['id'] as String,
      name: map['name'] == null ? null : map['name']! as String,
      policyId: map['policyId'] == null ? null : map['policyId']! as String,
      projectId: map['projectId'] as String,
      region: map['region'] as String,
      rules: (map['rules'] as List).cast<String>(),
      shared: map['shared'] as bool,
      tenantId: map['tenantId'] as String,
    );
  }
}

