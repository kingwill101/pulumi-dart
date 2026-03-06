// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ancestry_ancestor.dart';

/// Result data returned by getAncestry.
class GetAncestryResult {
  /// A list of the project's ancestors. Structure is defined below.
  final List<GetAncestryAncestor> ancestors;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The organization id.
  final String orgId;
  /// The parent's id.
  final String parentId;
  /// One of `"folder"` or `"organization"`.
  final String parentType;
  final String? project;

  /// Creates a new [GetAncestryResult].
  /// [ancestors] A list of the project's ancestors. Structure is defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [orgId] The organization id.
  /// [parentId] The parent's id.
  /// [parentType] One of `"folder"` or `"organization"`.
  /// [project] Optional.
  const GetAncestryResult({
    required this.ancestors,
    required this.id,
    required this.orgId,
    required this.parentId,
    required this.parentType,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ancestors': pulumi.Input.encodeList<GetAncestryAncestor, Map<String, dynamic>>(ancestors, (value) => value.toMap()),
      'id': id,
      'orgId': orgId,
      'parentId': parentId,
      'parentType': parentType,
      'project': ?project,
    };
  }

  factory GetAncestryResult.fromMap(Map<String, dynamic> map) {
    return GetAncestryResult(
      ancestors: pulumi.Input.decodeList<GetAncestryAncestor>(map['ancestors']!, (value) => GetAncestryAncestor.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      orgId: map['orgId'] as String,
      parentId: map['parentId'] as String,
      parentType: map['parentType'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

