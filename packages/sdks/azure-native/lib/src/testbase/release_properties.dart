// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of an operating system release.
class ReleaseProperties {
  /// The build number of the OS release.
  final pulumi.Input<String>? buildNumber;
  /// The build revision of the OS release.
  final pulumi.Input<String>? buildRevision;
  /// The name of the OS release.
  final pulumi.Input<String>? releaseName;
  /// The release version date of the OS release.
  final pulumi.Input<String>? releaseVersionDate;

  /// Creates a new [ReleaseProperties].
  /// [buildNumber] The build number of the OS release.
  /// [buildRevision] The build revision of the OS release.
  /// [releaseName] The name of the OS release.
  /// [releaseVersionDate] The release version date of the OS release.
  ReleaseProperties({
    this.buildNumber,
    this.buildRevision,
    this.releaseName,
    this.releaseVersionDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildNumber': ?buildNumber,
      'buildRevision': ?buildRevision,
      'releaseName': ?releaseName,
      'releaseVersionDate': ?releaseVersionDate,
    };
  }

  factory ReleaseProperties.fromMap(Map<String, dynamic> map) {
    return ReleaseProperties(
      buildNumber: (() { final guardedValue = map['buildNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      buildRevision: (() { final guardedValue = map['buildRevision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      releaseName: (() { final guardedValue = map['releaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      releaseVersionDate: (() { final guardedValue = map['releaseVersionDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

