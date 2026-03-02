// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Database resources.
class DatabaseState {
  /// The default character set to use when
  /// a table is created without specifying an explicit character set. Defaults
  /// to "utf8".
  final pulumi.Input<String>? defaultCharacterSet;
  /// The default collation to use when a table
  /// is created without specifying an explicit collation. Defaults to
  /// ``utf8_general_ci``. Each character set has its own set of collations, so
  /// changing the character set requires also changing the collation.
  ///
  /// Note that the defaults for character set and collation above do not respect
  /// any defaults set on the MySQL server, so that the configuration can be set
  /// appropriately even though Terraform cannot see the server-level defaults. If
  /// you wish to use the server's defaults you must consult the server's
  /// configuration and then set the ``default_character_set`` and
  /// ``default_collation`` to match.
  final pulumi.Input<String>? defaultCollation;
  /// The name of the database. This must be unique within
  /// a given MySQL server and may or may not be case-sensitive depending on
  /// the operating system on which the MySQL server is running.
  final pulumi.Input<String>? name;

  /// Creates a new [DatabaseState].
  /// [defaultCharacterSet] The default character set to use when
  /// [defaultCollation] The default collation to use when a table
  /// [name] The name of the database. This must be unique within
  DatabaseState({
    this.defaultCharacterSet,
    this.defaultCollation,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultCharacterSet': ?defaultCharacterSet,
      'defaultCollation': ?defaultCollation,
      'name': ?name,
    };
  }

  factory DatabaseState.fromMap(Map<String, dynamic> map) {
    return DatabaseState(
      defaultCharacterSet: map['defaultCharacterSet'] == null ? null : (map['defaultCharacterSet']! as String).input(),
      defaultCollation: map['defaultCollation'] == null ? null : (map['defaultCollation']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

