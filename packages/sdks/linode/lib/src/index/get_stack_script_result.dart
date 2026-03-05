// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_stack_script_user_defined_field.dart';

/// Result data returned by getStackScript.
class GetStackScriptResult {
  /// The date this StackScript was created.
  final String created;
  /// Count of currently active, deployed Linodes created from this StackScript.
  final int deploymentsActive;
  /// The total number of times this StackScript has been deployed.
  final int deploymentsTotal;
  /// A description for the StackScript.
  final String description;
  final String id;
  /// A set of Image IDs representing the Images that this StackScript is compatible for deploying with. `any/all` indicates that all available image distributions, including private images, are accepted.
  final List<String> images;
  /// This determines whether other users can use your StackScript. Once a StackScript is made public, it cannot be made private.
  final bool isPublic;
  /// A human-readable label for the field that will serve as the input prompt for entering the value during deployment.
  final String label;
  /// This field allows you to add notes for the set of revisions made to this StackScript.
  final String revNote;
  /// The script to execute when provisioning a new Linode with this StackScript.
  final String script;
  /// The date this StackScript was updated.
  final String updated;
  /// This is a list of fields defined with a special syntax inside this StackScript that allow for supplying customized parameters during deployment.
  final List<GetStackScriptUserDefinedField> userDefinedFields;
  /// The Gravatar ID for the User who created the StackScript.
  final String userGravatarId;
  /// The User who created the StackScript.
  final String username;

  /// Creates a new [GetStackScriptResult].
  /// [created] The date this StackScript was created.
  /// [deploymentsActive] Count of currently active, deployed Linodes created from this StackScript.
  /// [deploymentsTotal] The total number of times this StackScript has been deployed.
  /// [description] A description for the StackScript.
  /// [id] Required.
  /// [images] A set of Image IDs representing the Images that this StackScript is compatible for deploying with. `any/all` indicates that all available image distributions, including private images, are accepted.
  /// [isPublic] This determines whether other users can use your StackScript. Once a StackScript is made public, it cannot be made private.
  /// [label] A human-readable label for the field that will serve as the input prompt for entering the value during deployment.
  /// [revNote] This field allows you to add notes for the set of revisions made to this StackScript.
  /// [script] The script to execute when provisioning a new Linode with this StackScript.
  /// [updated] The date this StackScript was updated.
  /// [userDefinedFields] This is a list of fields defined with a special syntax inside this StackScript that allow for supplying customized parameters during deployment.
  /// [userGravatarId] The Gravatar ID for the User who created the StackScript.
  /// [username] The User who created the StackScript.
  GetStackScriptResult({
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
      'userDefinedFields': pulumi.Input.encodeList<GetStackScriptUserDefinedField, Map<String, dynamic>>(userDefinedFields, (value) => value.toMap()),
      'userGravatarId': userGravatarId,
      'username': username,
    };
  }

  factory GetStackScriptResult.fromMap(Map<String, dynamic> map) {
    return GetStackScriptResult(
      created: map['created'] as String,
      deploymentsActive: map['deploymentsActive'] as int,
      deploymentsTotal: map['deploymentsTotal'] as int,
      description: map['description'] as String,
      id: map['id'] as String,
      images: (map['images'] as List).cast<String>(),
      isPublic: map['isPublic'] as bool,
      label: map['label'] as String,
      revNote: map['revNote'] as String,
      script: map['script'] as String,
      updated: map['updated'] as String,
      userDefinedFields: pulumi.Input.decodeList<GetStackScriptUserDefinedField>(map['userDefinedFields']!, (value) => GetStackScriptUserDefinedField.fromMap((value as Map).cast<String, dynamic>())),
      userGravatarId: map['userGravatarId'] as String,
      username: map['username'] as String,
    );
  }
}

