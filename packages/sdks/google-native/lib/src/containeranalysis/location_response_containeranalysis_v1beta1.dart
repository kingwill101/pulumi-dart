// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'version_response_containeranalysis_v1beta1.dart';

/// An occurrence of a particular package installation found within a system's filesystem. E.g., glibc was found in `/var/lib/dpkg/status`.
class LocationResponseContaineranalysisV1beta1 {
  /// Deprecated. The CPE URI in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package.
  final pulumi.Input<String> cpeUri;

  /// The path from which we gathered that this package/version is installed.
  final pulumi.Input<String> path;

  /// Deprecated. The version installed at this location.
  final pulumi.Input<VersionResponseContaineranalysisV1beta1> version;

  /// Creates a new [LocationResponseContaineranalysisV1beta1].
  /// [cpeUri] Deprecated. The CPE URI in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package.
  /// [path] The path from which we gathered that this package/version is installed.
  /// [version] Deprecated. The version installed at this location.
  LocationResponseContaineranalysisV1beta1({
    required this.cpeUri,
    required this.path,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpeUri': cpeUri,
      'path': path,
      'version':
          pulumi.Input.mapInputValue<
            VersionResponseContaineranalysisV1beta1,
            Map<String, dynamic>
          >(version, (value) => value.toMap()),
    };
  }

  factory LocationResponseContaineranalysisV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return LocationResponseContaineranalysisV1beta1(
      cpeUri: pulumi.Input.fromValue(map['cpeUri'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      version: pulumi.Input.fromValue(
        VersionResponseContaineranalysisV1beta1.fromMap(
          (map['version']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
