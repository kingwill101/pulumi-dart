// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'digest_containeranalysis_v1alpha1.dart';
import 'distribution_containeranalysis_v1alpha1.dart';
import 'license_containeranalysis_v1alpha1.dart';
import 'package_architecture.dart';
import 'version_containeranalysis_v1alpha1.dart';

/// This represents a particular package that is distributed over various channels. e.g. glibc (aka libc6) is distributed by many, at various versions.
class Package {
  /// The CPU architecture for which packages in this distribution channel were built. Architecture will be blank for language packages.
  final pulumi.Input<PackageArchitecture>? architecture;
  /// The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package. The cpe_uri will be blank for language packages.
  final pulumi.Input<String>? cpeUri;
  /// The description of this package.
  final pulumi.Input<String>? description;
  /// Hash value, typically a file digest, that allows unique identification a specific package.
  final pulumi.Input<List<DigestContaineranalysisV1alpha1>>? digest;
  /// The various channels by which a package is distributed.
  final pulumi.Input<List<DistributionContaineranalysisV1alpha1>>? distribution;
  /// Licenses that have been declared by the authors of the package.
  final pulumi.Input<LicenseContaineranalysisV1alpha1>? license;
  /// A freeform text denoting the maintainer of this package.
  final pulumi.Input<String>? maintainer;
  /// The name of the package.
  final pulumi.Input<String>? name;
  /// The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).
  final pulumi.Input<String>? packageType;
  /// The homepage for this package.
  final pulumi.Input<String>? url;
  /// The version of the package.
  final pulumi.Input<VersionContaineranalysisV1alpha1>? version;

  /// Creates a new [Package].
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
  Package({
    this.architecture,
    this.cpeUri,
    this.description,
    this.digest,
    this.distribution,
    this.license,
    this.maintainer,
    this.name,
    this.packageType,
    this.url,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': ?pulumi.Input.mapOptionalInputValue<PackageArchitecture, String>(architecture, (value) => value.wireValue),
      'cpeUri': ?cpeUri,
      'description': ?description,
      'digest': ?pulumi.Input.mapOptionalInputValue<List<DigestContaineranalysisV1alpha1>, List<Map<String, dynamic>>>(digest, (value) => pulumi.Input.encodeList<DigestContaineranalysisV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'distribution': ?pulumi.Input.mapOptionalInputValue<List<DistributionContaineranalysisV1alpha1>, List<Map<String, dynamic>>>(distribution, (value) => pulumi.Input.encodeList<DistributionContaineranalysisV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'license': ?pulumi.Input.mapOptionalInputValue<LicenseContaineranalysisV1alpha1, Map<String, dynamic>>(license, (value) => value.toMap()),
      'maintainer': ?maintainer,
      'name': ?name,
      'packageType': ?packageType,
      'url': ?url,
      'version': ?pulumi.Input.mapOptionalInputValue<VersionContaineranalysisV1alpha1, Map<String, dynamic>>(version, (value) => value.toMap()),
    };
  }

  factory Package.fromMap(Map<String, dynamic> map) {
    return Package(
      architecture: (() { final guardedValue = map['architecture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PackageArchitecture.fromValue(guardedValue as String)); })(),
      cpeUri: (() { final guardedValue = map['cpeUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      digest: (() { final guardedValue = map['digest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DigestContaineranalysisV1alpha1>(guardedValue, (value) => DigestContaineranalysisV1alpha1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      distribution: (() { final guardedValue = map['distribution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DistributionContaineranalysisV1alpha1>(guardedValue, (value) => DistributionContaineranalysisV1alpha1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      license: (() { final guardedValue = map['license']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LicenseContaineranalysisV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maintainer: (() { final guardedValue = map['maintainer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packageType: (() { final guardedValue = map['packageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VersionContaineranalysisV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

