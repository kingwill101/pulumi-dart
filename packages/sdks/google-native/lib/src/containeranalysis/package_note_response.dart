// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'digest_response.dart';
import 'distribution_response.dart';
import 'license_response.dart';
import 'version_response.dart';

/// PackageNote represents a particular package version.
class PackageNoteResponse {
  /// The CPU architecture for which packages in this distribution channel were built. Architecture will be blank for language packages.
  final pulumi.Input<String> architecture;
  /// The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package. The cpe_uri will be blank for language packages.
  final pulumi.Input<String> cpeUri;
  /// The description of this package.
  final pulumi.Input<String> description;
  /// Hash value, typically a file digest, that allows unique identification a specific package.
  final pulumi.Input<List<DigestResponse>> digest;
  /// Deprecated. The various channels by which a package is distributed.
  final pulumi.Input<List<DistributionResponse>> distribution;
  /// Licenses that have been declared by the authors of the package.
  final pulumi.Input<LicenseResponse> license;
  /// A freeform text denoting the maintainer of this package.
  final pulumi.Input<String> maintainer;
  /// Immutable. The name of the package.
  final pulumi.Input<String> name;
  /// The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).
  final pulumi.Input<String> packageType;
  /// The homepage for this package.
  final pulumi.Input<String> url;
  /// The version of the package.
  final pulumi.Input<VersionResponse> version;

  /// Creates a new [PackageNoteResponse].
  /// [architecture] The CPU architecture for which packages in this distribution channel were built. Architecture will be blank for language packages.
  /// [cpeUri] The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package. The cpe_uri will be blank for language packages.
  /// [description] The description of this package.
  /// [digest] Hash value, typically a file digest, that allows unique identification a specific package.
  /// [distribution] Deprecated. The various channels by which a package is distributed.
  /// [license] Licenses that have been declared by the authors of the package.
  /// [maintainer] A freeform text denoting the maintainer of this package.
  /// [name] Immutable. The name of the package.
  /// [packageType] The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).
  /// [url] The homepage for this package.
  /// [version] The version of the package.
  const PackageNoteResponse({
    required this.architecture,
    required this.cpeUri,
    required this.description,
    required this.digest,
    required this.distribution,
    required this.license,
    required this.maintainer,
    required this.name,
    required this.packageType,
    required this.url,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': architecture,
      'cpeUri': cpeUri,
      'description': description,
      'digest': pulumi.Input.mapInputValue<List<DigestResponse>, List<Map<String, dynamic>>>(digest, (value) => pulumi.Input.encodeList<DigestResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'distribution': pulumi.Input.mapInputValue<List<DistributionResponse>, List<Map<String, dynamic>>>(distribution, (value) => pulumi.Input.encodeList<DistributionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'license': pulumi.Input.mapInputValue<LicenseResponse, Map<String, dynamic>>(license, (value) => value.toMap()),
      'maintainer': maintainer,
      'name': name,
      'packageType': packageType,
      'url': url,
      'version': pulumi.Input.mapInputValue<VersionResponse, Map<String, dynamic>>(version, (value) => value.toMap()),
    };
  }

  factory PackageNoteResponse.fromMap(Map<String, dynamic> map) {
    return PackageNoteResponse(
      architecture: pulumi.Input.fromValue(map['architecture'] as String),
      cpeUri: pulumi.Input.fromValue(map['cpeUri'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      digest: pulumi.Input.fromValue(pulumi.Input.decodeList<DigestResponse>(map['digest']!, (value) => DigestResponse.fromMap((value as Map).cast<String, dynamic>()))),
      distribution: pulumi.Input.fromValue(pulumi.Input.decodeList<DistributionResponse>(map['distribution']!, (value) => DistributionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      license: pulumi.Input.fromValue(LicenseResponse.fromMap((map['license']! as Map).cast<String, dynamic>())),
      maintainer: pulumi.Input.fromValue(map['maintainer'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      packageType: pulumi.Input.fromValue(map['packageType'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
      version: pulumi.Input.fromValue(VersionResponse.fromMap((map['version']! as Map).cast<String, dynamic>())),
    );
  }
}
