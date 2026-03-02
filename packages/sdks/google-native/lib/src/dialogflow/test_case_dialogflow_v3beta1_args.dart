// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_conversation_turn.dart';
import 'google_cloud_dialogflow_cx_v3beta1_test_case_result.dart';
import 'google_cloud_dialogflow_cx_v3beta1_test_config.dart';

/// {@template pulumi_dialogflow_v3beta1_test_case_dialogflow_v3beta1_args_doc}
/// The set of arguments for TestCase.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3beta1_test_case_dialogflow_v3beta1_args_doc}
class TestCaseDialogflowV3beta1Args {
  final pulumi.Input<String> agentId;
  /// The human-readable name of the test case, unique within the agent. Limit of 200 characters.
  final pulumi.Input<String> displayName;
  /// The latest test result.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1TestCaseResult>? lastTestResult;
  final pulumi.Input<String>? location;
  /// The unique identifier of the test case. TestCases.CreateTestCase will populate the name automatically. Otherwise use format: `projects//locations//agents/ /testCases/`.
  final pulumi.Input<String>? name;
  /// Additional freeform notes about the test case. Limit of 400 characters.
  final pulumi.Input<String>? notes;
  final pulumi.Input<String>? project;
  /// Tags are short descriptions that users may apply to test cases for organizational and filtering purposes. Each tag should start with "#" and has a limit of 30 characters.
  final pulumi.Input<List<String>>? tags;
  /// The conversation turns uttered when the test case was created, in chronological order. These include the canonical set of agent utterances that should occur when the agent is working properly.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3beta1ConversationTurn>>? testCaseConversationTurns;
  /// Config for the test case.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1TestConfig>? testConfig;

  /// Creates a new [TestCaseDialogflowV3beta1Args].
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
  TestCaseDialogflowV3beta1Args({
    required this.agentId,
    required this.displayName,
    this.lastTestResult,
    this.location,
    this.name,
    this.notes,
    this.project,
    this.tags,
    this.testCaseConversationTurns,
    this.testConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'displayName': displayName,
      'lastTestResult': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3beta1TestCaseResult, Map<String, dynamic>>(lastTestResult, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'notes': ?notes,
      'project': ?project,
      'tags': ?tags,
      'testCaseConversationTurns': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3beta1ConversationTurn>, List<Map<String, dynamic>>>(testCaseConversationTurns, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3beta1ConversationTurn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'testConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3beta1TestConfig, Map<String, dynamic>>(testConfig, (value) => value.toMap()),
    };
  }

  factory TestCaseDialogflowV3beta1Args.fromMap(Map<String, dynamic> map) {
    return TestCaseDialogflowV3beta1Args(
      agentId: (map['agentId'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      lastTestResult: map['lastTestResult'] == null ? null : (GoogleCloudDialogflowCxV3beta1TestCaseResult.fromMap((map['lastTestResult'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      notes: map['notes'] == null ? null : (map['notes'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as List).cast<String>()).input(),
      testCaseConversationTurns: map['testCaseConversationTurns'] == null ? null : (pulumi.Input.decodeList<GoogleCloudDialogflowCxV3beta1ConversationTurn>(map['testCaseConversationTurns'], (value) => GoogleCloudDialogflowCxV3beta1ConversationTurn.fromMap((value as Map).cast<String, dynamic>()))).input(),
      testConfig: map['testConfig'] == null ? null : (GoogleCloudDialogflowCxV3beta1TestConfig.fromMap((map['testConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

