// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resource_group_scope_object.dart';

class GetResourceGroupScope {
  /// This is a combination of pre-defined resource name and identifier (like Account ID etc.)
  final pulumi.Input<String> key;
  /// A list of scope objects for additional context.
  final pulumi.Input<List<GetResourceGroupScopeObject>> objects;

  /// Creates a new [GetResourceGroupScope].
  /// [key] This is a combination of pre-defined resource name and identifier (like Account ID etc.)
  /// [objects] A list of scope objects for additional context.
  const GetResourceGroupScope({
    required this.key,
    required this.objects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'objects': pulumi.Input.mapInputValue<List<GetResourceGroupScopeObject>, List<Map<String, dynamic>>>(objects, (value) => pulumi.Input.encodeList<GetResourceGroupScopeObject, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetResourceGroupScope.fromMap(Map<String, dynamic> map) {
    return GetResourceGroupScope(
      key: pulumi.Input.fromValue(map['key'] as String),
      objects: pulumi.Input.fromValue(pulumi.Input.decodeList<GetResourceGroupScopeObject>(map['objects']!, (value) => GetResourceGroupScopeObject.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
