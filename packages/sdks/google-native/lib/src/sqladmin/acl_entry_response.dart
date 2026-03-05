// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An entry for an Access Control list.
class AclEntryResponse {
  /// The time when this access control entry expires in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final pulumi.Input<String> expirationTime;
  /// This is always `sql#aclEntry`.
  final pulumi.Input<String> kind;
  /// Optional. A label to identify this entry.
  final pulumi.Input<String> name;
  /// The allowlisted value for the access control list.
  final pulumi.Input<String> value;

  /// Creates a new [AclEntryResponse].
  /// [expirationTime] The time when this access control entry expires in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  /// [kind] This is always `sql#aclEntry`.
  /// [name] Optional. A label to identify this entry.
  /// [value] The allowlisted value for the access control list.
  AclEntryResponse({
    required this.expirationTime,
    required this.kind,
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationTime': expirationTime,
      'kind': kind,
      'name': name,
      'value': value,
    };
  }

  factory AclEntryResponse.fromMap(Map<String, dynamic> map) {
    return AclEntryResponse(
      expirationTime: pulumi.Input.fromValue(map['expirationTime'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

