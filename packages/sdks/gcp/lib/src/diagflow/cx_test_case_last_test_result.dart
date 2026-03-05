// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_test_case_last_test_result_conversation_turn.dart';

class CxTestCaseLastTestResult {
  /// The conversation turns uttered during the test case replay in chronological order.
  /// Structure is documented below.
  final pulumi.Input<List<CxTestCaseLastTestResultConversationTurn>>? conversationTurns;
  /// Environment where the test was run. If not set, it indicates the draft environment.
  final pulumi.Input<String>? environment;
  /// The unique identifier of the page.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;/pages/&lt;Page ID&gt;.
  final pulumi.Input<String>? name;
  /// Whether the test case passed in the agent environment.
  /// * PASSED: The test passed.
  /// * FAILED: The test did not pass.
  /// Possible values are: `PASSED`, `FAILED`.
  final pulumi.Input<String>? testResult;
  /// The time that the test was run. A timestamp in RFC3339 text format.
  final pulumi.Input<String>? testTime;

  /// Creates a new [CxTestCaseLastTestResult].
  /// [conversationTurns] The conversation turns uttered during the test case replay in chronological order.
  /// [environment] Environment where the test was run. If not set, it indicates the draft environment.
  /// [name] The unique identifier of the page.
  /// [testResult] Whether the test case passed in the agent environment.
  /// [testTime] The time that the test was run. A timestamp in RFC3339 text format.
  CxTestCaseLastTestResult({
    this.conversationTurns,
    this.environment,
    this.name,
    this.testResult,
    this.testTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversationTurns': ?pulumi.Input.mapOptionalInputValue<List<CxTestCaseLastTestResultConversationTurn>, List<Map<String, dynamic>>>(conversationTurns, (value) => pulumi.Input.encodeList<CxTestCaseLastTestResultConversationTurn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'environment': ?environment,
      'name': ?name,
      'testResult': ?testResult,
      'testTime': ?testTime,
    };
  }

  factory CxTestCaseLastTestResult.fromMap(Map<String, dynamic> map) {
    return CxTestCaseLastTestResult(
      conversationTurns: (() { final guardedValue = map['conversationTurns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CxTestCaseLastTestResultConversationTurn>(guardedValue, (value) => CxTestCaseLastTestResultConversationTurn.fromMap((value as Map).cast<String, dynamic>()))); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      testResult: (() { final guardedValue = map['testResult']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      testTime: (() { final guardedValue = map['testTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

