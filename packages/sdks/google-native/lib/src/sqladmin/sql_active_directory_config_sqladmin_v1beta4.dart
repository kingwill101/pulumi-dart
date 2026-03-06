// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Active Directory configuration, relevant only for Cloud SQL for SQL Server.
class SqlActiveDirectoryConfigSqladminV1beta4 {
  /// The name of the domain (e.g., mydomain.com).
  final pulumi.Input<String>? domain;
  /// This is always sql#activeDirectoryConfig.
  final pulumi.Input<String>? kind;

  /// Creates a new [SqlActiveDirectoryConfigSqladminV1beta4].
  /// [domain] The name of the domain (e.g., mydomain.com).
  /// [kind] This is always sql#activeDirectoryConfig.
  const SqlActiveDirectoryConfigSqladminV1beta4({
    this.domain,
    this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'kind': ?kind,
    };
  }

  factory SqlActiveDirectoryConfigSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return SqlActiveDirectoryConfigSqladminV1beta4(
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

