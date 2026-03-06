// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Controls sign-in behavior.
class SignInBehaviorResponse {
  /// When to redirect sign-ins to the IdP.
  final pulumi.Input<String> redirectCondition;

  /// Creates a new [SignInBehaviorResponse].
  /// [redirectCondition] When to redirect sign-ins to the IdP.
  const SignInBehaviorResponse({
    required this.redirectCondition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'redirectCondition': redirectCondition,
    };
  }

  factory SignInBehaviorResponse.fromMap(Map<String, dynamic> map) {
    return SignInBehaviorResponse(
      redirectCondition: pulumi.Input.fromValue(map['redirectCondition'] as String),
    );
  }
}

