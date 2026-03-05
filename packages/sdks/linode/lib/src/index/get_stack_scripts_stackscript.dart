// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_stack_scripts_stackscript_user_defined_field.dart';

class GetStackScriptsStackscript {
  /// The date this StackScript was created.
  final pulumi.Input<String> created;
  /// Count of currently active, deployed Linodes created from this StackScript.
  final pulumi.Input<int> deploymentsActive;
  /// The total number of times this StackScript has been deployed.
  final pulumi.Input<int> deploymentsTotal;
  /// A description for the StackScript.
  final pulumi.Input<String> description;
  /// The unique ID of the StackScript.
  final pulumi.Input<String> id;
  /// An array of Image IDs representing the Images that this StackScript is compatible for deploying with.
  final pulumi.Input<List<String>> images;
  /// This determines whether other users can use your StackScript. Once a StackScript is made public, it cannot be made private.
  final pulumi.Input<bool> isPublic;
  /// A human-readable label for the field that will serve as the input prompt for entering the value during deployment.
  final pulumi.Input<String> label;
  /// This field allows you to add notes for the set of revisions made to this StackScript.
  final pulumi.Input<String> revNote;
  /// The script to execute when provisioning a new Linode with this StackScript.
  final pulumi.Input<String> script;
  /// The date this StackScript was updated.
  final pulumi.Input<String> updated;
  /// This is a list of fields defined with a special syntax inside this StackScript that allow for supplying customized parameters during deployment.
  final pulumi.Input<List<GetStackScriptsStackscriptUserDefinedField>> userDefinedFields;
  /// The Gravatar ID for the User who created the StackScript.
  final pulumi.Input<String> userGravatarId;
  /// The User who created the StackScript.
  final pulumi.Input<String> username;

  /// Creates a new [GetStackScriptsStackscript].
  /// [created] The date this StackScript was created.
  /// [deploymentsActive] Count of currently active, deployed Linodes created from this StackScript.
  /// [deploymentsTotal] The total number of times this StackScript has been deployed.
  /// [description] A description for the StackScript.
  /// [id] The unique ID of the StackScript.
  /// [images] An array of Image IDs representing the Images that this StackScript is compatible for deploying with.
  /// [isPublic] This determines whether other users can use your StackScript. Once a StackScript is made public, it cannot be made private.
  /// [label] A human-readable label for the field that will serve as the input prompt for entering the value during deployment.
  /// [revNote] This field allows you to add notes for the set of revisions made to this StackScript.
  /// [script] The script to execute when provisioning a new Linode with this StackScript.
  /// [updated] The date this StackScript was updated.
  /// [userDefinedFields] This is a list of fields defined with a special syntax inside this StackScript that allow for supplying customized parameters during deployment.
  /// [userGravatarId] The Gravatar ID for the User who created the StackScript.
  /// [username] The User who created the StackScript.
  GetStackScriptsStackscript({
    required this.created,
    required this.deploymentsActive,
    required this.deploymentsTotal,
    required this.description,
    required this.id,
    required this.images,
    required this.isPublic,
    required this.label,
    required this.revNote,
    required this.script,
    required this.updated,
    required this.userDefinedFields,
    required this.userGravatarId,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': created,
      'deploymentsActive': deploymentsActive,
      'deploymentsTotal': deploymentsTotal,
      'description': description,
      'id': id,
      'images': images,
      'isPublic': isPublic,
      'label': label,
      'revNote': revNote,
      'script': script,
      'updated': updated,
      'userDefinedFields': pulumi.Input.mapInputValue<List<GetStackScriptsStackscriptUserDefinedField>, List<Map<String, dynamic>>>(userDefinedFields, (value) => pulumi.Input.encodeList<GetStackScriptsStackscriptUserDefinedField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userGravatarId': userGravatarId,
      'username': username,
    };
  }

  factory GetStackScriptsStackscript.fromMap(Map<String, dynamic> map) {
    return GetStackScriptsStackscript(
      created: pulumi.Input.fromValue(map['created'] as String),
      deploymentsActive: pulumi.Input.fromValue(map['deploymentsActive'] as int),
      deploymentsTotal: pulumi.Input.fromValue(map['deploymentsTotal'] as int),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      images: pulumi.Input.fromValue((map['images'] as List).cast<String>()),
      isPublic: pulumi.Input.fromValue(map['isPublic'] as bool),
      label: pulumi.Input.fromValue(map['label'] as String),
      revNote: pulumi.Input.fromValue(map['revNote'] as String),
      script: pulumi.Input.fromValue(map['script'] as String),
      updated: pulumi.Input.fromValue(map['updated'] as String),
      userDefinedFields: pulumi.Input.fromValue(pulumi.Input.decodeList<GetStackScriptsStackscriptUserDefinedField>(map['userDefinedFields']!, (value) => GetStackScriptsStackscriptUserDefinedField.fromMap((value as Map).cast<String, dynamic>()))),
      userGravatarId: pulumi.Input.fromValue(map['userGravatarId'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

