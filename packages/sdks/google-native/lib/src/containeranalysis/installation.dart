// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'license_containeranalysis_v1alpha1.dart';
import 'location_containeranalysis_v1alpha1.dart';

/// This represents how a particular software package may be installed on a system.
class Installation {
  /// Licenses that have been declared by the authors of the package.
  final pulumi.Input<LicenseContaineranalysisV1alpha1>? license;
  /// All of the places within the filesystem versions of this package have been found.
  final pulumi.Input<List<LocationContaineranalysisV1alpha1>>? location;

  /// Creates a new [Installation].
  /// [license] Licenses that have been declared by the authors of the package.
  /// [location] All of the places within the filesystem versions of this package have been found.
  const Installation({
    this.license,
    this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'license': ?pulumi.Input.mapOptionalInputValue<LicenseContaineranalysisV1alpha1, Map<String, dynamic>>(license, (value) => value.toMap()),
      'location': ?pulumi.Input.mapOptionalInputValue<List<LocationContaineranalysisV1alpha1>, List<Map<String, dynamic>>>(location, (value) => pulumi.Input.encodeList<LocationContaineranalysisV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory Installation.fromMap(Map<String, dynamic> map) {
    return Installation(
      license: (() { final guardedValue = map['license']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LicenseContaineranalysisV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LocationContaineranalysisV1alpha1>(guardedValue, (value) => LocationContaineranalysisV1alpha1.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
