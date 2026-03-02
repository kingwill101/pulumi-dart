// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_conversation_turn.dart';
import 'google_cloud_dialogflow_cx_v3_test_case_result_test_result.dart';

/// Represents a result from running a test case in an agent environment.
class GoogleCloudDialogflowCxV3TestCaseResult {
  /// The conversation turns uttered during the test case replay in chronological order.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3ConversationTurn>>? conversationTurns;
  /// Environment where the test was run. If not set, it indicates the draft environment.
  final pulumi.Input<String>? environment;
  /// The resource name for the test case result. Format: `projects//locations//agents//testCases/ /results/`.
  final pulumi.Input<String>? name;
  /// Whether the test case passed in the agent environment.
  final pulumi.Input<GoogleCloudDialogflowCxV3TestCaseResultTestResult>? testResult;
  /// The time that the test was run.
  final pulumi.Input<String>? testTime;

  /// Creates a new [GoogleCloudDialogflowCxV3TestCaseResult].
  /// [conversationTurns] The conversation turns uttered during the test case replay in chronological order.
  /// [environment] Environment where the test was run. If not set, it indicates the draft environment.
  /// [name] The resource name for the test case result. Format: `projects//locations//agents//testCases/ /results/`.
  /// [testResult] Whether the test case passed in the agent environment.
  /// [testTime] The time that the test was run.
  GoogleCloudDialogflowCxV3TestCaseResult({
    this.conversationTurns,
    this.environment,
    this.name,
    this.testResult,
    this.testTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversationTurns': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3ConversationTurn>, List<Map<String, dynamic>>>(conversationTurns, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3ConversationTurn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'environment': ?environment,
      'name': ?name,
      'testResult': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3TestCaseResultTestResult, String>(testResult, (value) => value.value),
      'testTime': ?testTime,
    };
  }

  factory GoogleCloudDialogflowCxV3TestCaseResult.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3TestCaseResult(
      conversationTurns: map['conversationTurns'] == null ? null : (pulumi.Input.decodeList<GoogleCloudDialogflowCxV3ConversationTurn>(map['conversationTurns'], (value) => GoogleCloudDialogflowCxV3ConversationTurn.fromMap((value as Map).cast<String, dynamic>()))).input(),
      environment: map['environment'] == null ? null : (map['environment'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      testResult: map['testResult'] == null ? null : (GoogleCloudDialogflowCxV3TestCaseResultTestResult.fromValue(map['testResult'] as String)).input(),
      testTime: map['testTime'] == null ? null : (map['testTime'] as String).input(),
    );
  }
}

