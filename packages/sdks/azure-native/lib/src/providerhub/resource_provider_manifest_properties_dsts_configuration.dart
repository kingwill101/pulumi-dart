// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The dsts configuration.
class ResourceProviderManifestPropertiesDstsConfiguration {
  /// This is a URI property.
  final pulumi.Input<String>? serviceDnsName;

  /// The service name.
  final pulumi.Input<String> serviceName;

  /// Creates a new [ResourceProviderManifestPropertiesDstsConfiguration].
  /// [serviceDnsName] This is a URI property.
  /// [serviceName] The service name.
  ResourceProviderManifestPropertiesDstsConfiguration({
    this.serviceDnsName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceDnsName': ?serviceDnsName,
      'serviceName': serviceName,
    };
  }

  factory ResourceProviderManifestPropertiesDstsConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourceProviderManifestPropertiesDstsConfiguration(
      serviceDnsName: (() {
        final guardedValue = map['serviceDnsName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
