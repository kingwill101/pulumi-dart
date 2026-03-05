// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Active Directory configuration, relevant only for Cloud SQL for SQL Server.
class SqlActiveDirectoryConfigResponseSqladminV1beta4 {
  /// The name of the domain (e.g., mydomain.com).
  final pulumi.Input<String> domain;
  /// This is always sql#activeDirectoryConfig.
  final pulumi.Input<String> kind;

  /// Creates a new [SqlActiveDirectoryConfigResponseSqladminV1beta4].
  /// [domain] The name of the domain (e.g., mydomain.com).
  /// [kind] This is always sql#activeDirectoryConfig.
  SqlActiveDirectoryConfigResponseSqladminV1beta4({
    required this.domain,
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'kind': kind,
    };
  }

  factory SqlActiveDirectoryConfigResponseSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return SqlActiveDirectoryConfigResponseSqladminV1beta4(
      domain: pulumi.Input.fromValue(map['domain'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
    );
  }
}

