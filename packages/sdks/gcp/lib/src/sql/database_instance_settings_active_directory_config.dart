// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseInstanceSettingsActiveDirectoryConfig {
  /// The domain name for the active directory (e.g., mydomain.com).
  /// Can only be used with SQL Server.
  final pulumi.Input<String> domain;

  /// Creates a new [DatabaseInstanceSettingsActiveDirectoryConfig].
  /// [domain] The domain name for the active directory (e.g., mydomain.com).
  DatabaseInstanceSettingsActiveDirectoryConfig({required this.domain});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'domain': domain};
  }

  factory DatabaseInstanceSettingsActiveDirectoryConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return DatabaseInstanceSettingsActiveDirectoryConfig(
      domain: pulumi.Input.fromValue(map['domain'] as String),
    );
  }
}
