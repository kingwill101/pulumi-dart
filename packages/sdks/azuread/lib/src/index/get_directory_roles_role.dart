// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDirectoryRolesRole {
  /// The description of the directory role.
  final pulumi.Input<String> description;
  /// The display name of the directory role.
  final pulumi.Input<String> displayName;
  /// The object ID of the directory role.
  final pulumi.Input<String> objectId;
  /// The template ID of the directory role.
  final pulumi.Input<String> templateId;

  /// Creates a new [GetDirectoryRolesRole].
  /// [description] The description of the directory role.
  /// [displayName] The display name of the directory role.
  /// [objectId] The object ID of the directory role.
  /// [templateId] The template ID of the directory role.
  GetDirectoryRolesRole({
    required this.description,
    required this.displayName,
    required this.objectId,
    required this.templateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'displayName': displayName,
      'objectId': objectId,
      'templateId': templateId,
    };
  }

  factory GetDirectoryRolesRole.fromMap(Map<String, dynamic> map) {
    return GetDirectoryRolesRole(
      description: (map['description'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      objectId: (map['objectId'] as String).input(),
      templateId: (map['templateId'] as String).input(),
    );
  }
}

