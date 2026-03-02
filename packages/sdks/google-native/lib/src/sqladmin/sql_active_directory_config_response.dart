// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Active Directory configuration, relevant only for Cloud SQL for SQL Server.
class SqlActiveDirectoryConfigResponse {
  /// The name of the domain (e.g., mydomain.com).
  final pulumi.Input<String> domain;
  /// This is always sql#activeDirectoryConfig.
  final pulumi.Input<String> kind;

  /// Creates a new [SqlActiveDirectoryConfigResponse].
  /// [domain] The name of the domain (e.g., mydomain.com).
  /// [kind] This is always sql#activeDirectoryConfig.
  SqlActiveDirectoryConfigResponse({
    required this.domain,
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'kind': kind,
    };
  }

  factory SqlActiveDirectoryConfigResponse.fromMap(Map<String, dynamic> map) {
    return SqlActiveDirectoryConfigResponse(
      domain: (map['domain'] as String).input(),
      kind: (map['kind'] as String).input(),
    );
  }
}

