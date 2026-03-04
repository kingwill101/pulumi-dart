// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'version.dart';

/// An occurrence of a particular package installation found within a system's filesystem. E.g., glibc was found in `/var/lib/dpkg/status`.
class Location {
  /// Deprecated. The CPE URI in [CPE format](https://cpe.mitre.org/specification/)
  final pulumi.Input<String>? cpeUri;

  /// The path from which we gathered that this package/version is installed.
  final pulumi.Input<String>? path;

  /// Deprecated. The version installed at this location.
  final pulumi.Input<Version>? version;

  /// Creates a new [Location].
  /// [cpeUri] Deprecated. The CPE URI in [CPE format](https://cpe.mitre.org/specification/)
  /// [path] The path from which we gathered that this package/version is installed.
  /// [version] Deprecated. The version installed at this location.
  Location({this.cpeUri, this.path, this.version});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpeUri': ?cpeUri,
      'path': ?path,
      'version':
          ?pulumi.Input.mapOptionalInputValue<Version, Map<String, dynamic>>(
            version,
            (value) => value.toMap(),
          ),
    };
  }

  factory Location.fromMap(Map<String, dynamic> map) {
    return Location(
      cpeUri: (() {
        final guardedValue = map['cpeUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      path: (() {
        final guardedValue = map['path'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Version.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
