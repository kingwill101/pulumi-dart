// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'version_response.dart';

/// A detail for a distro and package affected by this vulnerability and its associated fix (if one is available).
class DetailResponse {
  /// The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability affects.
  final pulumi.Input<String> affectedCpeUri;
  /// The package this vulnerability affects.
  final pulumi.Input<String> affectedPackage;
  /// The version number at the end of an interval in which this vulnerability exists. A vulnerability can affect a package between version numbers that are disjoint sets of intervals (example: [1.0.0-1.1.0], [2.4.6-2.4.8] and [4.5.6-4.6.8]) each of which will be represented in its own Detail. If a specific affected version is provided by a vulnerability database, affected_version_start and affected_version_end will be the same in that Detail.
  final pulumi.Input<VersionResponse> affectedVersionEnd;
  /// The version number at the start of an interval in which this vulnerability exists. A vulnerability can affect a package between version numbers that are disjoint sets of intervals (example: [1.0.0-1.1.0], [2.4.6-2.4.8] and [4.5.6-4.6.8]) each of which will be represented in its own Detail. If a specific affected version is provided by a vulnerability database, affected_version_start and affected_version_end will be the same in that Detail.
  final pulumi.Input<VersionResponse> affectedVersionStart;
  /// A vendor-specific description of this vulnerability.
  final pulumi.Input<String> description;
  /// The distro recommended [CPE URI](https://cpe.mitre.org/specification/) to update to that contains a fix for this vulnerability. It is possible for this to be different from the affected_cpe_uri.
  final pulumi.Input<String> fixedCpeUri;
  /// The distro recommended package to update to that contains a fix for this vulnerability. It is possible for this to be different from the affected_package.
  final pulumi.Input<String> fixedPackage;
  /// The distro recommended version to update to that contains a fix for this vulnerability. Setting this to VersionKind.MAXIMUM means no such version is yet available.
  final pulumi.Input<VersionResponse> fixedVersion;
  /// Whether this detail is obsolete. Occurrences are expected not to point to obsolete details.
  final pulumi.Input<bool> isObsolete;
  /// The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).
  final pulumi.Input<String> packageType;
  /// The distro assigned severity of this vulnerability.
  final pulumi.Input<String> severityName;
  /// The source from which the information in this Detail was obtained.
  final pulumi.Input<String> source;
  /// The time this information was last changed at the source. This is an upstream timestamp from the underlying information source - e.g. Ubuntu security tracker.
  final pulumi.Input<String> sourceUpdateTime;
  /// The name of the vendor of the product.
  final pulumi.Input<String> vendor;

  /// Creates a new [DetailResponse].
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
  const DetailResponse({
    required this.affectedCpeUri,
    required this.affectedPackage,
    required this.affectedVersionEnd,
    required this.affectedVersionStart,
    required this.description,
    required this.fixedCpeUri,
    required this.fixedPackage,
    required this.fixedVersion,
    required this.isObsolete,
    required this.packageType,
    required this.severityName,
    required this.source,
    required this.sourceUpdateTime,
    required this.vendor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'affectedCpeUri': affectedCpeUri,
      'affectedPackage': affectedPackage,
      'affectedVersionEnd': pulumi.Input.mapInputValue<VersionResponse, Map<String, dynamic>>(affectedVersionEnd, (value) => value.toMap()),
      'affectedVersionStart': pulumi.Input.mapInputValue<VersionResponse, Map<String, dynamic>>(affectedVersionStart, (value) => value.toMap()),
      'description': description,
      'fixedCpeUri': fixedCpeUri,
      'fixedPackage': fixedPackage,
      'fixedVersion': pulumi.Input.mapInputValue<VersionResponse, Map<String, dynamic>>(fixedVersion, (value) => value.toMap()),
      'isObsolete': isObsolete,
      'packageType': packageType,
      'severityName': severityName,
      'source': source,
      'sourceUpdateTime': sourceUpdateTime,
      'vendor': vendor,
    };
  }

  factory DetailResponse.fromMap(Map<String, dynamic> map) {
    return DetailResponse(
      affectedCpeUri: pulumi.Input.fromValue(map['affectedCpeUri'] as String),
      affectedPackage: pulumi.Input.fromValue(map['affectedPackage'] as String),
      affectedVersionEnd: pulumi.Input.fromValue(VersionResponse.fromMap((map['affectedVersionEnd']! as Map).cast<String, dynamic>())),
      affectedVersionStart: pulumi.Input.fromValue(VersionResponse.fromMap((map['affectedVersionStart']! as Map).cast<String, dynamic>())),
      description: pulumi.Input.fromValue(map['description'] as String),
      fixedCpeUri: pulumi.Input.fromValue(map['fixedCpeUri'] as String),
      fixedPackage: pulumi.Input.fromValue(map['fixedPackage'] as String),
      fixedVersion: pulumi.Input.fromValue(VersionResponse.fromMap((map['fixedVersion']! as Map).cast<String, dynamic>())),
      isObsolete: pulumi.Input.fromValue(map['isObsolete'] as bool),
      packageType: pulumi.Input.fromValue(map['packageType'] as String),
      severityName: pulumi.Input.fromValue(map['severityName'] as String),
      source: pulumi.Input.fromValue(map['source'] as String),
      sourceUpdateTime: pulumi.Input.fromValue(map['sourceUpdateTime'] as String),
      vendor: pulumi.Input.fromValue(map['vendor'] as String),
    );
  }
}

