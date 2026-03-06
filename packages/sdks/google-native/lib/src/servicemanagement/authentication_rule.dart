// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_requirement.dart';
import 'oauth_requirements.dart';

/// Authentication rules for the service. By default, if a method has any authentication requirements, every request must include a valid credential matching one of the requirements. It's an error to include more than one kind of credential in a single request. If a method doesn't have any auth requirements, request credentials will be ignored.
class AuthenticationRule {
  /// If true, the service accepts API keys without any other credential. This flag only applies to HTTP and gRPC requests.
  final pulumi.Input<bool>? allowWithoutCredential;
  /// The requirements for OAuth credentials.
  final pulumi.Input<OAuthRequirements>? oauth;
  /// Requirements for additional authentication providers.
  final pulumi.Input<List<AuthRequirement>>? requirements;
  /// Selects the methods to which this rule applies. Refer to selector for syntax details.
  final pulumi.Input<String>? selector;

  /// Creates a new [AuthenticationRule].
  /// [allowWithoutCredential] If true, the service accepts API keys without any other credential. This flag only applies to HTTP and gRPC requests.
  /// [oauth] The requirements for OAuth credentials.
  /// [requirements] Requirements for additional authentication providers.
  /// [selector] Selects the methods to which this rule applies. Refer to selector for syntax details.
  const AuthenticationRule({
    this.allowWithoutCredential,
    this.oauth,
    this.requirements,
    this.selector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowWithoutCredential': ?allowWithoutCredential,
      'oauth': ?pulumi.Input.mapOptionalInputValue<OAuthRequirements, Map<String, dynamic>>(oauth, (value) => value.toMap()),
      'requirements': ?pulumi.Input.mapOptionalInputValue<List<AuthRequirement>, List<Map<String, dynamic>>>(requirements, (value) => pulumi.Input.encodeList<AuthRequirement, Map<String, dynamic>>(value, (value) => value.toMap())),
      'selector': ?selector,
    };
  }

  factory AuthenticationRule.fromMap(Map<String, dynamic> map) {
    return AuthenticationRule(
      allowWithoutCredential: (() { final guardedValue = map['allowWithoutCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      oauth: (() { final guardedValue = map['oauth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OAuthRequirements.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      requirements: (() { final guardedValue = map['requirements']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthRequirement>(guardedValue, (value) => AuthRequirement.fromMap((value as Map).cast<String, dynamic>()))); })(),
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

