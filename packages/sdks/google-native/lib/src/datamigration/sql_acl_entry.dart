// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An entry for an Access Control list.
class SqlAclEntry {
  /// The time when this access control entry expires in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example: `2012-11-15T16:19:00.094Z`.
  final pulumi.Input<String>? expireTime;
  /// A label to identify this entry.
  final pulumi.Input<String>? label;
  /// Input only. The time-to-leave of this access control entry.
  final pulumi.Input<String>? ttl;
  /// The allowlisted value for the access control list.
  final pulumi.Input<String>? value;

  /// Creates a new [SqlAclEntry].
  /// [expireTime] The time when this access control entry expires in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example: `2012-11-15T16:19:00.094Z`.
  /// [label] A label to identify this entry.
  /// [ttl] Input only. The time-to-leave of this access control entry.
  /// [value] The allowlisted value for the access control list.
  SqlAclEntry({
    this.expireTime,
    this.label,
    this.ttl,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expireTime': ?expireTime,
      'label': ?label,
      'ttl': ?ttl,
      'value': ?value,
    };
  }

  factory SqlAclEntry.fromMap(Map<String, dynamic> map) {
    return SqlAclEntry(
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

