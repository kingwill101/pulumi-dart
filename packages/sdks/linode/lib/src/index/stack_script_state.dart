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
  StackScriptState({
    pulumi.Output<String>? created,
    pulumi.Output<int>? deploymentsActive,
    pulumi.Output<int>? deploymentsTotal,
    pulumi.Output<String>? description,
    pulumi.Output<List<String>>? images,
    pulumi.Output<bool>? isPublic,
    pulumi.Output<String>? label,
    pulumi.Output<String>? revNote,
    pulumi.Output<String>? script,
    pulumi.Output<String>? updated,
    pulumi.Output<List<StackScriptUserDefinedField>>? userDefinedFields,
    pulumi.Output<String>? userGravatarId,
    pulumi.Output<String>? username,
  }) :
      created = pulumi.Input.asOptionalInput<String>(created),
      deploymentsActive = pulumi.Input.asOptionalInput<int>(deploymentsActive),
      deploymentsTotal = pulumi.Input.asOptionalInput<int>(deploymentsTotal),
      description = pulumi.Input.asOptionalInput<String>(description),
      images = pulumi.Input.asOptionalInput<List<String>>(images),
      isPublic = pulumi.Input.asOptionalInput<bool>(isPublic),
      label = pulumi.Input.asOptionalInput<String>(label),
      revNote = pulumi.Input.asOptionalInput<String>(revNote),
      script = pulumi.Input.asOptionalInput<String>(script),
      updated = pulumi.Input.asOptionalInput<String>(updated),
      userDefinedFields = pulumi.Input.asOptionalInput<List<StackScriptUserDefinedField>>(userDefinedFields),
      userGravatarId = pulumi.Input.asOptionalInput<String>(userGravatarId),
      username = pulumi.Input.asOptionalInput<String>(username);

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
      created: map['created'] == null ? null : pulumi.Output.create<String>(map['created'] as String),
      deploymentsActive: map['deploymentsActive'] == null ? null : pulumi.Output.create<int>(map['deploymentsActive'] as int),
      deploymentsTotal: map['deploymentsTotal'] == null ? null : pulumi.Output.create<int>(map['deploymentsTotal'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      images: map['images'] == null ? null : pulumi.Output.create<List<String>>((map['images'] as List).cast<String>()),
      isPublic: map['isPublic'] == null ? null : pulumi.Output.create<bool>(map['isPublic'] as bool),
      label: map['label'] == null ? null : pulumi.Output.create<String>(map['label'] as String),
      revNote: map['revNote'] == null ? null : pulumi.Output.create<String>(map['revNote'] as String),
      script: map['script'] == null ? null : pulumi.Output.create<String>(map['script'] as String),
      updated: map['updated'] == null ? null : pulumi.Output.create<String>(map['updated'] as String),
      userDefinedFields: map['userDefinedFields'] == null ? null : pulumi.Output.create<List<StackScriptUserDefinedField>>(pulumi.Input.decodeList<StackScriptUserDefinedField>(map['userDefinedFields'], (value) => StackScriptUserDefinedField.fromMap((value as Map).cast<String, dynamic>()))),
      userGravatarId: map['userGravatarId'] == null ? null : pulumi.Output.create<String>(map['userGravatarId'] as String),
      username: map['username'] == null ? null : pulumi.Output.create<String>(map['username'] as String),
    );
  }
}

