// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'digest_response_containeranalysis_v1alpha1.dart';
import 'distribution_response_containeranalysis_v1alpha1.dart';
import 'license_response_containeranalysis_v1alpha1.dart';
import 'version_response_containeranalysis_v1alpha1.dart';

/// This represents a particular package that is distributed over various channels. e.g. glibc (aka libc6) is distributed by many, at various versions.
class PackageResponse {
  /// The CPU architecture for which packages in this distribution channel were built. Architecture will be blank for language packages.
  final pulumi.Input<String> architecture;
  /// The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package. The cpe_uri will be blank for language packages.
  final pulumi.Input<String> cpeUri;
  /// The description of this package.
  final pulumi.Input<String> description;
  /// Hash value, typically a file digest, that allows unique identification a specific package.
  final pulumi.Input<List<DigestResponseContaineranalysisV1alpha1>> digest;
  /// The various channels by which a package is distributed.
  final pulumi.Input<List<DistributionResponseContaineranalysisV1alpha1>> distribution;
  /// Licenses that have been declared by the authors of the package.
  final pulumi.Input<LicenseResponseContaineranalysisV1alpha1> license;
  /// A freeform text denoting the maintainer of this package.
  final pulumi.Input<String> maintainer;
  /// The name of the package.
  final pulumi.Input<String> name;
  /// The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).
  final pulumi.Input<String> packageType;
  /// The homepage for this package.
  final pulumi.Input<String> url;
  /// The version of the package.
  final pulumi.Input<VersionResponseContaineranalysisV1alpha1> version;

  /// Creates a new [PackageResponse].
  /// [architecture] The CPU architecture for which packages in this distribution channel were built. Architecture will be blank for language packages.
  /// [cpeUri] The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package. The cpe_uri will be blank for language packages.
  /// [description] The description of this package.
  /// [digest] Hash value, typically a file digest, that allows unique identification a specific package.
  /// [distribution] The various channels by which a package is distributed.
  /// [license] Licenses that have been declared by the authors of the package.
  /// [maintainer] A freeform text denoting the maintainer of this package.
  /// [name] The name of the package.
  /// [packageType] The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).
  /// [url] The homepage for this package.
  /// [version] The version of the package.
  const PackageResponse({
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
      'digest': pulumi.Input.mapInputValue<List<DigestResponseContaineranalysisV1alpha1>, List<Map<String, dynamic>>>(digest, (value) => pulumi.Input.encodeList<DigestResponseContaineranalysisV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'distribution': pulumi.Input.mapInputValue<List<DistributionResponseContaineranalysisV1alpha1>, List<Map<String, dynamic>>>(distribution, (value) => pulumi.Input.encodeList<DistributionResponseContaineranalysisV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'license': pulumi.Input.mapInputValue<LicenseResponseContaineranalysisV1alpha1, Map<String, dynamic>>(license, (value) => value.toMap()),
      'maintainer': maintainer,
      'name': name,
      'packageType': packageType,
      'url': url,
      'version': pulumi.Input.mapInputValue<VersionResponseContaineranalysisV1alpha1, Map<String, dynamic>>(version, (value) => value.toMap()),
    };
  }

  factory PackageResponse.fromMap(Map<String, dynamic> map) {
    return PackageResponse(
      architecture: pulumi.Input.fromValue(map['architecture'] as String),
      cpeUri: pulumi.Input.fromValue(map['cpeUri'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      digest: pulumi.Input.fromValue(pulumi.Input.decodeList<DigestResponseContaineranalysisV1alpha1>(map['digest']!, (value) => DigestResponseContaineranalysisV1alpha1.fromMap((value as Map).cast<String, dynamic>()))),
      distribution: pulumi.Input.fromValue(pulumi.Input.decodeList<DistributionResponseContaineranalysisV1alpha1>(map['distribution']!, (value) => DistributionResponseContaineranalysisV1alpha1.fromMap((value as Map).cast<String, dynamic>()))),
      license: pulumi.Input.fromValue(LicenseResponseContaineranalysisV1alpha1.fromMap((map['license']! as Map).cast<String, dynamic>())),
      maintainer: pulumi.Input.fromValue(map['maintainer'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      packageType: pulumi.Input.fromValue(map['packageType'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
      version: pulumi.Input.fromValue(VersionResponseContaineranalysisV1alpha1.fromMap((map['version']! as Map).cast<String, dynamic>())),
    );
  }
}
