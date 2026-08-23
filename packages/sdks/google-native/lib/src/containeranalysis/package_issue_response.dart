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
  const PackageIssueResponse({
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
      affectedCpeUri: pulumi.Input.fromValue(map['affectedCpeUri'] as String),
      affectedPackage: pulumi.Input.fromValue(map['affectedPackage'] as String),
      affectedVersion: pulumi.Input.fromValue(VersionResponse.fromMap((map['affectedVersion']! as Map).cast<String, dynamic>())),
      effectiveSeverity: pulumi.Input.fromValue(map['effectiveSeverity'] as String),
      fileLocation: pulumi.Input.fromValue(pulumi.Input.decodeList<GrafeasV1FileLocationResponse>(map['fileLocation']!, (value) => GrafeasV1FileLocationResponse.fromMap((value as Map).cast<String, dynamic>()))),
      fixAvailable: pulumi.Input.fromValue(map['fixAvailable'] as bool),
      fixedCpeUri: pulumi.Input.fromValue(map['fixedCpeUri'] as String),
      fixedPackage: pulumi.Input.fromValue(map['fixedPackage'] as String),
      fixedVersion: pulumi.Input.fromValue(VersionResponse.fromMap((map['fixedVersion']! as Map).cast<String, dynamic>())),
      packageType: pulumi.Input.fromValue(map['packageType'] as String),
    );
  }
}
