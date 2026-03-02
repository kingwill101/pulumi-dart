// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The dsts configuration.
class ResourceTypeRegistrationPropertiesDstsConfiguration {
  /// This is a URI property.
  final pulumi.Input<String>? serviceDnsName;
  /// The service name.
  final pulumi.Input<String> serviceName;

  /// Creates a new [ResourceTypeRegistrationPropertiesDstsConfiguration].
  /// [serviceDnsName] This is a URI property.
  /// [serviceName] The service name.
  ResourceTypeRegistrationPropertiesDstsConfiguration({
    this.serviceDnsName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceDnsName': ?serviceDnsName,
      'serviceName': serviceName,
    };
  }

  factory ResourceTypeRegistrationPropertiesDstsConfiguration.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesDstsConfiguration(
      serviceDnsName: map['serviceDnsName'] == null ? null : (map['serviceDnsName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
    );
  }
}

