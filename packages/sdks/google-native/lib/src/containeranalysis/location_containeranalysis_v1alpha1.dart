// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'version_containeranalysis_v1alpha1.dart';

/// An occurrence of a particular package installation found within a system's filesystem. e.g. glibc was found in /var/lib/dpkg/status
class LocationContaineranalysisV1alpha1 {
  /// Deprecated. The cpe_uri in [cpe format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package.
  final pulumi.Input<String>? cpeUri;
  /// The path from which we gathered that this package/version is installed.
  final pulumi.Input<String>? path;
  /// Deprecated. The version installed at this location.
  final pulumi.Input<VersionContaineranalysisV1alpha1>? version;

  /// Creates a new [LocationContaineranalysisV1alpha1].
  /// [cpeUri] Deprecated. The cpe_uri in [cpe format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package.
  /// [path] The path from which we gathered that this package/version is installed.
  /// [version] Deprecated. The version installed at this location.
  LocationContaineranalysisV1alpha1({
    this.cpeUri,
    this.path,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpeUri': ?cpeUri,
      'path': ?path,
      'version': ?pulumi.Input.mapOptionalInputValue<VersionContaineranalysisV1alpha1, Map<String, dynamic>>(version, (value) => value.toMap()),
    };
  }

  factory LocationContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return LocationContaineranalysisV1alpha1(
      cpeUri: map['cpeUri'] == null ? null : (map['cpeUri']! as String).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      version: map['version'] == null ? null : (VersionContaineranalysisV1alpha1.fromMap((map['version']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

