// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// For a large document, sharding may be performed to produce several document shards. Each document shard contains this field to detail which shard it is.
class GoogleCloudDocumentaiV1DocumentShardInfo {
  /// Total number of shards.
  final pulumi.Input<String>? shardCount;
  /// The 0-based index of this shard.
  final pulumi.Input<String>? shardIndex;
  /// The index of the first character in Document.text in the overall document global text.
  final pulumi.Input<String>? textOffset;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentShardInfo].
  /// [shardCount] Total number of shards.
  /// [shardIndex] The 0-based index of this shard.
  /// [textOffset] The index of the first character in Document.text in the overall document global text.
  GoogleCloudDocumentaiV1DocumentShardInfo({
    this.shardCount,
    this.shardIndex,
    this.textOffset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shardCount': ?shardCount,
      'shardIndex': ?shardIndex,
      'textOffset': ?textOffset,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentShardInfo.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentShardInfo(
      shardCount: (() { final guardedValue = map['shardCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shardIndex: (() { final guardedValue = map['shardIndex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      textOffset: (() { final guardedValue = map['textOffset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

