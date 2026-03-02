// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_test_case_test_case_conversation_turn.dart';
import 'cx_test_case_test_config.dart';

/// {@template pulumi_diagflow_cx_test_case_cx_test_case_args_doc}
/// The set of arguments for CxTestCase.
/// {@endtemplate}
/// {@macro pulumi_diagflow_cx_test_case_cx_test_case_args_doc}
class CxTestCaseArgs {
  /// The human-readable name of the test case, unique within the agent. Limit of 200 characters.
  final pulumi.Input<String> displayName;
  /// Additional freeform notes about the test case. Limit of 400 characters.
  final pulumi.Input<String>? notes;
  /// The agent to create the test case for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
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

  /// Creates a new [CxTestCaseArgs].
  /// [displayName] The human-readable name of the test case, unique within the agent. Limit of 200 characters.
  /// [notes] Additional freeform notes about the test case. Limit of 400 characters.
  /// [parent] The agent to create the test case for.
  /// [tags] Tags are short descriptions that users may apply to test cases for organizational and filtering purposes.
  /// [testCaseConversationTurns] The conversation turns uttered when the test case was created, in chronological order. These include the canonical set of agent utterances that should occur when the agent is working properly.
  /// [testConfig] Config for the test case.
  CxTestCaseArgs({
    required this.displayName,
    this.notes,
    this.parent,
    this.tags,
    this.testCaseConversationTurns,
    this.testConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'notes': ?notes,
      'parent': ?parent,
      'tags': ?tags,
      'testCaseConversationTurns': ?pulumi.Input.mapOptionalInputValue<List<CxTestCaseTestCaseConversationTurn>, List<Map<String, dynamic>>>(testCaseConversationTurns, (value) => pulumi.Input.encodeList<CxTestCaseTestCaseConversationTurn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'testConfig': ?pulumi.Input.mapOptionalInputValue<CxTestCaseTestConfig, Map<String, dynamic>>(testConfig, (value) => value.toMap()),
    };
  }

  factory CxTestCaseArgs.fromMap(Map<String, dynamic> map) {
    return CxTestCaseArgs(
      displayName: (map['displayName'] as String).input(),
      notes: map['notes'] == null ? null : (map['notes']! as String).input(),
      parent: map['parent'] == null ? null : (map['parent']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as List).cast<String>()).input(),
      testCaseConversationTurns: map['testCaseConversationTurns'] == null ? null : (pulumi.Input.decodeList<CxTestCaseTestCaseConversationTurn>(map['testCaseConversationTurns']!, (value) => CxTestCaseTestCaseConversationTurn.fromMap((value as Map).cast<String, dynamic>()))).input(),
      testConfig: map['testConfig'] == null ? null : (CxTestCaseTestConfig.fromMap((map['testConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

