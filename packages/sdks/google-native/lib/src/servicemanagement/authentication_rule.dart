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
  AuthenticationRule({
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
      allowWithoutCredential: map['allowWithoutCredential'] == null ? null : (map['allowWithoutCredential'] as bool).input(),
      oauth: map['oauth'] == null ? null : (OAuthRequirements.fromMap((map['oauth'] as Map).cast<String, dynamic>())).input(),
      requirements: map['requirements'] == null ? null : (pulumi.Input.decodeList<AuthRequirement>(map['requirements'], (value) => AuthRequirement.fromMap((value as Map).cast<String, dynamic>()))).input(),
      selector: map['selector'] == null ? null : (map['selector'] as String).input(),
    );
  }
}

