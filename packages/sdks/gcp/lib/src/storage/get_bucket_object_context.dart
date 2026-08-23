// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_object_context_custom.dart';

class GetBucketObjectContext {
  /// A list of custom context key-value pairs.
  final pulumi.Input<List<GetBucketObjectContextCustom>> customs;

  /// Creates a new [GetBucketObjectContext].
  /// [customs] A list of custom context key-value pairs.
  const GetBucketObjectContext({
    required this.customs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customs': pulumi.Input.mapInputValue<List<GetBucketObjectContextCustom>, List<Map<String, dynamic>>>(customs, (value) => pulumi.Input.encodeList<GetBucketObjectContextCustom, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetBucketObjectContext.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectContext(
      customs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBucketObjectContextCustom>(map['customs']!, (value) => GetBucketObjectContextCustom.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
