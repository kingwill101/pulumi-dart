// ignore_for_file: unused_element, unnecessary_cast


class SynapseSparkIdentity {
  /// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Machine Learning Synapse Spark. Changing this forces a new resource to be created.
  ///
  /// > **Note:** This is required when `type` is set to `UserAssigned` or `SystemAssigned, UserAssigned`.
  final List<String>? identityIds;
  /// The Principal ID for the Service Principal associated with the Managed Service Identity of this Machine Learning Synapse Spark.
  final String? principalId;
  /// The Tenant ID for the Service Principal associated with the Managed Service Identity of this Machine Learning Synapse Spark.
  final String? tenantId;
  /// Specifies the type of Managed Service Identity that should be configured on this Machine Learning Synapse Spark. Possible values are `SystemAssigned`, `UserAssigned`, `SystemAssigned, UserAssigned` (to enable both). Changing this forces a new resource to be created.
  final String type;

  /// Creates a new [SynapseSparkIdentity].
  /// [identityIds] Specifies a list of User Assigned Managed Identity IDs to be assigned to this Machine Learning Synapse Spark. Changing this forces a new resource to be created.
  /// [principalId] The Principal ID for the Service Principal associated with the Managed Service Identity of this Machine Learning Synapse Spark.
  /// [tenantId] The Tenant ID for the Service Principal associated with the Managed Service Identity of this Machine Learning Synapse Spark.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this Machine Learning Synapse Spark. Possible values are `SystemAssigned`, `UserAssigned`, `SystemAssigned, UserAssigned` (to enable both). Changing this forces a new resource to be created.
  SynapseSparkIdentity({
    this.identityIds,
    this.principalId,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': ?identityIds,
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory SynapseSparkIdentity.fromMap(Map<String, dynamic> map) {
    return SynapseSparkIdentity(
      identityIds: map['identityIds'] == null ? null : (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

