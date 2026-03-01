// ignore_for_file: unused_element, unnecessary_cast


class DatabaseInstanceSettingsActiveDirectoryConfig {
  /// The domain name for the active directory (e.g., mydomain.com).
  /// Can only be used with SQL Server.
  final String domain;

  /// Creates a new [DatabaseInstanceSettingsActiveDirectoryConfig].
  /// [domain] The domain name for the active directory (e.g., mydomain.com).
  DatabaseInstanceSettingsActiveDirectoryConfig({
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
    };
  }

  factory DatabaseInstanceSettingsActiveDirectoryConfig.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceSettingsActiveDirectoryConfig(
      domain: map['domain'] as String,
    );
  }
}

