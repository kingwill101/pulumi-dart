// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_policy_decision.dart';
import 'auth_policy_permission_level.dart';
import 'auth_policy_token_type.dart';

class AuthPolicyDefinition {
  /// The permission level for organization tokens.
  final List<AuthPolicyPermissionLevel>? authorizedPermissions;
  /// The rule type of this policy definition
  final AuthPolicyDecision decision;
  /// OIDC rules to set for this policy.
  final Map<String, String> rules;
  /// The runner ID for deployment runner tokens.
  final String? runnerID;
  /// The team name for team tokens.
  final String? teamName;
  /// The token type for this policy definition
  final AuthPolicyTokenType tokenType;
  /// The user login for personal tokens.
  final String? userLogin;

  /// Creates a new [AuthPolicyDefinition].
  /// [authorizedPermissions] The permission level for organization tokens.
  /// [decision] The rule type of this policy definition
  /// [rules] OIDC rules to set for this policy.
  /// [runnerID] The runner ID for deployment runner tokens.
  /// [teamName] The team name for team tokens.
  /// [tokenType] The token type for this policy definition
  /// [userLogin] The user login for personal tokens.
  AuthPolicyDefinition({
    this.authorizedPermissions,
    required this.decision,
    required this.rules,
    this.runnerID,
    this.teamName,
    required this.tokenType,
    this.userLogin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizedPermissions': ?authorizedPermissions == null ? null : pulumi.Input.encodeList<AuthPolicyPermissionLevel, String>(authorizedPermissions!, (value) => value.value),
      'decision': decision.value,
      'rules': rules,
      'runnerID': ?runnerID,
      'teamName': ?teamName,
      'tokenType': tokenType.value,
      'userLogin': ?userLogin,
    };
  }

  factory AuthPolicyDefinition.fromMap(Map<String, dynamic> map) {
    return AuthPolicyDefinition(
      authorizedPermissions: map['authorizedPermissions'] == null ? null : pulumi.Input.decodeList<AuthPolicyPermissionLevel>(map['authorizedPermissions'], (value) => AuthPolicyPermissionLevel.fromValue(value as String)),
      decision: AuthPolicyDecision.fromValue(map['decision'] as String),
      rules: (map['rules'] as Map).cast<String, String>(),
      runnerID: map['runnerID'] == null ? null : map['runnerID'] as String,
      teamName: map['teamName'] == null ? null : map['teamName'] as String,
      tokenType: AuthPolicyTokenType.fromValue(map['tokenType'] as String),
      userLogin: map['userLogin'] == null ? null : map['userLogin'] as String,
    );
  }
}

