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
  /// > Either `display_name` or `template_id` must be specified.
  final pulumi.Input<String>? templateId;

  /// Creates a new [DirectoryRoleState].
  /// [description] The description of the directory role.
  /// [displayName] The display name of the directory role to activate. Changing this forces a new resource to be created.
  /// [objectId] The object ID of the directory role.
  /// [templateId] The object ID of the role template from which to activate the directory role. Changing this forces a new resource to be created.
  DirectoryRoleState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? objectId,
    pulumi.Output<String>? templateId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      objectId = pulumi.Input.asOptionalInput<String>(objectId),
      templateId = pulumi.Input.asOptionalInput<String>(templateId);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      objectId: map['objectId'] == null ? null : pulumi.Output.create<String>(map['objectId'] as String),
      templateId: map['templateId'] == null ? null : pulumi.Output.create<String>(map['templateId'] as String),
    );
  }
}

