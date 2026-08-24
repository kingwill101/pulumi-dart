// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDevicePostureRulesResultInputLocations {
  /// List of paths to check for client certificate on linux.
  final pulumi.Input<List<String>> paths;
  /// List of trust stores to check for client certificate.
  final pulumi.Input<List<String>> trustStores;

  /// Creates a new [GetZeroTrustDevicePostureRulesResultInputLocations].
  /// [paths] List of paths to check for client certificate on linux.
  /// [trustStores] List of trust stores to check for client certificate.
  const GetZeroTrustDevicePostureRulesResultInputLocations({
    required this.paths,
    required this.trustStores,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'paths': paths,
      'trustStores': trustStores,
    };
  }

  factory GetZeroTrustDevicePostureRulesResultInputLocations.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDevicePostureRulesResultInputLocations(
      paths: pulumi.Input.fromValue((map['paths'] as List).cast<String>()),
      trustStores: pulumi.Input.fromValue((map['trustStores'] as List).cast<String>()),
    );
  }
}
