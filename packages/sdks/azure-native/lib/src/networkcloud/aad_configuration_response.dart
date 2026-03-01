// ignore_for_file: unused_element, unnecessary_cast


class AadConfigurationResponse {
  /// The list of Azure Active Directory group object IDs that will have an administrative role on the Kubernetes cluster.
  final List<String> adminGroupObjectIds;

  /// Creates a new [AadConfigurationResponse].
  /// [adminGroupObjectIds] The list of Azure Active Directory group object IDs that will have an administrative role on the Kubernetes cluster.
  AadConfigurationResponse({
    required this.adminGroupObjectIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminGroupObjectIds': adminGroupObjectIds,
    };
  }

  factory AadConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AadConfigurationResponse(
      adminGroupObjectIds: (map['adminGroupObjectIds'] as List).cast<String>(),
    );
  }
}

