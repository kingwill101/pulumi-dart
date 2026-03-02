// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'digest_response_containeranalysis_v1beta1.dart';
import 'distribution_response_containeranalysis_v1beta1.dart';
import 'license_response_containeranalysis_v1beta1.dart';
import 'version_response_containeranalysis_v1beta1.dart';

/// Package represents a particular package version.
class PackageResponseContaineranalysisV1beta1 {
  /// The CPU architecture for which packages in this distribution channel were built. Architecture will be blank for language packages.
  final pulumi.Input<String> architecture;
  /// The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package. The cpe_uri will be blank for language packages.
  final pulumi.Input<String> cpeUri;
  /// The description of this package.
  final pulumi.Input<String> description;
  /// Hash value, typically a file digest, that allows unique identification a specific package.
  final pulumi.Input<List<DigestResponseContaineranalysisV1beta1>> digest;
  /// The various channels by which a package is distributed.
  final pulumi.Input<List<DistributionResponseContaineranalysisV1beta1>> distribution;
  /// Licenses that have been declared by the authors of the package.
  final pulumi.Input<LicenseResponseContaineranalysisV1beta1> license;
  /// A freeform text denoting the maintainer of this package.
  final pulumi.Input<String> maintainer;
  /// Immutable. The name of the package.
  final pulumi.Input<String> name;
  /// The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).
  final pulumi.Input<String> packageType;
  /// The homepage for this package.
  final pulumi.Input<String> url;
  /// The version of the package.
  final pulumi.Input<VersionResponseContaineranalysisV1beta1> version;

  /// Creates a new [PackageResponseContaineranalysisV1beta1].
  /// [architecture] The CPU architecture for which packages in this distribution channel were built. Architecture will be blank for language packages.
  /// [cpeUri] The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package. The cpe_uri will be blank for language packages.
  /// [description] The description of this package.
  /// [digest] Hash value, typically a file digest, that allows unique identification a specific package.
  /// [distribution] The various channels by which a package is distributed.
  /// [license] Licenses that have been declared by the authors of the package.
  /// [maintainer] A freeform text denoting the maintainer of this package.
  /// [name] Immutable. The name of the package.
  /// [packageType] The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).
  /// [url] The homepage for this package.
  /// [version] The version of the package.
  PackageResponseContaineranalysisV1beta1({
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
      'digest': pulumi.Input.mapInputValue<List<DigestResponseContaineranalysisV1beta1>, List<Map<String, dynamic>>>(digest, (value) => pulumi.Input.encodeList<DigestResponseContaineranalysisV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'distribution': pulumi.Input.mapInputValue<List<DistributionResponseContaineranalysisV1beta1>, List<Map<String, dynamic>>>(distribution, (value) => pulumi.Input.encodeList<DistributionResponseContaineranalysisV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'license': pulumi.Input.mapInputValue<LicenseResponseContaineranalysisV1beta1, Map<String, dynamic>>(license, (value) => value.toMap()),
      'maintainer': maintainer,
      'name': name,
      'packageType': packageType,
      'url': url,
      'version': pulumi.Input.mapInputValue<VersionResponseContaineranalysisV1beta1, Map<String, dynamic>>(version, (value) => value.toMap()),
    };
  }

  factory PackageResponseContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return PackageResponseContaineranalysisV1beta1(
      architecture: (map['architecture'] as String).input(),
      cpeUri: (map['cpeUri'] as String).input(),
      description: (map['description'] as String).input(),
      digest: (pulumi.Input.decodeList<DigestResponseContaineranalysisV1beta1>(map['digest'], (value) => DigestResponseContaineranalysisV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      distribution: (pulumi.Input.decodeList<DistributionResponseContaineranalysisV1beta1>(map['distribution'], (value) => DistributionResponseContaineranalysisV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      license: (LicenseResponseContaineranalysisV1beta1.fromMap((map['license'] as Map).cast<String, dynamic>())).input(),
      maintainer: (map['maintainer'] as String).input(),
      name: (map['name'] as String).input(),
      packageType: (map['packageType'] as String).input(),
      url: (map['url'] as String).input(),
      version: (VersionResponseContaineranalysisV1beta1.fromMap((map['version'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

