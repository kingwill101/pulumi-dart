// ignore_for_file: unused_element, unnecessary_cast


/// The dsts configuration.
class ResourceTypeRegistrationPropertiesDstsConfigurationResponse {
  /// This is a URI property.
  final String? serviceDnsName;
  /// The service name.
  final String serviceName;

  /// Creates a new [ResourceTypeRegistrationPropertiesDstsConfigurationResponse].
  /// [serviceDnsName] This is a URI property.
  /// [serviceName] The service name.
  ResourceTypeRegistrationPropertiesDstsConfigurationResponse({
    this.serviceDnsName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceDnsName': ?serviceDnsName,
      'serviceName': serviceName,
    };
  }

  factory ResourceTypeRegistrationPropertiesDstsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesDstsConfigurationResponse(
      serviceDnsName: map['serviceDnsName'] == null ? null : map['serviceDnsName'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

