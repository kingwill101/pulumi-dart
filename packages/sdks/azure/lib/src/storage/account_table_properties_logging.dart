// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountTablePropertiesLogging {
  /// Indicates whether all delete requests should be logged.
  final pulumi.Input<bool> delete;
  /// Indicates whether all read requests should be logged.
  final pulumi.Input<bool> read;
  /// Specifies the number of days that logs will be retained.
  final pulumi.Input<int?>? retentionPolicyDays;
  /// The version of storage analytics to configure.
  final pulumi.Input<String> version;
  /// Indicates whether all write requests should be logged.
  final pulumi.Input<bool> write;

  /// Creates a new [AccountTablePropertiesLogging].
  /// [delete] Indicates whether all delete requests should be logged.
  /// [read] Indicates whether all read requests should be logged.
  /// [retentionPolicyDays] Specifies the number of days that logs will be retained.
  /// [version] The version of storage analytics to configure.
  /// [write] Indicates whether all write requests should be logged.
  const AccountTablePropertiesLogging({
    required this.delete,
    required this.read,
    this.retentionPolicyDays,
    required this.version,
    required this.write,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delete': delete,
      'read': read,
      'retentionPolicyDays': ?retentionPolicyDays,
      'version': version,
      'write': write,
    };
  }

  factory AccountTablePropertiesLogging.fromMap(Map<String, dynamic> map) {
    return AccountTablePropertiesLogging(
      delete: pulumi.Input.fromValue(map['delete'] as bool),
      read: pulumi.Input.fromValue(map['read'] as bool),
      retentionPolicyDays: (() { final guardedValue = map['retentionPolicyDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      version: pulumi.Input.fromValue(map['version'] as String),
      write: pulumi.Input.fromValue(map['write'] as bool),
    );
  }
}
