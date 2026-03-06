// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketObjectContextsCustom {
  /// The time when context was first added to the storage object in RFC 3399 format.
  final pulumi.Input<String>? createTime;
  /// An individual object context. Context keys and their corresponding values must start with an alphanumeric character.
  final pulumi.Input<String> key;
  /// The time when context was last updated in RFC 3399 format.
  ///
  /// &lt;a name&gt;
  final pulumi.Input<String>? updateTime;
  /// The value associated with this context. This field holds the primary information for the given context key.
  final pulumi.Input<String> value;

  /// Creates a new [BucketObjectContextsCustom].
  /// [createTime] The time when context was first added to the storage object in RFC 3399 format.
  /// [key] An individual object context. Context keys and their corresponding values must start with an alphanumeric character.
  /// [updateTime] The time when context was last updated in RFC 3399 format.
  /// [value] The value associated with this context. This field holds the primary information for the given context key.
  const BucketObjectContextsCustom({
    this.createTime,
    required this.key,
    this.updateTime,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'key': key,
      'updateTime': ?updateTime,
      'value': value,
    };
  }

  factory BucketObjectContextsCustom.fromMap(Map<String, dynamic> map) {
    return BucketObjectContextsCustom(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

