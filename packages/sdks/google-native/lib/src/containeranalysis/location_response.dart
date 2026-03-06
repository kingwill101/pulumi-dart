// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'version_response.dart';

/// An occurrence of a particular package installation found within a system's filesystem. E.g., glibc was found in `/var/lib/dpkg/status`.
class LocationResponse {
  /// Deprecated. The CPE URI in [CPE format](https://cpe.mitre.org/specification/)
  final pulumi.Input<String> cpeUri;
  /// The path from which we gathered that this package/version is installed.
  final pulumi.Input<String> path;
  /// Deprecated. The version installed at this location.
  final pulumi.Input<VersionResponse> version;

  /// Creates a new [LocationResponse].
  /// [cpeUri] Deprecated. The CPE URI in [CPE format](https://cpe.mitre.org/specification/)
  /// [path] The path from which we gathered that this package/version is installed.
  /// [version] Deprecated. The version installed at this location.
  const LocationResponse({
    required this.cpeUri,
    required this.path,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpeUri': cpeUri,
      'path': path,
      'version': pulumi.Input.mapInputValue<VersionResponse, Map<String, dynamic>>(version, (value) => value.toMap()),
    };
  }

  factory LocationResponse.fromMap(Map<String, dynamic> map) {
    return LocationResponse(
      cpeUri: pulumi.Input.fromValue(map['cpeUri'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      version: pulumi.Input.fromValue(VersionResponse.fromMap((map['version']! as Map).cast<String, dynamic>())),
    );
  }
}

