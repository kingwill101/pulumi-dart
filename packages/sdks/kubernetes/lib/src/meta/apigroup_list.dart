// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apigroup.dart';

/// APIGroupList is a list of APIGroup, to allow clients to discover the API at /apis.
class APIGroupList {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String?>? apiVersion;
  /// groups is a list of APIGroup.
  final pulumi.Input<List<APIGroup>> groups;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String?>? kind;

  /// Creates a new [APIGroupList].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [groups] groups is a list of APIGroup.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  const APIGroupList({
    this.apiVersion,
    required this.groups,
    this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'groups': pulumi.Input.mapInputValue<List<APIGroup>, List<Map<String, dynamic>>>(groups, (value) => pulumi.Input.encodeList<APIGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': ?kind,
    };
  }

  factory APIGroupList.fromMap(Map<String, dynamic> map) {
    return APIGroupList(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groups: pulumi.Input.fromValue(pulumi.Input.decodeList<APIGroup>(map['groups']!, (value) => APIGroup.fromMap((value as Map).cast<String, dynamic>()))),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
