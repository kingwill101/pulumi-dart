// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseInstanceSettingActiveDirectoryConfig {
  /// Domain name of the Active Directory for SQL Server (e.g., mydomain.com).
  final pulumi.Input<String> domain;

  /// Creates a new [GetDatabaseInstanceSettingActiveDirectoryConfig].
  /// [domain] Domain name of the Active Directory for SQL Server (e.g., mydomain.com).
  const GetDatabaseInstanceSettingActiveDirectoryConfig({
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
    };
  }

  factory GetDatabaseInstanceSettingActiveDirectoryConfig.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstanceSettingActiveDirectoryConfig(
      domain: pulumi.Input.fromValue(map['domain'] as String),
    );
  }
}

