// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ShardInfo describes the shard selector that was applied to produce a list response. Its presence on a list response indicates the list is a filtered subset.
class ShardInfoPatch {
  /// selector is the shard selector string from the request, echoed back so clients can verify which shard they received and merge responses from multiple shards.
  final pulumi.Input<String?>? selector;

  /// Creates a new [ShardInfoPatch].
  /// [selector] selector is the shard selector string from the request, echoed back so clients can verify which shard they received and merge responses from multiple shards.
  const ShardInfoPatch({
    this.selector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selector': ?selector,
    };
  }

  factory ShardInfoPatch.fromMap(Map<String, dynamic> map) {
    return ShardInfoPatch(
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
