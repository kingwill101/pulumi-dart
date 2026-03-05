// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_object_content_context_custom.dart';

class GetBucketObjectContentContext {
  /// A list of custom context key-value pairs.
  final pulumi.Input<List<GetBucketObjectContentContextCustom>> customs;

  /// Creates a new [GetBucketObjectContentContext].
  /// [customs] A list of custom context key-value pairs.
  GetBucketObjectContentContext({
    required this.customs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customs': pulumi.Input.mapInputValue<List<GetBucketObjectContentContextCustom>, List<Map<String, dynamic>>>(customs, (value) => pulumi.Input.encodeList<GetBucketObjectContentContextCustom, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetBucketObjectContentContext.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectContentContext(
      customs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBucketObjectContentContextCustom>(map['customs']!, (value) => GetBucketObjectContentContextCustom.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

