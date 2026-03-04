// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceSignUpTermsOfService {
  /// Should the user be asked for consent during sign up?
  final pulumi.Input<bool> consentRequired;

  /// Should Terms of Service be displayed during sign up?.
  final pulumi.Input<bool> enabled;

  /// The Terms of Service which users are required to agree to in order to sign up.
  final pulumi.Input<String>? text;

  /// Creates a new [ServiceSignUpTermsOfService].
  /// [consentRequired] Should the user be asked for consent during sign up?
  /// [enabled] Should Terms of Service be displayed during sign up?.
  /// [text] The Terms of Service which users are required to agree to in order to sign up.
  ServiceSignUpTermsOfService({
    required this.consentRequired,
    required this.enabled,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consentRequired': consentRequired,
      'enabled': enabled,
      'text': ?text,
    };
  }

  factory ServiceSignUpTermsOfService.fromMap(Map<String, dynamic> map) {
    return ServiceSignUpTermsOfService(
      consentRequired: pulumi.Input.fromValue(map['consentRequired'] as bool),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      text: (() {
        final guardedValue = map['text'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
