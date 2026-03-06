// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_kind_response.dart';

/// ResourceFilter specifies matching criteria to limit the scope of a change to a specific set of kubernetes resources that are selected for restoration from a backup.
class ResourceFilterResponse {
  /// Optional. (Filtering parameter) Any resource subject to transformation must belong to one of the listed "types". If this field is not provided, no type filtering will be performed (all resources of all types matching previous filtering parameters will be candidates for transformation).
  final pulumi.Input<List<GroupKindResponse>> groupKinds;
  /// Optional. This is a [JSONPath] (https://github.com/json-path/JsonPath/blob/master/README.md) expression that matches specific fields of candidate resources and it operates as a filtering parameter (resources that are not matched with this expression will not be candidates for transformation).
  final pulumi.Input<String> jsonPath;
  /// Optional. (Filtering parameter) Any resource subject to transformation must be contained within one of the listed Kubernetes Namespace in the Backup. If this field is not provided, no namespace filtering will be performed (all resources in all Namespaces, including all cluster-scoped resources, will be candidates for transformation).
  final pulumi.Input<List<String>> namespaces;

  /// Creates a new [ResourceFilterResponse].
  /// [groupKinds] Optional. (Filtering parameter) Any resource subject to transformation must belong to one of the listed "types". If this field is not provided, no type filtering will be performed (all resources of all types matching previous filtering parameters will be candidates for transformation).
  /// [jsonPath] Optional. This is a [JSONPath] (https://github.com/json-path/JsonPath/blob/master/README.md) expression that matches specific fields of candidate resources and it operates as a filtering parameter (resources that are not matched with this expression will not be candidates for transformation).
  /// [namespaces] Optional. (Filtering parameter) Any resource subject to transformation must be contained within one of the listed Kubernetes Namespace in the Backup. If this field is not provided, no namespace filtering will be performed (all resources in all Namespaces, including all cluster-scoped resources, will be candidates for transformation).
  const ResourceFilterResponse({
    required this.groupKinds,
    required this.jsonPath,
    required this.namespaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupKinds': pulumi.Input.mapInputValue<List<GroupKindResponse>, List<Map<String, dynamic>>>(groupKinds, (value) => pulumi.Input.encodeList<GroupKindResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'jsonPath': jsonPath,
      'namespaces': namespaces,
    };
  }

  factory ResourceFilterResponse.fromMap(Map<String, dynamic> map) {
    return ResourceFilterResponse(
      groupKinds: pulumi.Input.fromValue(pulumi.Input.decodeList<GroupKindResponse>(map['groupKinds']!, (value) => GroupKindResponse.fromMap((value as Map).cast<String, dynamic>()))),
      jsonPath: pulumi.Input.fromValue(map['jsonPath'] as String),
      namespaces: pulumi.Input.fromValue((map['namespaces'] as List).cast<String>()),
    );
  }
}

