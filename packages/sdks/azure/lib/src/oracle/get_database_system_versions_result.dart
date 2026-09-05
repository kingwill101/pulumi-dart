// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_system_versions_version.dart';

/// Result data returned by getDatabaseSystemVersions.
class GetDatabaseSystemVersionsResult {
  final bool? databaseSoftwareImageSupported;
  final String? databaseSystemShape;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? shapeFamily;
  final String? storageManagement;
  final bool? upgradeSupported;
  /// A `versions` block as defined below.
  final List<GetDatabaseSystemVersionsVersion>? versions;

  /// Creates a new [GetDatabaseSystemVersionsResult].
  /// [databaseSoftwareImageSupported] Optional.
  /// [databaseSystemShape] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [shapeFamily] Optional.
  /// [storageManagement] Optional.
  /// [upgradeSupported] Optional.
  /// [versions] A `versions` block as defined below.
  const GetDatabaseSystemVersionsResult({
    this.databaseSoftwareImageSupported,
    this.databaseSystemShape,
    this.id,
    this.location,
    this.shapeFamily,
    this.storageManagement,
    this.upgradeSupported,
    this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseSoftwareImageSupported': ?databaseSoftwareImageSupported,
      'databaseSystemShape': ?databaseSystemShape,
      'id': ?id,
      'location': ?location,
      'shapeFamily': ?shapeFamily,
      'storageManagement': ?storageManagement,
      'upgradeSupported': ?upgradeSupported,
      'versions': ?(() { final guardedValue = versions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDatabaseSystemVersionsVersion, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetDatabaseSystemVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseSystemVersionsResult(
      databaseSoftwareImageSupported: (() { final guardedValue = map['databaseSoftwareImageSupported']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      databaseSystemShape: (() { final guardedValue = map['databaseSystemShape']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shapeFamily: (() { final guardedValue = map['shapeFamily']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageManagement: (() { final guardedValue = map['storageManagement']; if (guardedValue == null) return null; return guardedValue as String; })(),
      upgradeSupported: (() { final guardedValue = map['upgradeSupported']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      versions: (() { final guardedValue = map['versions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDatabaseSystemVersionsVersion>(guardedValue, (value) => GetDatabaseSystemVersionsVersion.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
