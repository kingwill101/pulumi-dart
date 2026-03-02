// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseSystemVersionsVersion {
  /// Indicates if this version of the Oracle Database software is the latest version for a release.
  final pulumi.Input<bool> latestVersion;
  /// The name of the Oracle Database version.
  final pulumi.Input<String> name;
  /// Indicates if this version of the Oracle Database software supports pluggable databases.
  final pulumi.Input<bool> pluggableDatabaseSupported;
  /// The value of the Oracle Database version.
  final pulumi.Input<String> version;

  /// Creates a new [GetDatabaseSystemVersionsVersion].
  /// [latestVersion] Indicates if this version of the Oracle Database software is the latest version for a release.
  /// [name] The name of the Oracle Database version.
  /// [pluggableDatabaseSupported] Indicates if this version of the Oracle Database software supports pluggable databases.
  /// [version] The value of the Oracle Database version.
  GetDatabaseSystemVersionsVersion({
    required this.latestVersion,
    required this.name,
    required this.pluggableDatabaseSupported,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latestVersion': latestVersion,
      'name': name,
      'pluggableDatabaseSupported': pluggableDatabaseSupported,
      'version': version,
    };
  }

  factory GetDatabaseSystemVersionsVersion.fromMap(Map<String, dynamic> map) {
    return GetDatabaseSystemVersionsVersion(
      latestVersion: (map['latestVersion'] as bool).input(),
      name: (map['name'] as String).input(),
      pluggableDatabaseSupported: (map['pluggableDatabaseSupported'] as bool).input(),
      version: (map['version'] as String).input(),
    );
  }
}

