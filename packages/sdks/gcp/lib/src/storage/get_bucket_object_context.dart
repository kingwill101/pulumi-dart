// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_object_context_custom.dart';

class GetBucketObjectContext {
  /// A list of custom context key-value pairs.
  final List<GetBucketObjectContextCustom> customs;

  /// Creates a new [GetBucketObjectContext].
  /// [customs] A list of custom context key-value pairs.
  GetBucketObjectContext({
    required this.customs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customs': pulumi.Input.encodeList<GetBucketObjectContextCustom, Map<String, dynamic>>(customs, (value) => value.toMap()),
    };
  }

  factory GetBucketObjectContext.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectContext(
      customs: pulumi.Input.decodeList<GetBucketObjectContextCustom>(map['customs'], (value) => GetBucketObjectContextCustom.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

