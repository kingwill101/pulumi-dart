// ignore_for_file: unused_element, unnecessary_cast


class GetNetworkManagerConnectivityConfigurationHub {
  /// The resource ID used as hub in Hub and Spoke topology.
  final String resourceId;
  /// The resource type used as hub in Hub and Spoke topology.
  final String resourceType;

  /// Creates a new [GetNetworkManagerConnectivityConfigurationHub].
  /// [resourceId] The resource ID used as hub in Hub and Spoke topology.
  /// [resourceType] The resource type used as hub in Hub and Spoke topology.
  GetNetworkManagerConnectivityConfigurationHub({
    required this.resourceId,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': resourceId,
      'resourceType': resourceType,
    };
  }

  factory GetNetworkManagerConnectivityConfigurationHub.fromMap(Map<String, dynamic> map) {
    return GetNetworkManagerConnectivityConfigurationHub(
      resourceId: map['resourceId'] as String,
      resourceType: map['resourceType'] as String,
    );
  }
}

