// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDirectoryRoleTemplatesRoleTemplate {
  /// The description of the directory role template.
  final pulumi.Input<String> description;
  /// The display name of the directory role template.
  final pulumi.Input<String> displayName;
  /// The object ID of the directory role template.
  final pulumi.Input<String> objectId;

  /// Creates a new [GetDirectoryRoleTemplatesRoleTemplate].
  /// [description] The description of the directory role template.
  /// [displayName] The display name of the directory role template.
  /// [objectId] The object ID of the directory role template.
  GetDirectoryRoleTemplatesRoleTemplate({
    required this.description,
    required this.displayName,
    required this.objectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'displayName': displayName,
      'objectId': objectId,
    };
  }

  factory GetDirectoryRoleTemplatesRoleTemplate.fromMap(Map<String, dynamic> map) {
    return GetDirectoryRoleTemplatesRoleTemplate(
      description: pulumi.Input.fromValue(map['description'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      objectId: pulumi.Input.fromValue(map['objectId'] as String),
    );
  }
}

