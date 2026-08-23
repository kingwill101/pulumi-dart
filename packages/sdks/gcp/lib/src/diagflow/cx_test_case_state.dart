// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_test_case_last_test_result.dart';
import 'cx_test_case_test_case_conversation_turn.dart';
import 'cx_test_case_test_config.dart';

/// Input properties used for looking up and filtering CxTestCase resources.
class CxTestCaseState {
  /// When the test was created. A timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The human-readable name of the test case, unique within the agent. Limit of 200 characters.
  final pulumi.Input<String>? displayName;
  /// The latest test result.
  /// Structure is documented below.
  final pulumi.Input<List<CxTestCaseLastTestResult>>? lastTestResults;
  /// The unique identifier of the page.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;/pages/&lt;Page ID&gt;.
  final pulumi.Input<String>? name;
  /// Additional freeform notes about the test case. Limit of 400 characters.
  final pulumi.Input<String>? notes;
  /// The agent to create the test case for.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;.
  final pulumi.Input<String>? parent;
  /// Tags are short descriptions that users may apply to test cases for organizational and filtering purposes.
  /// Each tag should start with "#" and has a limit of 30 characters
  final pulumi.Input<List<String>>? tags;
  /// The conversation turns uttered when the test case was created, in chronological order. These include the canonical set of agent utterances that should occur when the agent is working properly.
  /// Structure is documented below.
  final pulumi.Input<List<CxTestCaseTestCaseConversationTurn>>? testCaseConversationTurns;
  /// Config for the test case.
  /// Structure is documented below.
  final pulumi.Input<CxTestCaseTestConfig>? testConfig;

  /// Creates a new [CxTestCaseState].
  /// [creationTime] When the test was created. A timestamp in RFC3339 text format.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The human-readable name of the test case, unique within the agent. Limit of 200 characters.
  /// [lastTestResults] The latest test result.
  /// [name] The unique identifier of the page.
  /// [notes] Additional freeform notes about the test case. Limit of 400 characters.
  /// [parent] The agent to create the test case for.
  /// [tags] Tags are short descriptions that users may apply to test cases for organizational and filtering purposes.
  /// [testCaseConversationTurns] The conversation turns uttered when the test case was created, in chronological order. These include the canonical set of agent utterances that should occur when the agent is working properly.
  /// [testConfig] Config for the test case.
  const CxTestCaseState({
    this.creationTime,
    this.deletionPolicy,
    this.displayName,
    this.lastTestResults,
    this.name,
    this.notes,
    this.parent,
    this.tags,
    this.testCaseConversationTurns,
    this.testConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTime': ?creationTime,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'lastTestResults': ?pulumi.Input.mapOptionalInputValue<List<CxTestCaseLastTestResult>, List<Map<String, dynamic>>>(lastTestResults, (value) => pulumi.Input.encodeList<CxTestCaseLastTestResult, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'notes': ?notes,
      'parent': ?parent,
      'tags': ?tags,
      'testCaseConversationTurns': ?pulumi.Input.mapOptionalInputValue<List<CxTestCaseTestCaseConversationTurn>, List<Map<String, dynamic>>>(testCaseConversationTurns, (value) => pulumi.Input.encodeList<CxTestCaseTestCaseConversationTurn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'testConfig': ?pulumi.Input.mapOptionalInputValue<CxTestCaseTestConfig, Map<String, dynamic>>(testConfig, (value) => value.toMap()),
    };
  }

  factory CxTestCaseState.fromMap(Map<String, dynamic> map) {
    return CxTestCaseState(
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastTestResults: (() { final guardedValue = map['lastTestResults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CxTestCaseLastTestResult>(guardedValue, (value) => CxTestCaseLastTestResult.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notes: (() { final guardedValue = map['notes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      testCaseConversationTurns: (() { final guardedValue = map['testCaseConversationTurns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CxTestCaseTestCaseConversationTurn>(guardedValue, (value) => CxTestCaseTestCaseConversationTurn.fromMap((value as Map).cast<String, dynamic>()))); })(),
      testConfig: (() { final guardedValue = map['testConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxTestCaseTestConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
