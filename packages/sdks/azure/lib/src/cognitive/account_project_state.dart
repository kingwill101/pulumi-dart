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
    pulumi.Output<String>? cognitiveAccountId,
    pulumi.Output<bool>? default_,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? endpoints,
    pulumi.Output<AccountProjectIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      cognitiveAccountId = pulumi.Input.asOptionalInput<String>(cognitiveAccountId),
      default_ = pulumi.Input.asOptionalInput<bool>(default_),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      endpoints = pulumi.Input.asOptionalInput<Map<String, String>>(endpoints),
      identity = pulumi.Input.asOptionalInput<AccountProjectIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      cognitiveAccountId: map['cognitiveAccountId'] == null ? null : pulumi.Output.create<String>(map['cognitiveAccountId'] as String),
      default_: map['default'] == null ? null : pulumi.Output.create<bool>(map['default'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      endpoints: map['endpoints'] == null ? null : pulumi.Output.create<Map<String, String>>((map['endpoints'] as Map).cast<String, String>()),
      identity: map['identity'] == null ? null : pulumi.Output.create<AccountProjectIdentity>(AccountProjectIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

