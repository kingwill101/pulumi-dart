// ignore_for_file: unused_element, unnecessary_cast


/// The dsts configuration.
class ResourceTypeEndpointDstsConfiguration {
  /// This is a URI property.
  final String? serviceDnsName;
  /// The service name.
  final String serviceName;

  /// Creates a new [ResourceTypeEndpointDstsConfiguration].
  /// [serviceDnsName] This is a URI property.
  /// [serviceName] The service name.
  ResourceTypeEndpointDstsConfiguration({
    this.serviceDnsName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceDnsName': ?serviceDnsName,
      'serviceName': serviceName,
    };
  }

  factory ResourceTypeEndpointDstsConfiguration.fromMap(Map<String, dynamic> map) {
    return ResourceTypeEndpointDstsConfiguration(
      serviceDnsName: map['serviceDnsName'] == null ? null : map['serviceDnsName'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

