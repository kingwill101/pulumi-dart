// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getService.
class GetServiceResult {
  /// ID of the project that produces and owns this service.
  final String producerProjectId;
  /// The name of the service. See the [overview](https://cloud.google.com/service-infrastructure/docs/overview) for naming requirements.
  final String serviceName;

  /// Creates a new [GetServiceResult].
  /// [producerProjectId] ID of the project that produces and owns this service.
  /// [serviceName] The name of the service. See the [overview](https://cloud.google.com/service-infrastructure/docs/overview) for naming requirements.
  const GetServiceResult({
    required this.producerProjectId,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'producerProjectId': producerProjectId,
      'serviceName': serviceName,
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      producerProjectId: map['producerProjectId'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}
