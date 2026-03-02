// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Database resources.
class DatabaseState {
  /// If `false` then no one can connect to this
  /// database. The default is `true`, allowing connections (except as restricted by
  /// other mechanisms, such as `GRANT` or `REVOKE CONNECT`).
  final pulumi.Input<bool>? allowConnections;
  /// If `true`, the change of the database
  /// `owner` will also include a reassignment of the ownership of preexisting
  /// objects like tables or sequences from the previous owner to the new one.
  /// If set to `false` (the default), then the previous database `owner` will still
  /// hold the ownership of the objects in that database. To alter existing objects in
  /// the database, you must be a direct or indirect member of the specified role, or
  /// the username in the provider must be superuser.
  final pulumi.Input<bool>? alterObjectOwnership;
  /// How many concurrent connections can be
  /// established to this database. `-1` (the default) means no limit.
  final pulumi.Input<int>? connectionLimit;
  /// Character set encoding to use in the new database
  final pulumi.Input<String>? encoding;
  /// If `true`, then this database can be cloned by any
  /// user with `CREATEDB` privileges; if `false` (the default), then only
  /// superusers or the owner of the database can clone it.
  final pulumi.Input<bool>? isTemplate;
  /// Collation order (LC_COLLATE) to use in the new database
  final pulumi.Input<String>? lcCollate;
  /// Character classification (LC_CTYPE) to use in the new database
  final pulumi.Input<String>? lcCtype;
  /// The name of the database. Must be unique on the PostgreSQL
  /// server instance where it is configured.
  final pulumi.Input<String>? name;
  /// The role name of the user who will own the database, or
  /// `DEFAULT` to use the default (namely, the user executing the command). To
  /// create a database owned by another role or to change the owner of an existing
  /// database, you must be a direct or indirect member of the specified role, or
  /// the username in the provider is a superuser.
  final pulumi.Input<String>? owner;
  /// The name of the tablespace that will be
  /// associated with the database, or `DEFAULT` to use the template database's
  /// tablespace.  This tablespace will be the default tablespace used for objects
  /// created in this database.
  final pulumi.Input<String>? tablespaceName;
  /// The name of the template from which to create the new database
  final pulumi.Input<String>? template;

  /// Creates a new [DatabaseState].
  /// [allowConnections] If `false` then no one can connect to this
  /// [alterObjectOwnership] If `true`, the change of the database
  /// [connectionLimit] How many concurrent connections can be
  /// [encoding] Character set encoding to use in the new database
  /// [isTemplate] If `true`, then this database can be cloned by any
  /// [lcCollate] Collation order (LC_COLLATE) to use in the new database
  /// [lcCtype] Character classification (LC_CTYPE) to use in the new database
  /// [name] The name of the database. Must be unique on the PostgreSQL
  /// [owner] The role name of the user who will own the database, or
  /// [tablespaceName] The name of the tablespace that will be
  /// [template] The name of the template from which to create the new database
  DatabaseState({
    this.allowConnections,
    this.alterObjectOwnership,
    this.connectionLimit,
    this.encoding,
    this.isTemplate,
    this.lcCollate,
    this.lcCtype,
    this.name,
    this.owner,
    this.tablespaceName,
    this.template,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowConnections': ?allowConnections,
      'alterObjectOwnership': ?alterObjectOwnership,
      'connectionLimit': ?connectionLimit,
      'encoding': ?encoding,
      'isTemplate': ?isTemplate,
      'lcCollate': ?lcCollate,
      'lcCtype': ?lcCtype,
      'name': ?name,
      'owner': ?owner,
      'tablespaceName': ?tablespaceName,
      'template': ?template,
    };
  }

  factory DatabaseState.fromMap(Map<String, dynamic> map) {
    return DatabaseState(
      allowConnections: map['allowConnections'] == null ? null : (map['allowConnections'] as bool).input(),
      alterObjectOwnership: map['alterObjectOwnership'] == null ? null : (map['alterObjectOwnership'] as bool).input(),
      connectionLimit: map['connectionLimit'] == null ? null : (map['connectionLimit'] as int).input(),
      encoding: map['encoding'] == null ? null : (map['encoding'] as String).input(),
      isTemplate: map['isTemplate'] == null ? null : (map['isTemplate'] as bool).input(),
      lcCollate: map['lcCollate'] == null ? null : (map['lcCollate'] as String).input(),
      lcCtype: map['lcCtype'] == null ? null : (map['lcCtype'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      owner: map['owner'] == null ? null : (map['owner'] as String).input(),
      tablespaceName: map['tablespaceName'] == null ? null : (map['tablespaceName'] as String).input(),
      template: map['template'] == null ? null : (map['template'] as String).input(),
    );
  }
}

