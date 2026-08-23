// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_compilation_diagnostic.dart';
import 'rule_severity.dart';

/// Input properties used for looking up and filtering Rule resources.
class RuleState {
  /// Output only. The run frequencies that are allowed for the rule.
  /// Populated in BASIC view and FULL view.
  final pulumi.Input<List<String>>? allowedRunFrequencies;
  /// Output only. The author of the rule. Extracted from the meta section of text.
  /// Populated in BASIC view and FULL view.
  final pulumi.Input<String>? author;
  /// Output only. A list of a rule's corresponding compilation diagnostic messages
  /// such as compilation errors and compilation warnings.
  /// Populated in FULL view.
  /// Structure is documented below.
  final pulumi.Input<List<RuleCompilationDiagnostic>>? compilationDiagnostics;
  /// Output only. The current compilation state of the rule.
  /// Populated in FULL view.
  /// Possible values:
  /// COMPILATION_STATE_UNSPECIFIED
  /// SUCCEEDED
  /// FAILED
  final pulumi.Input<String>? compilationState;
  /// Output only. The timestamp of when the rule was created.
  /// Populated in FULL view.
  final pulumi.Input<String>? createTime;
  /// Output only. Resource names of the data tables used in this rule.
  final pulumi.Input<List<String>>? dataTables;
  /// Policy to determine if the rule should be deleted forcefully.
  /// If deletionPolicy = "FORCE", any retrohunts and any detections associated with the rule
  /// will also be deleted. If deletionPolicy = "DEFAULT", the call will only succeed if the
  /// rule has no associated retrohunts, including completed retrohunts, and no
  /// associated detections. Regardless of being set to "FORCE" the rule
  /// deployment associated with this rule will also be deleted if deletion is successful.
  ///
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", the command will behave as if set to "DEFAULT".
  ///
  /// Possible values: DEFAULT, FORCE, PREVENT, ABANDON, DELETE
  final pulumi.Input<String>? deletionPolicy;
  /// The display name of the severity level. Extracted from the meta section of
  /// the rule text.
  final pulumi.Input<String>? displayName;
  /// The etag for this rule.
  /// If this is provided on update, the request will succeed if and only if it
  /// matches the server-computed value, and will fail with an ABORTED error
  /// otherwise.
  /// Populated in BASIC view and FULL view.
  final pulumi.Input<String>? etag;
  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  final pulumi.Input<String>? instance;
  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  final pulumi.Input<String>? location;
  /// Output only. Additional metadata specified in the meta section of text.
  /// Populated in FULL view.
  final pulumi.Input<Map<String, String>>? metadata;
  /// Full resource name for the rule. This unique identifier is generated using values provided for the URL parameters.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/rules/{rule}
  final pulumi.Input<String>? name;
  /// Output only. Indicate the rule can run in near real time live rule.
  /// If this is true, the rule uses the near real time live rule when the run
  /// frequency is set to LIVE.
  final pulumi.Input<bool>? nearRealTimeLiveRuleEligible;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Output only. Resource names of the reference lists used in this rule.
  /// Populated in FULL view.
  final pulumi.Input<List<String>>? referenceLists;
  /// Output only. The timestamp of when the rule revision was created.
  /// Populated in FULL, REVISION_METADATA_ONLY views.
  final pulumi.Input<String>? revisionCreateTime;
  /// Output only. The revision ID of the rule.
  /// A new revision is created whenever the rule text is changed in any way.
  /// Format: v_{10 digits}_{9 digits}
  /// Populated in REVISION_METADATA_ONLY view and FULL view.
  final pulumi.Input<String>? revisionId;
  /// Rule Id is the ID of the Rule.
  final pulumi.Input<String>? ruleId;
  /// Resource name of the DataAccessScope bound to this rule.
  /// Populated in BASIC view and FULL view.
  /// If reference lists are used in the rule, validations will be performed
  /// against this scope to ensure that the reference lists are compatible with
  /// both the user's and the rule's scopes.
  /// The scope should be in the format:
  /// "projects/{project}/locations/{location}/instances/{instance}/dataAccessScopes/{scope}".
  final pulumi.Input<String>? scope;
  /// (Output)
  /// Output only. The severity of a rule's compilation diagnostic.
  /// Possible values:
  /// SEVERITY_UNSPECIFIED
  /// WARNING
  /// ERROR
  final pulumi.Input<List<RuleSeverity>>? severities;
  /// The YARA-L content of the rule.
  /// Populated in FULL view.
  final pulumi.Input<String>? text;
  /// Possible values:
  /// RULE_TYPE_UNSPECIFIED
  /// SINGLE_EVENT
  /// MULTI_EVENT
  final pulumi.Input<String>? type;

