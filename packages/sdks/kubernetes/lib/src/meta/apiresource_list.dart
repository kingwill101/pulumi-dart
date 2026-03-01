// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apiresource.dart';

/// APIResourceList is a list of APIResource, it is used to expose the name of the resources supported in a specific group and version, and if the resource is namespaced.
class APIResourceList {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// groupVersion is the group and version this APIResourceList is for.
  final String groupVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  /// resources contains the name of the resources and if they are namespaced.
  final List<APIResource> resources;

  /// Creates a new [APIResourceList].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [groupVersion] groupVersion is the group and version this APIResourceList is for.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [resources] resources contains the name of the resources and if they are namespaced.
  APIResourceList({
    this.apiVersion,
    required this.groupVersion,
    this.kind,
    required this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'groupVersion': groupVersion,
      'kind': ?kind,
      'resources': pulumi.Input.encodeList<APIResource, Map<String, dynamic>>(resources, (value) => value.toMap()),
    };
  }

  factory APIResourceList.fromMap(Map<String, dynamic> map) {
    return APIResourceList(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      groupVersion: map['groupVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      resources: pulumi.Input.decodeList<APIResource>(map['resources'], (value) => APIResource.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

