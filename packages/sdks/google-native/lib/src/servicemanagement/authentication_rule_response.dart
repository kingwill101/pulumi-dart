// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_requirement_response.dart';
import 'oauth_requirements_response.dart';

/// Authentication rules for the service. By default, if a method has any authentication requirements, every request must include a valid credential matching one of the requirements. It's an error to include more than one kind of credential in a single request. If a method doesn't have any auth requirements, request credentials will be ignored.
class AuthenticationRuleResponse {
  /// If true, the service accepts API keys without any other credential. This flag only applies to HTTP and gRPC requests.
  final pulumi.Input<bool> allowWithoutCredential;

  /// The requirements for OAuth credentials.
  final pulumi.Input<OAuthRequirementsResponse> oauth;

  /// Requirements for additional authentication providers.
  final pulumi.Input<List<AuthRequirementResponse>> requirements;

  /// Selects the methods to which this rule applies. Refer to selector for syntax details.
  final pulumi.Input<String> selector;

  /// Creates a new [AuthenticationRuleResponse].
  /// [allowWithoutCredential] If true, the service accepts API keys without any other credential. This flag only applies to HTTP and gRPC requests.
  /// [oauth] The requirements for OAuth credentials.
  /// [requirements] Requirements for additional authentication providers.
  /// [selector] Selects the methods to which this rule applies. Refer to selector for syntax details.
  AuthenticationRuleResponse({
    required this.allowWithoutCredential,
    required this.oauth,
    required this.requirements,
    required this.selector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowWithoutCredential': allowWithoutCredential,
      'oauth':
          pulumi.Input.mapInputValue<
            OAuthRequirementsResponse,
            Map<String, dynamic>
          >(oauth, (value) => value.toMap()),
      'requirements':
          pulumi.Input.mapInputValue<
            List<AuthRequirementResponse>,
            List<Map<String, dynamic>>
          >(
            requirements,
            (value) =>
                pulumi.Input.encodeList<
                  AuthRequirementResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'selector': selector,
    };
  }

  factory AuthenticationRuleResponse.fromMap(Map<String, dynamic> map) {
    return AuthenticationRuleResponse(
      allowWithoutCredential: pulumi.Input.fromValue(
        map['allowWithoutCredential'] as bool,
      ),
      oauth: pulumi.Input.fromValue(
        OAuthRequirementsResponse.fromMap(
          (map['oauth']! as Map).cast<String, dynamic>(),
        ),
      ),
      requirements: pulumi.Input.fromValue(
        pulumi.Input.decodeList<AuthRequirementResponse>(
          map['requirements']!,
          (value) => AuthRequirementResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      selector: pulumi.Input.fromValue(map['selector'] as String),
    );
  }
}
