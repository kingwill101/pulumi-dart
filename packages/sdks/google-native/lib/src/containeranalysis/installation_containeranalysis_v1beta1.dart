// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'license_containeranalysis_v1beta1.dart';
import 'location_containeranalysis_v1beta1.dart';

/// This represents how a particular software package may be installed on a system.
class InstallationContaineranalysisV1beta1 {
  /// Licenses that have been declared by the authors of the package.
  final pulumi.Input<LicenseContaineranalysisV1beta1>? license;
  /// All of the places within the filesystem versions of this package have been found.
  final pulumi.Input<List<LocationContaineranalysisV1beta1>>? location;

  /// Creates a new [InstallationContaineranalysisV1beta1].
  /// [license] Licenses that have been declared by the authors of the package.
  /// [location] All of the places within the filesystem versions of this package have been found.
  InstallationContaineranalysisV1beta1({
    this.license,
    this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'license': ?pulumi.Input.mapOptionalInputValue<LicenseContaineranalysisV1beta1, Map<String, dynamic>>(license, (value) => value.toMap()),
      'location': ?pulumi.Input.mapOptionalInputValue<List<LocationContaineranalysisV1beta1>, List<Map<String, dynamic>>>(location, (value) => pulumi.Input.encodeList<LocationContaineranalysisV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InstallationContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return InstallationContaineranalysisV1beta1(
      license: map['license'] == null ? null : (LicenseContaineranalysisV1beta1.fromMap((map['license'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (pulumi.Input.decodeList<LocationContaineranalysisV1beta1>(map['location'], (value) => LocationContaineranalysisV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

