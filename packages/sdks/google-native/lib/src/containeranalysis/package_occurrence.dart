// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'license.dart';
import 'location.dart';

/// Details on how a particular software package was installed on a system.
class PackageOccurrence {
  /// Licenses that have been declared by the authors of the package.
  final License? license;
  /// All of the places within the filesystem versions of this package have been found.
  final List<Location>? location;

  /// Creates a new [PackageOccurrence].
  /// [license] Licenses that have been declared by the authors of the package.
  /// [location] All of the places within the filesystem versions of this package have been found.
  PackageOccurrence({
    this.license,
    this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'license': ?license == null ? null : license!.toMap(),
      'location': ?location == null ? null : pulumi.Input.encodeList<Location, Map<String, dynamic>>(location!, (value) => value.toMap()),
    };
  }

  factory PackageOccurrence.fromMap(Map<String, dynamic> map) {
    return PackageOccurrence(
      license: map['license'] == null ? null : License.fromMap((map['license'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : pulumi.Input.decodeList<Location>(map['location'], (value) => Location.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

