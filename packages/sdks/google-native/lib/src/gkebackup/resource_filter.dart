// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_kind.dart';

/// ResourceFilter specifies matching criteria to limit the scope of a change to a specific set of kubernetes resources that are selected for restoration from a backup.
class ResourceFilter {
  /// Optional. (Filtering parameter) Any resource subject to transformation must belong to one of the listed "types". If this field is not provided, no type filtering will be performed (all resources of all types matching previous filtering parameters will be candidates for transformation).
  final pulumi.Input<List<GroupKind>>? groupKinds;

  /// Optional. This is a [JSONPath] (https://github.com/json-path/JsonPath/blob/master/README.md) expression that matches specific fields of candidate resources and it operates as a filtering parameter (resources that are not matched with this expression will not be candidates for transformation).
  final pulumi.Input<String>? jsonPath;

  /// Optional. (Filtering parameter) Any resource subject to transformation must be contained within one of the listed Kubernetes Namespace in the Backup. If this field is not provided, no namespace filtering will be performed (all resources in all Namespaces, including all cluster-scoped resources, will be candidates for transformation).
  final pulumi.Input<List<String>>? namespaces;

  /// Creates a new [ResourceFilter].
  /// [groupKinds] Optional. (Filtering parameter) Any resource subject to transformation must belong to one of the listed "types". If this field is not provided, no type filtering will be performed (all resources of all types matching previous filtering parameters will be candidates for transformation).
  /// [jsonPath] Optional. This is a [JSONPath] (https://github.com/json-path/JsonPath/blob/master/README.md) expression that matches specific fields of candidate resources and it operates as a filtering parameter (resources that are not matched with this expression will not be candidates for transformation).
  /// [namespaces] Optional. (Filtering parameter) Any resource subject to transformation must be contained within one of the listed Kubernetes Namespace in the Backup. If this field is not provided, no namespace filtering will be performed (all resources in all Namespaces, including all cluster-scoped resources, will be candidates for transformation).
  ResourceFilter({this.groupKinds, this.jsonPath, this.namespaces});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupKinds':
          ?pulumi.Input.mapOptionalInputValue<
            List<GroupKind>,
            List<Map<String, dynamic>>
          >(
            groupKinds,
            (value) => pulumi.Input.encodeList<GroupKind, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'jsonPath': ?jsonPath,
      'namespaces': ?namespaces,
    };
  }

  factory ResourceFilter.fromMap(Map<String, dynamic> map) {
    return ResourceFilter(
      groupKinds: (() {
        final guardedValue = map['groupKinds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GroupKind>(
            guardedValue,
            (value) =>
                GroupKind.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      jsonPath: (() {
        final guardedValue = map['jsonPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namespaces: (() {
        final guardedValue = map['namespaces'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
