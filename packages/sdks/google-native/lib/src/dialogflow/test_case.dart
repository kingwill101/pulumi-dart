import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_test_case_result_response.dart';
import 'google_cloud_dialogflow_cx_v3_test_config_response.dart';
import 'test_case_args.dart';

/// Creates a test case for the given agent.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class TestCase extends pulumi.CustomResource {
  late final pulumi.Output<String> agentId;

  /// When the test was created.
  late final pulumi.Output<String> creationTime;

  /// The human-readable name of the test case, unique within the agent. Limit of 200 characters.
  late final pulumi.Output<String> displayName;

  /// The latest test result.
  late final pulumi.Output<GoogleCloudDialogflowCxV3TestCaseResultResponse>
  lastTestResult;
  late final pulumi.Output<String> location;

  /// The unique identifier of the test case. TestCases.CreateTestCase will populate the name automatically. Otherwise use format: `projects//locations//agents/ /testCases/`.
  late final pulumi.Output<String> name;

  /// Additional freeform notes about the test case. Limit of 400 characters.
  late final pulumi.Output<String> notes;
  late final pulumi.Output<String> project;

  /// Tags are short descriptions that users may apply to test cases for organizational and filtering purposes. Each tag should start with "#" and has a limit of 30 characters.
  late final pulumi.Output<List<String>> tags;

  /// The conversation turns uttered when the test case was created, in chronological order. These include the canonical set of agent utterances that should occur when the agent is working properly.
  late final pulumi.Output<List<Map<String, dynamic>>>
  testCaseConversationTurns;

  /// Config for the test case.
  late final pulumi.Output<GoogleCloudDialogflowCxV3TestConfigResponse>
  testConfig;

  /// Creates a new [TestCase].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TestCase]. {@macro pulumi_dialogflow_v3_test_case_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TestCase(
    String name, {
    TestCaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:dialogflow/v3:TestCase',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    agentId = registerOutput<String>('agentId');
    creationTime = registerOutput<String>('creationTime');
    displayName = registerOutput<String>('displayName');
    lastTestResult =
        registerOutput<GoogleCloudDialogflowCxV3TestCaseResultResponse>(
          'lastTestResult',
        );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    notes = registerOutput<String>('notes');
    project = registerOutput<String>('project');
    tags = registerOutput<List<String>>('tags');
    testCaseConversationTurns = registerOutput<List<Map<String, dynamic>>>(
      'testCaseConversationTurns',
    );
    testConfig = registerOutput<GoogleCloudDialogflowCxV3TestConfigResponse>(
      'testConfig',
    );
  }
}
