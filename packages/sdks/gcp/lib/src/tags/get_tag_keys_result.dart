// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tag_keys_key.dart';

/// Result data returned by getTagKeys.
class GetTagKeysResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetTagKeysKey> keys;
  /// The resource name of the TagKey's parent. A TagKey can be parented by an Orgination or a Project.
  final String parent;

  /// Creates a new [GetTagKeysResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keys] Required.
  /// [parent] The resource name of the TagKey's parent. A TagKey can be parented by an Orgination or a Project.
  GetTagKeysResult({
    required this.id,
    required this.keys,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'keys': pulumi.Input.encodeList<GetTagKeysKey, Map<String, dynamic>>(keys, (value) => value.toMap()),
      'parent': parent,
    };
  }

  factory GetTagKeysResult.fromMap(Map<String, dynamic> map) {
    return GetTagKeysResult(
      id: map['id'] as String,
      keys: pulumi.Input.decodeList<GetTagKeysKey>(map['keys'], (value) => GetTagKeysKey.fromMap((value as Map).cast<String, dynamic>())),
      parent: map['parent'] as String,
    );
  }
}

