// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DirectoryRole resources.
class DirectoryRoleState {
  /// The description of the directory role.
  final pulumi.Input<String>? description;
  /// The display name of the directory role to activate. Changing this forces a new resource to be created.
  final pulumi.Input<String>? displayName;
  /// The object ID of the directory role.
  final pulumi.Input<String>? objectId;
  /// The object ID of the role template from which to activate the directory role. Changing this forces a new resource to be created.
  ///
  /// &gt; Either `display_name` or `template_id` must be specified.
  final pulumi.Input<String>? templateId;

  /// Creates a new [DirectoryRoleState].
  /// [description] The description of the directory role.
  /// [displayName] The display name of the directory role to activate. Changing this forces a new resource to be created.
  /// [objectId] The object ID of the directory role.
  /// [templateId] The object ID of the role template from which to activate the directory role. Changing this forces a new resource to be created.
  const DirectoryRoleState({
    this.description,
    this.displayName,
    this.objectId,
    this.templateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'objectId': ?objectId,
      'templateId': ?templateId,
    };
  }

  factory DirectoryRoleState.fromMap(Map<String, dynamic> map) {
    return DirectoryRoleState(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateId: (() { final guardedValue = map['templateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

