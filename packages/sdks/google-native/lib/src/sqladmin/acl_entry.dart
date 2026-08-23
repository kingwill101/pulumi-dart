// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An entry for an Access Control list.
class AclEntry {
  /// The time when this access control entry expires in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final pulumi.Input<String>? expirationTime;
  /// This is always `sql#aclEntry`.
  final pulumi.Input<String>? kind;
  /// Optional. A label to identify this entry.
  final pulumi.Input<String>? name;
  /// The allowlisted value for the access control list.
  final pulumi.Input<String>? value;

  /// Creates a new [AclEntry].
  /// [expirationTime] The time when this access control entry expires in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  /// [kind] This is always `sql#aclEntry`.
  /// [name] Optional. A label to identify this entry.
  /// [value] The allowlisted value for the access control list.
  const AclEntry({
    this.expirationTime,
    this.kind,
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationTime': ?expirationTime,
      'kind': ?kind,
      'name': ?name,
      'value': ?value,
    };
  }

  factory AclEntry.fromMap(Map<String, dynamic> map) {
    return AclEntry(
      expirationTime: (() { final guardedValue = map['expirationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
