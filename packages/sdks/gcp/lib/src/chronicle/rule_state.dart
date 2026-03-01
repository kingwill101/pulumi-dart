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
  /// If deletion_policy = "FORCE", any retrohunts and any detections associated with the rule
  /// will also be deleted. If deletion_policy = "DEFAULT", the call will only succeed if the
  /// rule has no associated retrohunts, including completed retrohunts, and no
  /// associated detections. Regardless of this field's value, the rule
  /// deployment associated with this rule will also be deleted.
  /// Possible values: DEFAULT, FORCE
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
  RuleState({
    pulumi.Output<List<String>>? allowedRunFrequencies,
    pulumi.Output<String>? author,
    pulumi.Output<List<RuleCompilationDiagnostic>>? compilationDiagnostics,
    pulumi.Output<String>? compilationState,
    pulumi.Output<String>? createTime,
    pulumi.Output<List<String>>? dataTables,
    pulumi.Output<String>? deletionPolicy,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? instance,
    pulumi.Output<String>? location,
    pulumi.Output<Map<String, String>>? metadata,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? nearRealTimeLiveRuleEligible,
    pulumi.Output<String>? project,
    pulumi.Output<List<String>>? referenceLists,
    pulumi.Output<String>? revisionCreateTime,
    pulumi.Output<String>? revisionId,
    pulumi.Output<String>? ruleId,
    pulumi.Output<String>? scope,
    pulumi.Output<List<RuleSeverity>>? severities,
    pulumi.Output<String>? text,
    pulumi.Output<String>? type,
  }) :
      allowedRunFrequencies = pulumi.Input.asOptionalInput<List<String>>(allowedRunFrequencies),
      author = pulumi.Input.asOptionalInput<String>(author),
      compilationDiagnostics = pulumi.Input.asOptionalInput<List<RuleCompilationDiagnostic>>(compilationDiagnostics),
      compilationState = pulumi.Input.asOptionalInput<String>(compilationState),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dataTables = pulumi.Input.asOptionalInput<List<String>>(dataTables),
      deletionPolicy = pulumi.Input.asOptionalInput<String>(deletionPolicy),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      instance = pulumi.Input.asOptionalInput<String>(instance),
      location = pulumi.Input.asOptionalInput<String>(location),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      nearRealTimeLiveRuleEligible = pulumi.Input.asOptionalInput<bool>(nearRealTimeLiveRuleEligible),
      project = pulumi.Input.asOptionalInput<String>(project),
      referenceLists = pulumi.Input.asOptionalInput<List<String>>(referenceLists),
      revisionCreateTime = pulumi.Input.asOptionalInput<String>(revisionCreateTime),
      revisionId = pulumi.Input.asOptionalInput<String>(revisionId),
      ruleId = pulumi.Input.asOptionalInput<String>(ruleId),
      scope = pulumi.Input.asOptionalInput<String>(scope),
      severities = pulumi.Input.asOptionalInput<List<RuleSeverity>>(severities),
      text = pulumi.Input.asOptionalInput<String>(text),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      allowedRunFrequencies: map['allowedRunFrequencies'] == null ? null : pulumi.Output.create<List<String>>((map['allowedRunFrequencies'] as List).cast<String>()),
      author: map['author'] == null ? null : pulumi.Output.create<String>(map['author'] as String),
      compilationDiagnostics: map['compilationDiagnostics'] == null ? null : pulumi.Output.create<List<RuleCompilationDiagnostic>>(pulumi.Input.decodeList<RuleCompilationDiagnostic>(map['compilationDiagnostics'], (value) => RuleCompilationDiagnostic.fromMap((value as Map).cast<String, dynamic>()))),
      compilationState: map['compilationState'] == null ? null : pulumi.Output.create<String>(map['compilationState'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dataTables: map['dataTables'] == null ? null : pulumi.Output.create<List<String>>((map['dataTables'] as List).cast<String>()),
      deletionPolicy: map['deletionPolicy'] == null ? null : pulumi.Output.create<String>(map['deletionPolicy'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      instance: map['instance'] == null ? null : pulumi.Output.create<String>(map['instance'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metadata'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nearRealTimeLiveRuleEligible: map['nearRealTimeLiveRuleEligible'] == null ? null : pulumi.Output.create<bool>(map['nearRealTimeLiveRuleEligible'] as bool),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      referenceLists: map['referenceLists'] == null ? null : pulumi.Output.create<List<String>>((map['referenceLists'] as List).cast<String>()),
      revisionCreateTime: map['revisionCreateTime'] == null ? null : pulumi.Output.create<String>(map['revisionCreateTime'] as String),
      revisionId: map['revisionId'] == null ? null : pulumi.Output.create<String>(map['revisionId'] as String),
      ruleId: map['ruleId'] == null ? null : pulumi.Output.create<String>(map['ruleId'] as String),
      scope: map['scope'] == null ? null : pulumi.Output.create<String>(map['scope'] as String),
      severities: map['severities'] == null ? null : pulumi.Output.create<List<RuleSeverity>>(pulumi.Input.decodeList<RuleSeverity>(map['severities'], (value) => RuleSeverity.fromMap((value as Map).cast<String, dynamic>()))),
      text: map['text'] == null ? null : pulumi.Output.create<String>(map['text'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

