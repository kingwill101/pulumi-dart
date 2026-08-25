// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tag_values_value.dart';

/// Result data returned by getTagValues.
class GetTagValuesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The resource name of the new TagValue's parent TagKey. Must be of the form tagKeys/{tag_key_id}.
  final String? parent;
  final List<GetTagValuesValue>? values;

  /// Creates a new [GetTagValuesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [parent] The resource name of the new TagValue's parent TagKey. Must be of the form tagKeys/{tag_key_id}.
  /// [values] Optional.
  const GetTagValuesResult({
    this.id,
    this.parent,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'parent': ?parent,
      'values': ?(() { final guardedValue = values; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTagValuesValue, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetTagValuesResult.fromMap(Map<String, dynamic> map) {
    return GetTagValuesResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return guardedValue as String; })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTagValuesValue>(guardedValue, (value) => GetTagValuesValue.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
