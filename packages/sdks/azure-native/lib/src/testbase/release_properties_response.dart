// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of an operating system release.
class ReleasePropertiesResponse {
  /// The build number of the OS release.
  final pulumi.Input<String>? buildNumber;
  /// The build revision of the OS release.
  final pulumi.Input<String>? buildRevision;
  /// The name of the OS release.
  final pulumi.Input<String>? releaseName;
  /// The release version date of the OS release.
  final pulumi.Input<String>? releaseVersionDate;

  /// Creates a new [ReleasePropertiesResponse].
  /// [buildNumber] The build number of the OS release.
  /// [buildRevision] The build revision of the OS release.
  /// [releaseName] The name of the OS release.
  /// [releaseVersionDate] The release version date of the OS release.
  ReleasePropertiesResponse({
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

  factory ReleasePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ReleasePropertiesResponse(
      buildNumber: map['buildNumber'] == null ? null : (map['buildNumber'] as String).input(),
      buildRevision: map['buildRevision'] == null ? null : (map['buildRevision'] as String).input(),
      releaseName: map['releaseName'] == null ? null : (map['releaseName'] as String).input(),
      releaseVersionDate: map['releaseVersionDate'] == null ? null : (map['releaseVersionDate'] as String).input(),
    );
  }
}

