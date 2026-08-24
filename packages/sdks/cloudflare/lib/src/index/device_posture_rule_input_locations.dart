// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DevicePostureRuleInputLocations {
  /// List of paths to check for client certificate on linux.
  final pulumi.Input<List<String>?>? paths;
  /// List of trust stores to check for client certificate.
  final pulumi.Input<List<String>?>? trustStores;

  /// Creates a new [DevicePostureRuleInputLocations].
  /// [paths] List of paths to check for client certificate on linux.
  /// [trustStores] List of trust stores to check for client certificate.
  const DevicePostureRuleInputLocations({
    this.paths,
    this.trustStores,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'paths': ?paths,
      'trustStores': ?trustStores,
    };
  }

  factory DevicePostureRuleInputLocations.fromMap(Map<String, dynamic> map) {
    return DevicePostureRuleInputLocations(
      paths: (() { final guardedValue = map['paths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      trustStores: (() { final guardedValue = map['trustStores']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
