// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DEPRECATED.
class RollbackConfig {
  /// The revision to rollback to. If set to 0, rollback to the last revision.
  final pulumi.Input<int>? revision;

  /// Creates a new [RollbackConfig].
  /// [revision] The revision to rollback to. If set to 0, rollback to the last revision.
  RollbackConfig({
    this.revision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'revision': ?revision,
    };
  }

  factory RollbackConfig.fromMap(Map<String, dynamic> map) {
    return RollbackConfig(
      revision: map['revision'] == null ? null : (map['revision']! as int).input(),
    );
  }
}

