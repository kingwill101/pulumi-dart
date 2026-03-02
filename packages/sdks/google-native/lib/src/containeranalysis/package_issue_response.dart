// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grafeas_v1_file_location_response.dart';
import 'version_response.dart';

/// A detail for a distro and package this vulnerability occurrence was found in and its associated fix (if one is available).
class PackageIssueResponse {
  /// The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability was found in.
  final pulumi.Input<String> affectedCpeUri;
  /// The package this vulnerability was found in.
  final pulumi.Input<String> affectedPackage;
  /// The version of the package that is installed on the resource affected by this vulnerability.
  final pulumi.Input<VersionResponse> affectedVersion;
  /// The distro or language system assigned severity for this vulnerability when that is available and note provider assigned severity when it is not available.
  final pulumi.Input<String> effectiveSeverity;
  /// The location at which this package was found.
  final pulumi.Input<List<GrafeasV1FileLocationResponse>> fileLocation;
  /// Whether a fix is available for this package.
  final pulumi.Input<bool> fixAvailable;
  /// The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability was fixed in. It is possible for this to be different from the affected_cpe_uri.
  final pulumi.Input<String> fixedCpeUri;
  /// The package this vulnerability was fixed in. It is possible for this to be different from the affected_package.
  final pulumi.Input<String> fixedPackage;
  /// The version of the package this vulnerability was fixed in. Setting this to VersionKind.MAXIMUM means no fix is yet available.
  final pulumi.Input<VersionResponse> fixedVersion;
  /// The type of package (e.g. OS, MAVEN, GO).
  final pulumi.Input<String> packageType;

  /// Creates a new [PackageIssueResponse].
  /// [affectedCpeUri] The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability was found in.
  /// [affectedPackage] The package this vulnerability was found in.
  /// [affectedVersion] The version of the package that is installed on the resource affected by this vulnerability.
  /// [effectiveSeverity] The distro or language system assigned severity for this vulnerability when that is available and note provider assigned severity when it is not available.
  /// [fileLocation] The location at which this package was found.
  /// [fixAvailable] Whether a fix is available for this package.
  /// [fixedCpeUri] The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability was fixed in. It is possible for this to be different from the affected_cpe_uri.
  /// [fixedPackage] The package this vulnerability was fixed in. It is possible for this to be different from the affected_package.
  /// [fixedVersion] The version of the package this vulnerability was fixed in. Setting this to VersionKind.MAXIMUM means no fix is yet available.
  /// [packageType] The type of package (e.g. OS, MAVEN, GO).
  PackageIssueResponse({
    required this.affectedCpeUri,
    required this.affectedPackage,
    required this.affectedVersion,
    required this.effectiveSeverity,
    required this.fileLocation,
    required this.fixAvailable,
    required this.fixedCpeUri,
    required this.fixedPackage,
    required this.fixedVersion,
    required this.packageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'affectedCpeUri': affectedCpeUri,
      'affectedPackage': affectedPackage,
      'affectedVersion': pulumi.Input.mapInputValue<VersionResponse, Map<String, dynamic>>(affectedVersion, (value) => value.toMap()),
      'effectiveSeverity': effectiveSeverity,
      'fileLocation': pulumi.Input.mapInputValue<List<GrafeasV1FileLocationResponse>, List<Map<String, dynamic>>>(fileLocation, (value) => pulumi.Input.encodeList<GrafeasV1FileLocationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fixAvailable': fixAvailable,
      'fixedCpeUri': fixedCpeUri,
      'fixedPackage': fixedPackage,
      'fixedVersion': pulumi.Input.mapInputValue<VersionResponse, Map<String, dynamic>>(fixedVersion, (value) => value.toMap()),
      'packageType': packageType,
    };
  }

  factory PackageIssueResponse.fromMap(Map<String, dynamic> map) {
    return PackageIssueResponse(
      affectedCpeUri: (map['affectedCpeUri'] as String).input(),
      affectedPackage: (map['affectedPackage'] as String).input(),
      affectedVersion: (VersionResponse.fromMap((map['affectedVersion'] as Map).cast<String, dynamic>())).input(),
      effectiveSeverity: (map['effectiveSeverity'] as String).input(),
      fileLocation: (pulumi.Input.decodeList<GrafeasV1FileLocationResponse>(map['fileLocation'], (value) => GrafeasV1FileLocationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      fixAvailable: (map['fixAvailable'] as bool).input(),
      fixedCpeUri: (map['fixedCpeUri'] as String).input(),
      fixedPackage: (map['fixedPackage'] as String).input(),
      fixedVersion: (VersionResponse.fromMap((map['fixedVersion'] as Map).cast<String, dynamic>())).input(),
      packageType: (map['packageType'] as String).input(),
    );
  }
}

