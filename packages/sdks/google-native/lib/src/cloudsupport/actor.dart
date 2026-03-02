// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An object containing information about the effective user and authenticated principal responsible for an action.
class Actor {
  /// The name to display for the actor. If not provided, it is inferred from credentials supplied during case creation. When an email is provided, a display name must also be provided. This will be obfuscated if the user is a Google Support agent.
  final pulumi.Input<String>? displayName;
  /// The email address of the actor. If not provided, it is inferred from credentials supplied during case creation. If the authenticated principal does not have an email address, one must be provided. When a name is provided, an email must also be provided. This will be obfuscated if the user is a Google Support agent.
  final pulumi.Input<String>? email;

  /// Creates a new [Actor].
  /// [displayName] The name to display for the actor. If not provided, it is inferred from credentials supplied during case creation. When an email is provided, a display name must also be provided. This will be obfuscated if the user is a Google Support agent.
  /// [email] The email address of the actor. If not provided, it is inferred from credentials supplied during case creation. If the authenticated principal does not have an email address, one must be provided. When a name is provided, an email must also be provided. This will be obfuscated if the user is a Google Support agent.
  Actor({
    this.displayName,
    this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'email': ?email,
    };
  }

  factory Actor.fromMap(Map<String, dynamic> map) {
    return Actor(
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      email: map['email'] == null ? null : (map['email'] as String).input(),
    );
  }
}

