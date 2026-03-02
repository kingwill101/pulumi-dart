// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExascaleDbStorageVaultPropertiesTimeZone {
  /// IANA Time Zone Database time zone. For example "America/New_York".
  final pulumi.Input<String>? id;
  /// IANA Time Zone Database version number. For example "2019a".
  final pulumi.Input<String>? version;

  /// Creates a new [ExascaleDbStorageVaultPropertiesTimeZone].
  /// [id] IANA Time Zone Database time zone. For example "America/New_York".
  /// [version] IANA Time Zone Database version number. For example "2019a".
  ExascaleDbStorageVaultPropertiesTimeZone({
    this.id,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'version': ?version,
    };
  }

  factory ExascaleDbStorageVaultPropertiesTimeZone.fromMap(Map<String, dynamic> map) {
    return ExascaleDbStorageVaultPropertiesTimeZone(
      id: map['id'] == null ? null : (map['id']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

