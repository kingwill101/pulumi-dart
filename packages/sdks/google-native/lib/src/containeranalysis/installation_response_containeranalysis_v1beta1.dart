// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'license_response_containeranalysis_v1beta1.dart';
import 'location_response_containeranalysis_v1beta1.dart';
import 'version_response_containeranalysis_v1beta1.dart';

/// This represents how a particular software package may be installed on a system.
class InstallationResponseContaineranalysisV1beta1 {
  /// The CPU architecture for which packages in this distribution channel were built. Architecture will be blank for language packages.
  final pulumi.Input<String> architecture;

  /// The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package. The cpe_uri will be blank for language packages.
  final pulumi.Input<String> cpeUri;

  /// Licenses that have been declared by the authors of the package.
  final pulumi.Input<LicenseResponseContaineranalysisV1beta1> license;

  /// All of the places within the filesystem versions of this package have been found.
  final pulumi.Input<List<LocationResponseContaineranalysisV1beta1>> location;

  /// The name of the installed package.
  final pulumi.Input<String> name;

  /// The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).
  final pulumi.Input<String> packageType;

  /// The version of the package.
  final pulumi.Input<VersionResponseContaineranalysisV1beta1> version;

  /// Creates a new [InstallationResponseContaineranalysisV1beta1].
  /// [architecture] The CPU architecture for which packages in this distribution channel were built. Architecture will be blank for language packages.
  /// [cpeUri] The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package. The cpe_uri will be blank for language packages.
  /// [license] Licenses that have been declared by the authors of the package.
  /// [location] All of the places within the filesystem versions of this package have been found.
  /// [name] The name of the installed package.
  /// [packageType] The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).
  /// [version] The version of the package.
  InstallationResponseContaineranalysisV1beta1({
    required this.architecture,
    required this.cpeUri,
    required this.license,
    required this.location,
    required this.name,
    required this.packageType,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': architecture,
      'cpeUri': cpeUri,
      'license':
          pulumi.Input.mapInputValue<
            LicenseResponseContaineranalysisV1beta1,
            Map<String, dynamic>
          >(license, (value) => value.toMap()),
      'location':
          pulumi.Input.mapInputValue<
            List<LocationResponseContaineranalysisV1beta1>,
            List<Map<String, dynamic>>
          >(
            location,
            (value) =>
                pulumi.Input.encodeList<
                  LocationResponseContaineranalysisV1beta1,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': name,
      'packageType': packageType,
      'version':
          pulumi.Input.mapInputValue<
            VersionResponseContaineranalysisV1beta1,
            Map<String, dynamic>
          >(version, (value) => value.toMap()),
    };
  }

  factory InstallationResponseContaineranalysisV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstallationResponseContaineranalysisV1beta1(
      architecture: pulumi.Input.fromValue(map['architecture'] as String),
      cpeUri: pulumi.Input.fromValue(map['cpeUri'] as String),
      license: pulumi.Input.fromValue(
        LicenseResponseContaineranalysisV1beta1.fromMap(
          (map['license']! as Map).cast<String, dynamic>(),
        ),
      ),
      location: pulumi.Input.fromValue(
        pulumi.Input.decodeList<LocationResponseContaineranalysisV1beta1>(
          map['location']!,
          (value) => LocationResponseContaineranalysisV1beta1.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      packageType: pulumi.Input.fromValue(map['packageType'] as String),
      version: pulumi.Input.fromValue(
        VersionResponseContaineranalysisV1beta1.fromMap(
          (map['version']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
