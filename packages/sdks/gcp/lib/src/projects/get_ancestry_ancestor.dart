// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAncestryAncestor {
  /// If it's a project, the `project_id` is exported, else the numeric folder id or organization id.
  final pulumi.Input<String> id;
  /// One of `"project"`, `"folder"` or `"organization"`.
  final pulumi.Input<String> type;

  /// Creates a new [GetAncestryAncestor].
  /// [id] If it's a project, the `project_id` is exported, else the numeric folder id or organization id.
  /// [type] One of `"project"`, `"folder"` or `"organization"`.
  const GetAncestryAncestor({
    required this.id,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'type': type,
    };
  }

  factory GetAncestryAncestor.fromMap(Map<String, dynamic> map) {
    return GetAncestryAncestor(
      id: pulumi.Input.fromValue(map['id'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

