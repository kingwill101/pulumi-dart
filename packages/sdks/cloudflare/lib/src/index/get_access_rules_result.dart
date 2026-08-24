// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_rules_result_configuration.dart';
import 'get_access_rules_result_scope.dart';

class GetAccessRulesResult {
  /// The available actions that a rule can apply to a matched request.
  final pulumi.Input<List<String>> allowedModes;
  /// The rule configuration.
  final pulumi.Input<GetAccessRulesResultConfiguration> configuration;
  /// The timestamp of when the rule was created.
  final pulumi.Input<String> createdOn;
  /// The unique identifier of the IP Access rule.
  final pulumi.Input<String> id;
  /// The action to apply to a matched request.
  /// Available values: "block", "challenge", "whitelist", "js*challenge", "managed*challenge".
  final pulumi.Input<String> mode;
  /// The timestamp of when the rule was last modified.
  final pulumi.Input<String> modifiedOn;
  /// An informative summary of the rule, typically used as a reminder or explanation.
  final pulumi.Input<String> notes;
  /// All zones owned by the user will have the rule applied.
  final pulumi.Input<GetAccessRulesResultScope> scope;

  /// Creates a new [GetAccessRulesResult].
  /// [allowedModes] The available actions that a rule can apply to a matched request.
  /// [configuration] The rule configuration.
  /// [createdOn] The timestamp of when the rule was created.
  /// [id] The unique identifier of the IP Access rule.
  /// [mode] The action to apply to a matched request.
  /// [modifiedOn] The timestamp of when the rule was last modified.
  /// [notes] An informative summary of the rule, typically used as a reminder or explanation.
  /// [scope] All zones owned by the user will have the rule applied.
  const GetAccessRulesResult({
    required this.allowedModes,
    required this.configuration,
    required this.createdOn,
    required this.id,
    required this.mode,
    required this.modifiedOn,
    required this.notes,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedModes': allowedModes,
      'configuration': pulumi.Input.mapInputValue<GetAccessRulesResultConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'createdOn': createdOn,
      'id': id,
      'mode': mode,
      'modifiedOn': modifiedOn,
      'notes': notes,
      'scope': pulumi.Input.mapInputValue<GetAccessRulesResultScope, Map<String, dynamic>>(scope, (value) => value.toMap()),
    };
  }

  factory GetAccessRulesResult.fromMap(Map<String, dynamic> map) {
    return GetAccessRulesResult(
      allowedModes: pulumi.Input.fromValue((map['allowedModes'] as List).cast<String>()),
      configuration: pulumi.Input.fromValue(GetAccessRulesResultConfiguration.fromMap((map['configuration']! as Map).cast<String, dynamic>())),
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
      notes: pulumi.Input.fromValue(map['notes'] as String),
      scope: pulumi.Input.fromValue(GetAccessRulesResultScope.fromMap((map['scope']! as Map).cast<String, dynamic>())),
    );
  }
}
