// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// For a large document, sharding may be performed to produce several document shards. Each document shard contains this field to detail which shard it is.
class GoogleCloudDocumentaiV1DocumentShardInfoResponse {
  /// Total number of shards.
  final pulumi.Input<String> shardCount;

  /// The 0-based index of this shard.
  final pulumi.Input<String> shardIndex;

  /// The index of the first character in Document.text in the overall document global text.
  final pulumi.Input<String> textOffset;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentShardInfoResponse].
  /// [shardCount] Total number of shards.
  /// [shardIndex] The 0-based index of this shard.
  /// [textOffset] The index of the first character in Document.text in the overall document global text.
  GoogleCloudDocumentaiV1DocumentShardInfoResponse({
    required this.shardCount,
    required this.shardIndex,
    required this.textOffset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shardCount': shardCount,
      'shardIndex': shardIndex,
      'textOffset': textOffset,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentShardInfoResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDocumentaiV1DocumentShardInfoResponse(
      shardCount: pulumi.Input.fromValue(map['shardCount'] as String),
      shardIndex: pulumi.Input.fromValue(map['shardIndex'] as String),
      textOffset: pulumi.Input.fromValue(map['textOffset'] as String),
    );
  }
}
