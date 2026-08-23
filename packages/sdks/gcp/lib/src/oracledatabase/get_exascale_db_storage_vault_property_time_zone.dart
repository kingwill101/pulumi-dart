// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetExascaleDbStorageVaultPropertyTimeZone {
  /// IANA Time Zone Database time zone. For example "America/New_York".
  final pulumi.Input<String> id;
  /// IANA Time Zone Database version number. For example "2019a".
  final pulumi.Input<String> version;

  /// Creates a new [GetExascaleDbStorageVaultPropertyTimeZone].
  /// [id] IANA Time Zone Database time zone. For example "America/New_York".
  /// [version] IANA Time Zone Database version number. For example "2019a".
  const GetExascaleDbStorageVaultPropertyTimeZone({
    required this.id,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'version': version,
    };
  }

  factory GetExascaleDbStorageVaultPropertyTimeZone.fromMap(Map<String, dynamic> map) {
    return GetExascaleDbStorageVaultPropertyTimeZone(
      id: pulumi.Input.fromValue(map['id'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
