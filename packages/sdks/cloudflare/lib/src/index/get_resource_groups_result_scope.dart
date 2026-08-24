// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resource_groups_result_scope_object.dart';

class GetResourceGroupsResultScope {
  /// This is a combination of pre-defined resource name and identifier (like Account ID etc.)
  final pulumi.Input<String> key;
  /// A list of scope objects for additional context.
  final pulumi.Input<List<GetResourceGroupsResultScopeObject>> objects;

  /// Creates a new [GetResourceGroupsResultScope].
  /// [key] This is a combination of pre-defined resource name and identifier (like Account ID etc.)
  /// [objects] A list of scope objects for additional context.
  const GetResourceGroupsResultScope({
    required this.key,
    required this.objects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'objects': pulumi.Input.mapInputValue<List<GetResourceGroupsResultScopeObject>, List<Map<String, dynamic>>>(objects, (value) => pulumi.Input.encodeList<GetResourceGroupsResultScopeObject, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetResourceGroupsResultScope.fromMap(Map<String, dynamic> map) {
    return GetResourceGroupsResultScope(
      key: pulumi.Input.fromValue(map['key'] as String),
      objects: pulumi.Input.fromValue(pulumi.Input.decodeList<GetResourceGroupsResultScopeObject>(map['objects']!, (value) => GetResourceGroupsResultScopeObject.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
