// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'version.dart';

/// A detail for a distro and package affected by this vulnerability and its associated fix (if one is available).
class Detail {
  /// The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability affects.
  final pulumi.Input<String> affectedCpeUri;
  /// The package this vulnerability affects.
  final pulumi.Input<String> affectedPackage;
  /// The version number at the end of an interval in which this vulnerability exists. A vulnerability can affect a package between version numbers that are disjoint sets of intervals (example: [1.0.0-1.1.0], [2.4.6-2.4.8] and [4.5.6-4.6.8]) each of which will be represented in its own Detail. If a specific affected version is provided by a vulnerability database, affected_version_start and affected_version_end will be the same in that Detail.
  final pulumi.Input<Version>? affectedVersionEnd;
  /// The version number at the start of an interval in which this vulnerability exists. A vulnerability can affect a package between version numbers that are disjoint sets of intervals (example: [1.0.0-1.1.0], [2.4.6-2.4.8] and [4.5.6-4.6.8]) each of which will be represented in its own Detail. If a specific affected version is provided by a vulnerability database, affected_version_start and affected_version_end will be the same in that Detail.
  final pulumi.Input<Version>? affectedVersionStart;
  /// A vendor-specific description of this vulnerability.
  final pulumi.Input<String>? description;
  /// The distro recommended [CPE URI](https://cpe.mitre.org/specification/) to update to that contains a fix for this vulnerability. It is possible for this to be different from the affected_cpe_uri.
  final pulumi.Input<String>? fixedCpeUri;
  /// The distro recommended package to update to that contains a fix for this vulnerability. It is possible for this to be different from the affected_package.
  final pulumi.Input<String>? fixedPackage;
  /// The distro recommended version to update to that contains a fix for this vulnerability. Setting this to VersionKind.MAXIMUM means no such version is yet available.
  final pulumi.Input<Version>? fixedVersion;
  /// Whether this detail is obsolete. Occurrences are expected not to point to obsolete details.
  final pulumi.Input<bool>? isObsolete;
  /// The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).
  final pulumi.Input<String>? packageType;
  /// The distro assigned severity of this vulnerability.
  final pulumi.Input<String>? severityName;
  /// The source from which the information in this Detail was obtained.
  final pulumi.Input<String>? source;
  /// The time this information was last changed at the source. This is an upstream timestamp from the underlying information source - e.g. Ubuntu security tracker.
  final pulumi.Input<String>? sourceUpdateTime;
  /// The name of the vendor of the product.
  final pulumi.Input<String>? vendor;

  /// Creates a new [Detail].
  /// [affectedCpeUri] The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability affects.
  /// [affectedPackage] The package this vulnerability affects.
  /// [affectedVersionEnd] The version number at the end of an interval in which this vulnerability exists. A vulnerability can affect a package between version numbers that are disjoint sets of intervals (example: [1.0.0-1.1.0], [2.4.6-2.4.8] and [4.5.6-4.6.8]) each of which will be represented in its own Detail. If a specific affected version is provided by a vulnerability database, affected_version_start and affected_version_end will be the same in that Detail.
  /// [affectedVersionStart] The version number at the start of an interval in which this vulnerability exists. A vulnerability can affect a package between version numbers that are disjoint sets of intervals (example: [1.0.0-1.1.0], [2.4.6-2.4.8] and [4.5.6-4.6.8]) each of which will be represented in its own Detail. If a specific affected version is provided by a vulnerability database, affected_version_start and affected_version_end will be the same in that Detail.
  /// [description] A vendor-specific description of this vulnerability.
  /// [fixedCpeUri] The distro recommended [CPE URI](https://cpe.mitre.org/specification/) to update to that contains a fix for this vulnerability. It is possible for this to be different from the affected_cpe_uri.
  /// [fixedPackage] The distro recommended package to update to that contains a fix for this vulnerability. It is possible for this to be different from the affected_package.
  /// [fixedVersion] The distro recommended version to update to that contains a fix for this vulnerability. Setting this to VersionKind.MAXIMUM means no such version is yet available.
  /// [isObsolete] Whether this detail is obsolete. Occurrences are expected not to point to obsolete details.
  /// [packageType] The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).
  /// [severityName] The distro assigned severity of this vulnerability.
  /// [source] The source from which the information in this Detail was obtained.
  /// [sourceUpdateTime] The time this information was last changed at the source. This is an upstream timestamp from the underlying information source - e.g. Ubuntu security tracker.
  /// [vendor] The name of the vendor of the product.
  Detail({
    required this.affectedCpeUri,
    required this.affectedPackage,
    this.affectedVersionEnd,
    this.affectedVersionStart,
    this.description,
    this.fixedCpeUri,
    this.fixedPackage,
    this.fixedVersion,
    this.isObsolete,
    this.packageType,
    this.severityName,
    this.source,
    this.sourceUpdateTime,
    this.vendor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'affectedCpeUri': affectedCpeUri,
      'affectedPackage': affectedPackage,
      'affectedVersionEnd': ?pulumi.Input.mapOptionalInputValue<Version, Map<String, dynamic>>(affectedVersionEnd, (value) => value.toMap()),
      'affectedVersionStart': ?pulumi.Input.mapOptionalInputValue<Version, Map<String, dynamic>>(affectedVersionStart, (value) => value.toMap()),
      'description': ?description,
      'fixedCpeUri': ?fixedCpeUri,
      'fixedPackage': ?fixedPackage,
      'fixedVersion': ?pulumi.Input.mapOptionalInputValue<Version, Map<String, dynamic>>(fixedVersion, (value) => value.toMap()),
      'isObsolete': ?isObsolete,
      'packageType': ?packageType,
      'severityName': ?severityName,
      'source': ?source,
      'sourceUpdateTime': ?sourceUpdateTime,
      'vendor': ?vendor,
    };
  }

  factory Detail.fromMap(Map<String, dynamic> map) {
    return Detail(
      affectedCpeUri: (map['affectedCpeUri'] as String).input(),
      affectedPackage: (map['affectedPackage'] as String).input(),
      affectedVersionEnd: map['affectedVersionEnd'] == null ? null : (Version.fromMap((map['affectedVersionEnd'] as Map).cast<String, dynamic>())).input(),
      affectedVersionStart: map['affectedVersionStart'] == null ? null : (Version.fromMap((map['affectedVersionStart'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      fixedCpeUri: map['fixedCpeUri'] == null ? null : (map['fixedCpeUri'] as String).input(),
      fixedPackage: map['fixedPackage'] == null ? null : (map['fixedPackage'] as String).input(),
      fixedVersion: map['fixedVersion'] == null ? null : (Version.fromMap((map['fixedVersion'] as Map).cast<String, dynamic>())).input(),
      isObsolete: map['isObsolete'] == null ? null : (map['isObsolete'] as bool).input(),
      packageType: map['packageType'] == null ? null : (map['packageType'] as String).input(),
      severityName: map['severityName'] == null ? null : (map['severityName'] as String).input(),
      source: map['source'] == null ? null : (map['source'] as String).input(),
      sourceUpdateTime: map['sourceUpdateTime'] == null ? null : (map['sourceUpdateTime'] as String).input(),
      vendor: map['vendor'] == null ? null : (map['vendor'] as String).input(),
    );
  }
}

