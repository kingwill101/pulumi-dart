// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'version_containeranalysis_v1beta1.dart';

/// An occurrence of a particular package installation found within a system's filesystem. E.g., glibc was found in `/var/lib/dpkg/status`.
class LocationContaineranalysisV1beta1 {
  /// Deprecated. The CPE URI in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package.
  final pulumi.Input<String>? cpeUri;
  /// The path from which we gathered that this package/version is installed.
  final pulumi.Input<String>? path;
  /// Deprecated. The version installed at this location.
  final pulumi.Input<VersionContaineranalysisV1beta1>? version;

  /// Creates a new [LocationContaineranalysisV1beta1].
  /// [cpeUri] Deprecated. The CPE URI in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package.
  /// [path] The path from which we gathered that this package/version is installed.
  /// [version] Deprecated. The version installed at this location.
  const LocationContaineranalysisV1beta1({
    this.cpeUri,
    this.path,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpeUri': ?cpeUri,
      'path': ?path,
      'version': ?pulumi.Input.mapOptionalInputValue<VersionContaineranalysisV1beta1, Map<String, dynamic>>(version, (value) => value.toMap()),
    };
  }

  factory LocationContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return LocationContaineranalysisV1beta1(
      cpeUri: (() { final guardedValue = map['cpeUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VersionContaineranalysisV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