  /// Creates a new [RuleState].
  /// [allowedRunFrequencies] Output only. The run frequencies that are allowed for the rule.
  /// [author] Output only. The author of the rule. Extracted from the meta section of text.
  /// [compilationDiagnostics] Output only. A list of a rule's corresponding compilation diagnostic messages
  /// [compilationState] Output only. The current compilation state of the rule.
  /// [createTime] Output only. The timestamp of when the rule was created.
  /// [dataTables] Output only. Resource names of the data tables used in this rule.
  /// [deletionPolicy] Policy to determine if the rule should be deleted forcefully.
  /// [displayName] The display name of the severity level. Extracted from the meta section of
  /// [etag] The etag for this rule.
  /// [instance] The unique identifier for the Chronicle instance, which is the same as the customer ID.
  /// [location] The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  /// [metadata] Output only. Additional metadata specified in the meta section of text.
  /// [name] Full resource name for the rule. This unique identifier is generated using values provided for the URL parameters.
  /// [nearRealTimeLiveRuleEligible] Output only. Indicate the rule can run in near real time live rule.
  /// [project] The ID of the project in which the resource belongs.
  /// [referenceLists] Output only. Resource names of the reference lists used in this rule.
  /// [revisionCreateTime] Output only. The timestamp of when the rule revision was created.
  /// [revisionId] Output only. The revision ID of the rule.
  /// [ruleId] Rule Id is the ID of the Rule.
  /// [scope] Resource name of the DataAccessScope bound to this rule.
  /// [severities] (Output)
  /// [text] The YARA-L content of the rule.
  /// [type] Possible values:
  const RuleState({
    this.allowedRunFrequencies,
    this.author,
    this.compilationDiagnostics,
    this.compilationState,
    this.createTime,
    this.dataTables,
    this.deletionPolicy,
    this.displayName,
    this.etag,
    this.instance,
    this.location,
    this.metadata,
    this.name,
    this.nearRealTimeLiveRuleEligible,
    this.project,
    this.referenceLists,
    this.revisionCreateTime,
    this.revisionId,
    this.ruleId,
    this.scope,
    this.severities,
    this.text,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedRunFrequencies': ?allowedRunFrequencies,
      'author': ?author,
      'compilationDiagnostics': ?pulumi.Input.mapOptionalInputValue<List<RuleCompilationDiagnostic>, List<Map<String, dynamic>>>(compilationDiagnostics, (value) => pulumi.Input.encodeList<RuleCompilationDiagnostic, Map<String, dynamic>>(value, (value) => value.toMap())),
      'compilationState': ?compilationState,
      'createTime': ?createTime,
      'dataTables': ?dataTables,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'etag': ?etag,
      'instance': ?instance,
      'location': ?location,
      'metadata': ?metadata,
      'name': ?name,
      'nearRealTimeLiveRuleEligible': ?nearRealTimeLiveRuleEligible,
      'project': ?project,
      'referenceLists': ?referenceLists,
      'revisionCreateTime': ?revisionCreateTime,
      'revisionId': ?revisionId,
      'ruleId': ?ruleId,
      'scope': ?scope,
      'severities': ?pulumi.Input.mapOptionalInputValue<List<RuleSeverity>, List<Map<String, dynamic>>>(severities, (value) => pulumi.Input.encodeList<RuleSeverity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'text': ?text,
      'type': ?type,
    };
  }

  factory RuleState.fromMap(Map<String, dynamic> map) {
    return RuleState(
      allowedRunFrequencies: (() { final guardedValue = map['allowedRunFrequencies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      author: (() { final guardedValue = map['author']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      compilationDiagnostics: (() { final guardedValue = map['compilationDiagnostics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RuleCompilationDiagnostic>(guardedValue, (value) => RuleCompilationDiagnostic.fromMap((value as Map).cast<String, dynamic>()))); })(),
      compilationState: (() { final guardedValue = map['compilationState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataTables: (() { final guardedValue = map['dataTables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nearRealTimeLiveRuleEligible: (() { final guardedValue = map['nearRealTimeLiveRuleEligible']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      referenceLists: (() { final guardedValue = map['referenceLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      revisionCreateTime: (() { final guardedValue = map['revisionCreateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revisionId: (() { final guardedValue = map['revisionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleId: (() { final guardedValue = map['ruleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      severities: (() { final guardedValue = map['severities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RuleSeverity>(guardedValue, (value) => RuleSeverity.fromMap((value as Map).cast<String, dynamic>()))); })(),
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
