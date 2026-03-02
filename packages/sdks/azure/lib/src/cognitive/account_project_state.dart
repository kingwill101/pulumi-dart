// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_project_identity.dart';

/// Input properties used for looking up and filtering AccountProject resources.
class AccountProjectState {
  /// The ID of the Cognitive Account where the Project should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? cognitiveAccountId;
  /// Whether this project is the default project for the Cognitive Account.
  final pulumi.Input<bool>? default_;
  /// A description of the Cognitive Account Project.
  final pulumi.Input<String>? description;
  /// The display name of the Cognitive Account Project.
  final pulumi.Input<String>? displayName;
  /// A mapping of endpoint names to endpoint URLs for the project.
  final pulumi.Input<Map<String, String>>? endpoints;
  /// An `identity` block as defined below.
  final pulumi.Input<AccountProjectIdentity>? identity;
  /// The Azure Region where the Cognitive Account Project should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the Cognitive Account Project. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AccountProjectState].
  /// [cognitiveAccountId] The ID of the Cognitive Account where the Project should exist. Changing this forces a new resource to be created.
  /// [default_] Whether this project is the default project for the Cognitive Account.
  /// [description] A description of the Cognitive Account Project.
  /// [displayName] The display name of the Cognitive Account Project.
  /// [endpoints] A mapping of endpoint names to endpoint URLs for the project.
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where the Cognitive Account Project should exist. Changing this forces a new resource to be created.
  /// [name] The name of the Cognitive Account Project. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  AccountProjectState({
    this.cognitiveAccountId,
    this.default_,
    this.description,
    this.displayName,
    this.endpoints,
    this.identity,
    this.location,
    this.name,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cognitiveAccountId': ?cognitiveAccountId,
      'default': ?default_,
      'description': ?description,
      'displayName': ?displayName,
      'endpoints': ?endpoints,
      'identity': ?pulumi.Input.mapOptionalInputValue<AccountProjectIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'tags': ?tags,
    };
  }

  factory AccountProjectState.fromMap(Map<String, dynamic> map) {
    return AccountProjectState(
      cognitiveAccountId: map['cognitiveAccountId'] == null ? null : (map['cognitiveAccountId'] as String).input(),
      default_: map['default'] == null ? null : (map['default'] as bool).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      endpoints: map['endpoints'] == null ? null : ((map['endpoints'] as Map).cast<String, String>()).input(),
      identity: map['identity'] == null ? null : (AccountProjectIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

