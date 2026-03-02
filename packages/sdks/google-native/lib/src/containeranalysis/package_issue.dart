// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grafeas_v1_file_location.dart';
import 'version.dart';

/// A detail for a distro and package this vulnerability occurrence was found in and its associated fix (if one is available).
class PackageIssue {
  /// The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability was found in.
  final pulumi.Input<String> affectedCpeUri;
  /// The package this vulnerability was found in.
  final pulumi.Input<String> affectedPackage;
  /// The version of the package that is installed on the resource affected by this vulnerability.
  final pulumi.Input<Version> affectedVersion;
  /// The location at which this package was found.
  final pulumi.Input<List<GrafeasV1FileLocation>>? fileLocation;
  /// The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability was fixed in. It is possible for this to be different from the affected_cpe_uri.
  final pulumi.Input<String>? fixedCpeUri;
  /// The package this vulnerability was fixed in. It is possible for this to be different from the affected_package.
  final pulumi.Input<String>? fixedPackage;
  /// The version of the package this vulnerability was fixed in. Setting this to VersionKind.MAXIMUM means no fix is yet available.
  final pulumi.Input<Version> fixedVersion;
  /// The type of package (e.g. OS, MAVEN, GO).
  final pulumi.Input<String>? packageType;

  /// Creates a new [PackageIssue].
  /// [affectedCpeUri] The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability was found in.
  /// [affectedPackage] The package this vulnerability was found in.
  /// [affectedVersion] The version of the package that is installed on the resource affected by this vulnerability.
  /// [fileLocation] The location at which this package was found.
  /// [fixedCpeUri] The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability was fixed in. It is possible for this to be different from the affected_cpe_uri.
  /// [fixedPackage] The package this vulnerability was fixed in. It is possible for this to be different from the affected_package.
  /// [fixedVersion] The version of the package this vulnerability was fixed in. Setting this to VersionKind.MAXIMUM means no fix is yet available.
  /// [packageType] The type of package (e.g. OS, MAVEN, GO).
  PackageIssue({
    required this.affectedCpeUri,
    required this.affectedPackage,
    required this.affectedVersion,
    this.fileLocation,
    this.fixedCpeUri,
    this.fixedPackage,
    required this.fixedVersion,
    this.packageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'affectedCpeUri': affectedCpeUri,
      'affectedPackage': affectedPackage,
      'affectedVersion': pulumi.Input.mapInputValue<Version, Map<String, dynamic>>(affectedVersion, (value) => value.toMap()),
      'fileLocation': ?pulumi.Input.mapOptionalInputValue<List<GrafeasV1FileLocation>, List<Map<String, dynamic>>>(fileLocation, (value) => pulumi.Input.encodeList<GrafeasV1FileLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fixedCpeUri': ?fixedCpeUri,
      'fixedPackage': ?fixedPackage,
      'fixedVersion': pulumi.Input.mapInputValue<Version, Map<String, dynamic>>(fixedVersion, (value) => value.toMap()),
      'packageType': ?packageType,
    };
  }

  factory PackageIssue.fromMap(Map<String, dynamic> map) {
    return PackageIssue(
      affectedCpeUri: (map['affectedCpeUri'] as String).input(),
      affectedPackage: (map['affectedPackage'] as String).input(),
      affectedVersion: (Version.fromMap((map['affectedVersion'] as Map).cast<String, dynamic>())).input(),
      fileLocation: map['fileLocation'] == null ? null : (pulumi.Input.decodeList<GrafeasV1FileLocation>(map['fileLocation']!, (value) => GrafeasV1FileLocation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      fixedCpeUri: map['fixedCpeUri'] == null ? null : (map['fixedCpeUri']! as String).input(),
      fixedPackage: map['fixedPackage'] == null ? null : (map['fixedPackage']! as String).input(),
      fixedVersion: (Version.fromMap((map['fixedVersion'] as Map).cast<String, dynamic>())).input(),
      packageType: map['packageType'] == null ? null : (map['packageType']! as String).input(),
    );
  }
}

