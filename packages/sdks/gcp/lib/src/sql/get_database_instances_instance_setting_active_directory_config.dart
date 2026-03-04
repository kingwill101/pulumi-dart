// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseInstancesInstanceSettingActiveDirectoryConfig {
  /// Domain name of the Active Directory for SQL Server (e.g., mydomain.com).
  final pulumi.Input<String> domain;

  /// Creates a new [GetDatabaseInstancesInstanceSettingActiveDirectoryConfig].
  /// [domain] Domain name of the Active Directory for SQL Server (e.g., mydomain.com).
  GetDatabaseInstancesInstanceSettingActiveDirectoryConfig({
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'domain': domain};
  }

  factory GetDatabaseInstancesInstanceSettingActiveDirectoryConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDatabaseInstancesInstanceSettingActiveDirectoryConfig(
      domain: pulumi.Input.fromValue(map['domain'] as String),
    );
  }
}
