// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'license.dart';
import 'location.dart';

/// Details on how a particular software package was installed on a system.
class PackageOccurrence {
  /// Licenses that have been declared by the authors of the package.
  final pulumi.Input<License>? license;
  /// All of the places within the filesystem versions of this package have been found.
  final pulumi.Input<List<Location>>? location;

  /// Creates a new [PackageOccurrence].
  /// [license] Licenses that have been declared by the authors of the package.
  /// [location] All of the places within the filesystem versions of this package have been found.
  PackageOccurrence({
    this.license,
    this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'license': ?pulumi.Input.mapOptionalInputValue<License, Map<String, dynamic>>(license, (value) => value.toMap()),
      'location': ?pulumi.Input.mapOptionalInputValue<List<Location>, List<Map<String, dynamic>>>(location, (value) => pulumi.Input.encodeList<Location, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PackageOccurrence.fromMap(Map<String, dynamic> map) {
    return PackageOccurrence(
      license: map['license'] == null ? null : (License.fromMap((map['license']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (pulumi.Input.decodeList<Location>(map['location']!, (value) => Location.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

