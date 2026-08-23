// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_conversation_turn.dart';
import 'google_cloud_dialogflow_cx_v3beta1_test_case_result_test_result.dart';

/// Represents a result from running a test case in an agent environment.
class GoogleCloudDialogflowCxV3beta1TestCaseResult {
  /// The conversation turns uttered during the test case replay in chronological order.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3beta1ConversationTurn>>? conversationTurns;
  /// Environment where the test was run. If not set, it indicates the draft environment.
  final pulumi.Input<String>? environment;
  /// The resource name for the test case result. Format: `projects//locations//agents//testCases/ /results/`.
  final pulumi.Input<String>? name;
  /// Whether the test case passed in the agent environment.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1TestCaseResultTestResult>? testResult;
  /// The time that the test was run.
  final pulumi.Input<String>? testTime;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1TestCaseResult].
  /// [conversationTurns] The conversation turns uttered during the test case replay in chronological order.
  /// [environment] Environment where the test was run. If not set, it indicates the draft environment.
  /// [name] The resource name for the test case result. Format: `projects//locations//agents//testCases/ /results/`.
  /// [testResult] Whether the test case passed in the agent environment.
  /// [testTime] The time that the test was run.
  const GoogleCloudDialogflowCxV3beta1TestCaseResult({
    this.conversationTurns,
    this.environment,
    this.name,
    this.testResult,
    this.testTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversationTurns': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3beta1ConversationTurn>, List<Map<String, dynamic>>>(conversationTurns, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3beta1ConversationTurn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'environment': ?environment,
      'name': ?name,
      'testResult': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3beta1TestCaseResultTestResult, String>(testResult, (value) => value.wireValue),
      'testTime': ?testTime,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1TestCaseResult.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1TestCaseResult(
      conversationTurns: (() { final guardedValue = map['conversationTurns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowCxV3beta1ConversationTurn>(guardedValue, (value) => GoogleCloudDialogflowCxV3beta1ConversationTurn.fromMap((value as Map).cast<String, dynamic>()))); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      testResult: (() { final guardedValue = map['testResult']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3beta1TestCaseResultTestResult.fromValue(guardedValue as String)); })(),
      testTime: (() { final guardedValue = map['testTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
