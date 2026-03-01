// ignore_for_file: unused_element, unnecessary_cast


class GetClusterPscConfig {
  /// Create an instance that allows connections from Private Service Connect endpoints to the instance.
  final bool pscEnabled;
  /// The project number that needs to be allowlisted on the network attachment to enable outbound connectivity, if the network attachment is configured to ACCEPT_MANUAL connections.
  /// In case the network attachment is configured to ACCEPT_AUTOMATIC, this project number does not need to be allowlisted explicitly.
  final int serviceOwnedProjectNumber;

  /// Creates a new [GetClusterPscConfig].
  /// [pscEnabled] Create an instance that allows connections from Private Service Connect endpoints to the instance.
  /// [serviceOwnedProjectNumber] The project number that needs to be allowlisted on the network attachment to enable outbound connectivity, if the network attachment is configured to ACCEPT_MANUAL connections.
  GetClusterPscConfig({
    required this.pscEnabled,
    required this.serviceOwnedProjectNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pscEnabled': pscEnabled,
      'serviceOwnedProjectNumber': serviceOwnedProjectNumber,
    };
  }

  factory GetClusterPscConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterPscConfig(
      pscEnabled: map['pscEnabled'] as bool,
      serviceOwnedProjectNumber: map['serviceOwnedProjectNumber'] as int,
    );
  }
}

