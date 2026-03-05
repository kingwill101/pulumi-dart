// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_project_identity.dart';

/// {@template pulumi_cognitive_account_project_account_project_args_doc}
/// The set of arguments for AccountProject.
/// {@endtemplate}
/// {@macro pulumi_cognitive_account_project_account_project_args_doc}
class AccountProjectArgs {
  /// The ID of the Cognitive Account where the Project should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> cognitiveAccountId;
  /// A description of the Cognitive Account Project.
  final pulumi.Input<String>? description;
  /// The display name of the Cognitive Account Project.
  final pulumi.Input<String>? displayName;
  /// An `identity` block as defined below.
  final pulumi.Input<AccountProjectIdentity> identity;
  /// The Azure Region where the Cognitive Account Project should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the Cognitive Account Project. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AccountProjectArgs].
  /// [cognitiveAccountId] The ID of the Cognitive Account where the Project should exist. Changing this forces a new resource to be created.
  /// [description] A description of the Cognitive Account Project.
  /// [displayName] The display name of the Cognitive Account Project.
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where the Cognitive Account Project should exist. Changing this forces a new resource to be created.
  /// [name] The name of the Cognitive Account Project. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  AccountProjectArgs({
    required this.cognitiveAccountId,
    this.description,
    this.displayName,
    required this.identity,
    this.location,
    this.name,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cognitiveAccountId': cognitiveAccountId,
      'description': ?description,
      'displayName': ?displayName,
      'identity': pulumi.Input.mapInputValue<AccountProjectIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'tags': ?tags,
    };
  }

  factory AccountProjectArgs.fromMap(Map<String, dynamic> map) {
    return AccountProjectArgs(
      cognitiveAccountId: pulumi.Input.fromValue(map['cognitiveAccountId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: pulumi.Input.fromValue(AccountProjectIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

