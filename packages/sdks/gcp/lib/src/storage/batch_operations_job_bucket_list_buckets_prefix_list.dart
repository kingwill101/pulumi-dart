// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BatchOperationsJobBucketListBucketsPrefixList {
  /// (Optional)
  final pulumi.Input<List<String>>? includedObjectPrefixes;

  /// Creates a new [BatchOperationsJobBucketListBucketsPrefixList].
  /// [includedObjectPrefixes] (Optional)
  const BatchOperationsJobBucketListBucketsPrefixList({
    this.includedObjectPrefixes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includedObjectPrefixes': ?includedObjectPrefixes,
    };
  }

  factory BatchOperationsJobBucketListBucketsPrefixList.fromMap(Map<String, dynamic> map) {
    return BatchOperationsJobBucketListBucketsPrefixList(
      includedObjectPrefixes: (() { final guardedValue = map['includedObjectPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
