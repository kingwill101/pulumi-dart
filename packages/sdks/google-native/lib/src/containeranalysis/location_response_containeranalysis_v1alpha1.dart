// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'version_response_containeranalysis_v1alpha1.dart';

/// An occurrence of a particular package installation found within a system's filesystem. e.g. glibc was found in /var/lib/dpkg/status
class LocationResponseContaineranalysisV1alpha1 {
  /// Deprecated. The cpe_uri in [cpe format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package.
  final pulumi.Input<String> cpeUri;
  /// The path from which we gathered that this package/version is installed.
  final pulumi.Input<String> path;
  /// Deprecated. The version installed at this location.
  final pulumi.Input<VersionResponseContaineranalysisV1alpha1> version;

  /// Creates a new [LocationResponseContaineranalysisV1alpha1].
  /// [cpeUri] Deprecated. The cpe_uri in [cpe format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package.
  /// [path] The path from which we gathered that this package/version is installed.
  /// [version] Deprecated. The version installed at this location.
  const LocationResponseContaineranalysisV1alpha1({
    required this.cpeUri,
    required this.path,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpeUri': cpeUri,
      'path': path,
      'version': pulumi.Input.mapInputValue<VersionResponseContaineranalysisV1alpha1, Map<String, dynamic>>(version, (value) => value.toMap()),
    };
  }

  factory LocationResponseContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return LocationResponseContaineranalysisV1alpha1(
      cpeUri: pulumi.Input.fromValue(map['cpeUri'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      version: pulumi.Input.fromValue(VersionResponseContaineranalysisV1alpha1.fromMap((map['version']! as Map).cast<String, dynamic>())),
    );
  }
}
