// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An object containing information about the effective user and authenticated principal responsible for an action.
class ActorResponseCloudsupportV2beta {
  /// The name to display for the actor. If not provided, it is inferred from credentials supplied during case creation. When an email is provided, a display name must also be provided. This will be obfuscated if the user is a Google Support agent.
  final pulumi.Input<String> displayName;
  /// The email address of the actor. If not provided, it is inferred from credentials supplied during case creation. If the authenticated principal does not have an email address, one must be provided. When a name is provided, an email must also be provided. This will be obfuscated if the user is a Google Support agent.
  final pulumi.Input<String> email;
  /// Whether the actor is a Google support actor.
  final pulumi.Input<bool> googleSupport;

  /// Creates a new [ActorResponseCloudsupportV2beta].
  /// [displayName] The name to display for the actor. If not provided, it is inferred from credentials supplied during case creation. When an email is provided, a display name must also be provided. This will be obfuscated if the user is a Google Support agent.
  /// [email] The email address of the actor. If not provided, it is inferred from credentials supplied during case creation. If the authenticated principal does not have an email address, one must be provided. When a name is provided, an email must also be provided. This will be obfuscated if the user is a Google Support agent.
  /// [googleSupport] Whether the actor is a Google support actor.
  const ActorResponseCloudsupportV2beta({
    required this.displayName,
    required this.email,
    required this.googleSupport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'email': email,
      'googleSupport': googleSupport,
    };
  }

  factory ActorResponseCloudsupportV2beta.fromMap(Map<String, dynamic> map) {
    return ActorResponseCloudsupportV2beta(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      email: pulumi.Input.fromValue(map['email'] as String),
      googleSupport: pulumi.Input.fromValue(map['googleSupport'] as bool),
    );
  }
}

