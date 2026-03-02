// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_object_contexts_custom.dart';

class BucketObjectContexts {
  /// A list of custom context key-value pairs.
  final pulumi.Input<List<BucketObjectContextsCustom>> customs;

  /// Creates a new [BucketObjectContexts].
  /// [customs] A list of custom context key-value pairs.
  BucketObjectContexts({
    required this.customs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customs': pulumi.Input.mapInputValue<List<BucketObjectContextsCustom>, List<Map<String, dynamic>>>(customs, (value) => pulumi.Input.encodeList<BucketObjectContextsCustom, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BucketObjectContexts.fromMap(Map<String, dynamic> map) {
    return BucketObjectContexts(
      customs: (pulumi.Input.decodeList<BucketObjectContextsCustom>(map['customs'], (value) => BucketObjectContextsCustom.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

