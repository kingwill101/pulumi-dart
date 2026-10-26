// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_conversation_turn_response.dart';
import 'google_cloud_dialogflow_cx_v3_test_case_result_response.dart';
import 'google_cloud_dialogflow_cx_v3_test_config_response.dart';

/// Result data returned by getTestCase.
class GetTestCaseResult {
  /// When the test was created.
  final String? creationTime;
  /// The human-readable name of the test case, unique within the agent. Limit of 200 characters.
  final String? displayName;
  /// The latest test result.
  final GoogleCloudDialogflowCxV3TestCaseResultResponse? lastTestResult;
  /// The unique identifier of the test case. TestCases.CreateTestCase will populate the name automatically. Otherwise use format: `projects//locations//agents/ /testCases/`.
  final String? name;
  /// Additional freeform notes about the test case. Limit of 400 characters.
  final String? notes;
  /// Tags are short descriptions that users may apply to test cases for organizational and filtering purposes. Each tag should start with "#" and has a limit of 30 characters.
  final List<String>? tags;
  /// The conversation turns uttered when the test case was created, in chronological order. These include the canonical set of agent utterances that should occur when the agent is working properly.
  final List<GoogleCloudDialogflowCxV3ConversationTurnResponse>? testCaseConversationTurns;
  /// Config for the test case.
  final GoogleCloudDialogflowCxV3TestConfigResponse? testConfig;

  /// Creates a new [GetTestCaseResult].
  /// [creationTime] When the test was created.
  /// [displayName] The human-readable name of the test case, unique within the agent. Limit of 200 characters.
  /// [lastTestResult] The latest test result.
  /// [name] The unique identifier of the test case. TestCases.CreateTestCase will populate the name automatically. Otherwise use format: `projects//locations//agents/ /testCases/`.
  /// [notes] Additional freeform notes about the test case. Limit of 400 characters.
  /// [tags] Tags are short descriptions that users may apply to test cases for organizational and filtering purposes. Each tag should start with "#" and has a limit of 30 characters.
  /// [testCaseConversationTurns] The conversation turns uttered when the test case was created, in chronological order. These include the canonical set of agent utterances that should occur when the agent is working properly.
  /// [testConfig] Config for the test case.
  const GetTestCaseResult({
    this.creationTime,
    this.displayName,
    this.lastTestResult,
    this.name,
    this.notes,
    this.tags,
    this.testCaseConversationTurns,
    this.testConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTime': ?creationTime,
      'displayName': ?displayName,
      'lastTestResult': ?lastTestResult?.toMap(),
      'name': ?name,
      'notes': ?notes,
      'tags': ?tags,
      'testCaseConversationTurns': ?(() { final guardedValue = testCaseConversationTurns; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudDialogflowCxV3ConversationTurnResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'testConfig': ?testConfig?.toMap(),
    };
  }

  factory GetTestCaseResult.fromMap(Map<String, dynamic> map) {
    return GetTestCaseResult(
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastTestResult: (() { final guardedValue = map['lastTestResult']; if (guardedValue == null) return null; return GoogleCloudDialogflowCxV3TestCaseResultResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notes: (() { final guardedValue = map['notes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      testCaseConversationTurns: (() { final guardedValue = map['testCaseConversationTurns']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudDialogflowCxV3ConversationTurnResponse>(guardedValue, (value) => GoogleCloudDialogflowCxV3ConversationTurnResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      testConfig: (() { final guardedValue = map['testConfig']; if (guardedValue == null) return null; return GoogleCloudDialogflowCxV3TestConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
