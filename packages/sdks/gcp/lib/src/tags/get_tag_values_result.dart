// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tag_values_value.dart';

/// Result data returned by getTagValues.
class GetTagValuesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The resource name of the new TagValue's parent TagKey. Must be of the form tagKeys/{tag_key_id}.
  final String parent;
  final List<GetTagValuesValue> values;

  /// Creates a new [GetTagValuesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [parent] The resource name of the new TagValue's parent TagKey. Must be of the form tagKeys/{tag_key_id}.
  /// [values] Required.
  GetTagValuesResult({
    required this.id,
    required this.parent,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'parent': parent,
      'values': pulumi.Input.encodeList<GetTagValuesValue, Map<String, dynamic>>(values, (value) => value.toMap()),
    };
  }

  factory GetTagValuesResult.fromMap(Map<String, dynamic> map) {
    return GetTagValuesResult(
      id: map['id'] as String,
      parent: map['parent'] as String,
      values: pulumi.Input.decodeList<GetTagValuesValue>(map['values']!, (value) => GetTagValuesValue.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

