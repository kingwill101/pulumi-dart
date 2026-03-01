// ignore_for_file: unused_element, unnecessary_cast


class ThreeTierVirtualInstanceIdentity {
  /// A list of User Assigned Managed Identity IDs to be assigned to this SAP Three Tier Virtual Instance.
  final List<String> identityIds;
  /// The type of Managed Service Identity that should be configured on this SAP Three Tier Virtual Instance. Only possible value is `UserAssigned`.
  final String type;

  /// Creates a new [ThreeTierVirtualInstanceIdentity].
  /// [identityIds] A list of User Assigned Managed Identity IDs to be assigned to this SAP Three Tier Virtual Instance.
  /// [type] The type of Managed Service Identity that should be configured on this SAP Three Tier Virtual Instance. Only possible value is `UserAssigned`.
  ThreeTierVirtualInstanceIdentity({
    required this.identityIds,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': identityIds,
      'type': type,
    };
  }

  factory ThreeTierVirtualInstanceIdentity.fromMap(Map<String, dynamic> map) {
    return ThreeTierVirtualInstanceIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}

