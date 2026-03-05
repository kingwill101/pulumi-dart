// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketObjectContextCustom {
  /// The time when context was first added to the storage#object in RFC 3339 format.
  final pulumi.Input<String> createTime;
  /// An individual object context. Context keys and their corresponding values must start with an alphanumeric character.
  final pulumi.Input<String> key;
  /// The time when context was last updated in RFC 3339 format.
  final pulumi.Input<String> updateTime;
  /// The value associated with this context. This field holds the primary information for the given context key.
  final pulumi.Input<String> value;

  /// Creates a new [GetBucketObjectContextCustom].
  /// [createTime] The time when context was first added to the storage#object in RFC 3339 format.
  /// [key] An individual object context. Context keys and their corresponding values must start with an alphanumeric character.
  /// [updateTime] The time when context was last updated in RFC 3339 format.
  /// [value] The value associated with this context. This field holds the primary information for the given context key.
  GetBucketObjectContextCustom({
    required this.createTime,
    required this.key,
    required this.updateTime,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'key': key,
      'updateTime': updateTime,
      'value': value,
    };
  }

  factory GetBucketObjectContextCustom.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectContextCustom(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

