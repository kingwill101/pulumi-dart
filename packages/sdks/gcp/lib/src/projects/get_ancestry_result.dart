// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ancestry_ancestor.dart';

/// Result data returned by getAncestry.
class GetAncestryResult {
  /// A list of the project's ancestors. Structure is defined below.
  final List<GetAncestryAncestor>? ancestors;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The organization id.
  final String? orgId;
  /// The parent's id.
  final String? parentId;
  /// One of `"folder"` or `"organization"`.
  final String? parentType;
  final String? project;

  /// Creates a new [GetAncestryResult].
  /// [ancestors] A list of the project's ancestors. Structure is defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [orgId] The organization id.
  /// [parentId] The parent's id.
  /// [parentType] One of `"folder"` or `"organization"`.
  /// [project] Optional.
  const GetAncestryResult({
    this.ancestors,
    this.id,
    this.orgId,
    this.parentId,
    this.parentType,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ancestors': ?(() { final guardedValue = ancestors; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAncestryAncestor, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'orgId': ?orgId,
      'parentId': ?parentId,
      'parentType': ?parentType,
      'project': ?project,
    };
  }

  factory GetAncestryResult.fromMap(Map<String, dynamic> map) {
    return GetAncestryResult(
      ancestors: (() { final guardedValue = map['ancestors']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAncestryAncestor>(guardedValue, (value) => GetAncestryAncestor.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      orgId: (() { final guardedValue = map['orgId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parentId: (() { final guardedValue = map['parentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parentType: (() { final guardedValue = map['parentType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
