// ignore_for_file: unused_element, unnecessary_cast


class SingleNodeVirtualInstanceIdentity {
  /// A list of User Assigned Managed Identity IDs to be assigned to this SAP Single Node Virtual Instance.
  final List<String> identityIds;
  /// The type of Managed Service Identity that should be configured on this SAP Single Node Virtual Instance. The only possible value is `UserAssigned`.
  final String type;

  /// Creates a new [SingleNodeVirtualInstanceIdentity].
  /// [identityIds] A list of User Assigned Managed Identity IDs to be assigned to this SAP Single Node Virtual Instance.
  /// [type] The type of Managed Service Identity that should be configured on this SAP Single Node Virtual Instance. The only possible value is `UserAssigned`.
  SingleNodeVirtualInstanceIdentity({
    required this.identityIds,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': identityIds,
      'type': type,
    };
  }

  factory SingleNodeVirtualInstanceIdentity.fromMap(Map<String, dynamic> map) {
    return SingleNodeVirtualInstanceIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}

