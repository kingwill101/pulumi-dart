// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_conversation_turn.dart';
import 'google_cloud_dialogflow_cx_v3_test_case_result.dart';
import 'google_cloud_dialogflow_cx_v3_test_config.dart';

/// {@template pulumi_dialogflow_v3_test_case_args_doc}
/// The set of arguments for TestCase.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3_test_case_args_doc}
class TestCaseArgs {
  final pulumi.Input<String> agentId;
  /// The human-readable name of the test case, unique within the agent. Limit of 200 characters.
  final pulumi.Input<String> displayName;
  /// The latest test result.
  final pulumi.Input<GoogleCloudDialogflowCxV3TestCaseResult>? lastTestResult;
  final pulumi.Input<String>? location;
  /// The unique identifier of the test case. TestCases.CreateTestCase will populate the name automatically. Otherwise use format: `projects//locations//agents/ /testCases/`.
  final pulumi.Input<String>? name;
  /// Additional freeform notes about the test case. Limit of 400 characters.
  final pulumi.Input<String>? notes;
  final pulumi.Input<String>? project;
  /// Tags are short descriptions that users may apply to test cases for organizational and filtering purposes. Each tag should start with "#" and has a limit of 30 characters.
  final pulumi.Input<List<String>>? tags;
  /// The conversation turns uttered when the test case was created, in chronological order. These include the canonical set of agent utterances that should occur when the agent is working properly.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3ConversationTurn>>? testCaseConversationTurns;
  /// Config for the test case.
  final pulumi.Input<GoogleCloudDialogflowCxV3TestConfig>? testConfig;

  /// Creates a new [TestCaseArgs].
  /// [agentId] Required.
  /// [displayName] The human-readable name of the test case, unique within the agent. Limit of 200 characters.
  /// [lastTestResult] The latest test result.
  /// [location] Optional.
  /// [name] The unique identifier of the test case. TestCases.CreateTestCase will populate the name automatically. Otherwise use format: `projects//locations//agents/ /testCases/`.
  /// [notes] Additional freeform notes about the test case. Limit of 400 characters.
  /// [project] Optional.
  /// [tags] Tags are short descriptions that users may apply to test cases for organizational and filtering purposes. Each tag should start with "#" and has a limit of 30 characters.
  /// [testCaseConversationTurns] The conversation turns uttered when the test case was created, in chronological order. These include the canonical set of agent utterances that should occur when the agent is working properly.
  /// [testConfig] Config for the test case.
  TestCaseArgs({
    required pulumi.Output<String> agentId,
    required pulumi.Output<String> displayName,
    pulumi.Output<GoogleCloudDialogflowCxV3TestCaseResult>? lastTestResult,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? notes,
    pulumi.Output<String>? project,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<List<GoogleCloudDialogflowCxV3ConversationTurn>>? testCaseConversationTurns,
    pulumi.Output<GoogleCloudDialogflowCxV3TestConfig>? testConfig,
  }) :
      agentId = pulumi.Input.asInput<String>(agentId),
      displayName = pulumi.Input.asInput<String>(displayName),
      lastTestResult = pulumi.Input.asOptionalInput<GoogleCloudDialogflowCxV3TestCaseResult>(lastTestResult),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      notes = pulumi.Input.asOptionalInput<String>(notes),
      project = pulumi.Input.asOptionalInput<String>(project),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      testCaseConversationTurns = pulumi.Input.asOptionalInput<List<GoogleCloudDialogflowCxV3ConversationTurn>>(testCaseConversationTurns),
      testConfig = pulumi.Input.asOptionalInput<GoogleCloudDialogflowCxV3TestConfig>(testConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'displayName': displayName,
      'lastTestResult': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3TestCaseResult, Map<String, dynamic>>(lastTestResult, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'notes': ?notes,
      'project': ?project,
      'tags': ?tags,
      'testCaseConversationTurns': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3ConversationTurn>, List<Map<String, dynamic>>>(testCaseConversationTurns, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3ConversationTurn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'testConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3TestConfig, Map<String, dynamic>>(testConfig, (value) => value.toMap()),
    };
  }

  factory TestCaseArgs.fromMap(Map<String, dynamic> map) {
    return TestCaseArgs(
      agentId: pulumi.Output.create<String>(map['agentId'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      lastTestResult: map['lastTestResult'] == null ? null : pulumi.Output.create<GoogleCloudDialogflowCxV3TestCaseResult>(GoogleCloudDialogflowCxV3TestCaseResult.fromMap((map['lastTestResult'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notes: map['notes'] == null ? null : pulumi.Output.create<String>(map['notes'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      testCaseConversationTurns: map['testCaseConversationTurns'] == null ? null : pulumi.Output.create<List<GoogleCloudDialogflowCxV3ConversationTurn>>(pulumi.Input.decodeList<GoogleCloudDialogflowCxV3ConversationTurn>(map['testCaseConversationTurns'], (value) => GoogleCloudDialogflowCxV3ConversationTurn.fromMap((value as Map).cast<String, dynamic>()))),
      testConfig: map['testConfig'] == null ? null : pulumi.Output.create<GoogleCloudDialogflowCxV3TestConfig>(GoogleCloudDialogflowCxV3TestConfig.fromMap((map['testConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

