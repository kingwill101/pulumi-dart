// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_script_user_defined_field.dart';

/// Input properties used for looking up and filtering StackScript resources.
class StackScriptState {
  /// The date this StackScript was created.
  final pulumi.Input<String>? created;
  /// Count of currently active, deployed Linodes created from this StackScript.
  final pulumi.Input<int>? deploymentsActive;
  /// The total number of times this StackScript has been deployed.
  final pulumi.Input<int>? deploymentsTotal;
  /// A description for the StackScript.
  final pulumi.Input<String>? description;
  /// A set of Image IDs representing the Images that this StackScript is compatible for deploying with. `any/all` indicates that all available image distributions, including private images, are accepted. Currently private image IDs are not supported.
  ///
  /// - - -
  final pulumi.Input<List<String>>? images;
  /// This determines whether other users can use your StackScript. Once a StackScript is made public, it cannot be made private. *Changing `is_public` forces the creation of a new StackScript*
  final pulumi.Input<bool>? isPublic;
  /// The StackScript's label is for display purposes only.
  final pulumi.Input<String>? label;
  /// This field allows you to add notes for the set of revisions made to this StackScript.
  final pulumi.Input<String>? revNote;
  /// The script to execute when provisioning a new Linode with this StackScript.
  final pulumi.Input<String>? script;
  /// The date this StackScript was updated.
  final pulumi.Input<String>? updated;
  /// This is a list of fields defined with a special syntax inside this StackScript that allow for supplying customized parameters during deployment.
  final pulumi.Input<List<StackScriptUserDefinedField>>? userDefinedFields;
  /// The Gravatar ID for the User who created the StackScript.
  final pulumi.Input<String>? userGravatarId;
  /// The User who created the StackScript.
  final pulumi.Input<String>? username;

  /// Creates a new [StackScriptState].
  /// [created] The date this StackScript was created.
  /// [deploymentsActive] Count of currently active, deployed Linodes created from this StackScript.
  /// [deploymentsTotal] The total number of times this StackScript has been deployed.
  /// [description] A description for the StackScript.
  /// [images] A set of Image IDs representing the Images that this StackScript is compatible for deploying with. `any/all` indicates that all available image distributions, including private images, are accepted. Currently private image IDs are not supported.
  /// [isPublic] This determines whether other users can use your StackScript. Once a StackScript is made public, it cannot be made private. *Changing `is_public` forces the creation of a new StackScript*
  /// [label] The StackScript's label is for display purposes only.
  /// [revNote] This field allows you to add notes for the set of revisions made to this StackScript.
  /// [script] The script to execute when provisioning a new Linode with this StackScript.
  /// [updated] The date this StackScript was updated.
  /// [userDefinedFields] This is a list of fields defined with a special syntax inside this StackScript that allow for supplying customized parameters during deployment.
  /// [userGravatarId] The Gravatar ID for the User who created the StackScript.
  /// [username] The User who created the StackScript.
  const StackScriptState({
    this.created,
    this.deploymentsActive,
    this.deploymentsTotal,
    this.description,
    this.images,
    this.isPublic,
    this.label,
    this.revNote,
    this.script,
    this.updated,
    this.userDefinedFields,
    this.userGravatarId,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': ?created,
      'deploymentsActive': ?deploymentsActive,
      'deploymentsTotal': ?deploymentsTotal,
      'description': ?description,
      'images': ?images,
      'isPublic': ?isPublic,
      'label': ?label,
      'revNote': ?revNote,
      'script': ?script,
      'updated': ?updated,
      'userDefinedFields': ?pulumi.Input.mapOptionalInputValue<List<StackScriptUserDefinedField>, List<Map<String, dynamic>>>(userDefinedFields, (value) => pulumi.Input.encodeList<StackScriptUserDefinedField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userGravatarId': ?userGravatarId,
      'username': ?username,
    };
  }

  factory StackScriptState.fromMap(Map<String, dynamic> map) {
    return StackScriptState(
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentsActive: (() { final guardedValue = map['deploymentsActive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      deploymentsTotal: (() { final guardedValue = map['deploymentsTotal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      images: (() { final guardedValue = map['images']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      isPublic: (() { final guardedValue = map['isPublic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revNote: (() { final guardedValue = map['revNote']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      script: (() { final guardedValue = map['script']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updated: (() { final guardedValue = map['updated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userDefinedFields: (() { final guardedValue = map['userDefinedFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StackScriptUserDefinedField>(guardedValue, (value) => StackScriptUserDefinedField.fromMap((value as Map).cast<String, dynamic>()))); })(),
      userGravatarId: (() { final guardedValue = map['userGravatarId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

