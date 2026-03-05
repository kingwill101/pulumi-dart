// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SchemaPolicy {
  /// Should the specified ROLE have CREATE privileges to the specified SCHEMA.
  final pulumi.Input<bool>? create;
  /// Should the specified ROLE have CREATE privileges to the specified SCHEMA and the ability to GRANT the CREATE privilege to other ROLEs.
  final pulumi.Input<bool>? createWithGrant;
  /// The ROLE who is receiving the policy.  If this value is empty or not specified it implies the policy is referring to the [`PUBLIC` role](https://www.postgresql.org/docs/current/static/sql-grant.html).
  final pulumi.Input<String>? role;
  /// Should the specified ROLE have USAGE privileges to the specified SCHEMA.
  final pulumi.Input<bool>? usage;
  /// Should the specified ROLE have USAGE privileges to the specified SCHEMA and the ability to GRANT the USAGE privilege to other ROLEs.
  ///
  /// &gt; **NOTE on `policy`:** The permissions of a role specified in multiple policy blocks is cumulative.  For example, if the same role is specified in two different `policy` each with different permissions (e.g. `create` and `usage_with_grant`, respectively), then the specified role with have both `create` and `usage_with_grant` privileges.
  final pulumi.Input<bool>? usageWithGrant;

  /// Creates a new [SchemaPolicy].
  /// [create] Should the specified ROLE have CREATE privileges to the specified SCHEMA.
  /// [createWithGrant] Should the specified ROLE have CREATE privileges to the specified SCHEMA and the ability to GRANT the CREATE privilege to other ROLEs.
  /// [role] The ROLE who is receiving the policy.  If this value is empty or not specified it implies the policy is referring to the [`PUBLIC` role](https://www.postgresql.org/docs/current/static/sql-grant.html).
  /// [usage] Should the specified ROLE have USAGE privileges to the specified SCHEMA.
  /// [usageWithGrant] Should the specified ROLE have USAGE privileges to the specified SCHEMA and the ability to GRANT the USAGE privilege to other ROLEs.
  SchemaPolicy({
    this.create,
    this.createWithGrant,
    this.role,
    this.usage,
    this.usageWithGrant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'create': ?create,
      'createWithGrant': ?createWithGrant,
      'role': ?role,
      'usage': ?usage,
      'usageWithGrant': ?usageWithGrant,
    };
  }

  factory SchemaPolicy.fromMap(Map<String, dynamic> map) {
    return SchemaPolicy(
      create: (() { final guardedValue = map['create']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      createWithGrant: (() { final guardedValue = map['createWithGrant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usage: (() { final guardedValue = map['usage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      usageWithGrant: (() { final guardedValue = map['usageWithGrant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

