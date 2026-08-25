// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tag_keys_key.dart';

/// Result data returned by getTagKeys.
class GetTagKeysResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetTagKeysKey>? keys;
  /// The resource name of the TagKey's parent. A TagKey can be parented by an Orgination or a Project.
  final String? parent;

  /// Creates a new [GetTagKeysResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keys] Optional.
  /// [parent] The resource name of the TagKey's parent. A TagKey can be parented by an Orgination or a Project.
  const GetTagKeysResult({
    this.id,
    this.keys,
    this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'keys': ?(() { final guardedValue = keys; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTagKeysKey, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'parent': ?parent,
    };
  }

  factory GetTagKeysResult.fromMap(Map<String, dynamic> map) {
    return GetTagKeysResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keys: (() { final guardedValue = map['keys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTagKeysKey>(guardedValue, (value) => GetTagKeysKey.fromMap((value as Map).cast<String, dynamic>())); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
