// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketObjectContentContextCustom {
  /// The time when context was first added to the storage#object in RFC 3339 format.
  final pulumi.Input<String> createTime;
  /// An individual object context. Context keys and their corresponding values must start with an alphanumeric character.
  final pulumi.Input<String> key;
  /// The time when context was last updated in RFC 3339 format.
  final pulumi.Input<String> updateTime;
  /// The value associated with this context. This field holds the primary information for the given context key.
  final pulumi.Input<String> value;

  /// Creates a new [GetBucketObjectContentContextCustom].
  /// [createTime] The time when context was first added to the storage#object in RFC 3339 format.
  /// [key] An individual object context. Context keys and their corresponding values must start with an alphanumeric character.
  /// [updateTime] The time when context was last updated in RFC 3339 format.
  /// [value] The value associated with this context. This field holds the primary information for the given context key.
  GetBucketObjectContentContextCustom({
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

  factory GetBucketObjectContentContextCustom.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectContentContextCustom(
      createTime: (map['createTime'] as String).input(),
      key: (map['key'] as String).input(),
      updateTime: (map['updateTime'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

