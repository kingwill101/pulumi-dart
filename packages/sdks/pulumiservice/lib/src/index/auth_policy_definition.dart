// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_policy_decision.dart';
import 'auth_policy_permission_level.dart';
import 'auth_policy_token_type.dart';

class AuthPolicyDefinition {
  /// The permission level for organization tokens.
  final pulumi.Input<List<AuthPolicyPermissionLevel>>? authorizedPermissions;
  /// The rule type of this policy definition
  final pulumi.Input<AuthPolicyDecision> decision;
  /// OIDC rules to set for this policy.
  final pulumi.Input<Map<String, String>> rules;
  /// The runner ID for deployment runner tokens.
  final pulumi.Input<String>? runnerID;
  /// The team name for team tokens.
  final pulumi.Input<String>? teamName;
  /// The token type for this policy definition
  final pulumi.Input<AuthPolicyTokenType> tokenType;
  /// The user login for personal tokens.
  final pulumi.Input<String>? userLogin;

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
      'authorizedPermissions': ?pulumi.Input.mapOptionalInputValue<List<AuthPolicyPermissionLevel>, List<String>>(authorizedPermissions, (value) => pulumi.Input.encodeList<AuthPolicyPermissionLevel, String>(value, (value) => value.wireValue)),
      'decision': pulumi.Input.mapInputValue<AuthPolicyDecision, String>(decision, (value) => value.wireValue),
      'rules': rules,
      'runnerID': ?runnerID,
      'teamName': ?teamName,
      'tokenType': pulumi.Input.mapInputValue<AuthPolicyTokenType, String>(tokenType, (value) => value.wireValue),
      'userLogin': ?userLogin,
    };
  }

  factory AuthPolicyDefinition.fromMap(Map<String, dynamic> map) {
    return AuthPolicyDefinition(
      authorizedPermissions: (() { final guardedValue = map['authorizedPermissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthPolicyPermissionLevel>(guardedValue, (value) => AuthPolicyPermissionLevel.fromValue(value as String))); })(),
      decision: pulumi.Input.fromValue(AuthPolicyDecision.fromValue(map['decision']! as String)),
      rules: pulumi.Input.fromValue((map['rules'] as Map).cast<String, String>()),
      runnerID: (() { final guardedValue = map['runnerID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      teamName: (() { final guardedValue = map['teamName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenType: pulumi.Input.fromValue(AuthPolicyTokenType.fromValue(map['tokenType']! as String)),
      userLogin: (() { final guardedValue = map['userLogin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

