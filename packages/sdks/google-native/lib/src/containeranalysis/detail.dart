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
  const Detail({
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
      affectedCpeUri: pulumi.Input.fromValue(map['affectedCpeUri'] as String),
      affectedPackage: pulumi.Input.fromValue(map['affectedPackage'] as String),
      affectedVersionEnd: (() { final guardedValue = map['affectedVersionEnd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Version.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      affectedVersionStart: (() { final guardedValue = map['affectedVersionStart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Version.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fixedCpeUri: (() { final guardedValue = map['fixedCpeUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fixedPackage: (() { final guardedValue = map['fixedPackage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fixedVersion: (() { final guardedValue = map['fixedVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Version.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      isObsolete: (() { final guardedValue = map['isObsolete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      packageType: (() { final guardedValue = map['packageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      severityName: (() { final guardedValue = map['severityName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceUpdateTime: (() { final guardedValue = map['sourceUpdateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vendor: (() { final guardedValue = map['vendor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
