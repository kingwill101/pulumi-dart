import 'package:pulumi/pulumi.dart' as pulumi;
import 'test_case_args.dart';

/// Creates a new test case
/// Auto-naming is currently not supported for this resource.
class TestCase extends pulumi.CustomResource {
  /// Auto-generated.
  late final pulumi.Output<String> createTime;

  /// Optional. The creator's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  late final pulumi.Output<String> creatorEmail;

  /// Optional. Various policies for how to persist the test execution info including execution info, execution export info, execution metadata index and execution param index..
  late final pulumi.Output<String> databasePersistencePolicy;

  /// Optional. Description of the test case.
  late final pulumi.Output<String> description;

  /// The display name of test case.
  late final pulumi.Output<String> displayName;
  late final pulumi.Output<String> integrationId;

  /// The last modifer's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  late final pulumi.Output<String> lastModifierEmail;
  late final pulumi.Output<String> location;

  /// Optional. The edit lock holder's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  late final pulumi.Output<String> lockHolderEmail;

  /// Auto-generated primary key.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Required. Required
  late final pulumi.Output<String> testCaseId;

  /// Optional. Parameters that are expected to be passed to the test case when the test case is triggered. This gives the user the ability to provide default values. This should include all the output variables of the trigger as input variables.
  late final pulumi.Output<List<Map<String, dynamic>>> testInputParameters;

  /// Optional. However, the test case doesn't mock or assert anything without test_task_configs.
  late final pulumi.Output<List<Map<String, dynamic>>> testTaskConfigs;

  /// This defines the trigger ID in workflow which is considered to be executed as starting point of the test case
  late final pulumi.Output<String> triggerId;

  /// Auto-generated.
  late final pulumi.Output<String> updateTime;
  late final pulumi.Output<String> versionId;

  /// ID of the workflow with which this test case is associated
  late final pulumi.Output<String> workflowId;

  /// Creates a new [TestCase].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TestCase]. {@macro pulumi_integrations_v1alpha_test_case_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TestCase(
    String name, {
    TestCaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:integrations/v1alpha:TestCase',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    creatorEmail = registerOutput<String>('creatorEmail');
    databasePersistencePolicy = registerOutput<String>(
      'databasePersistencePolicy',
    );
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    integrationId = registerOutput<String>('integrationId');
    lastModifierEmail = registerOutput<String>('lastModifierEmail');
    location = registerOutput<String>('location');
    lockHolderEmail = registerOutput<String>('lockHolderEmail');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    testCaseId = registerOutput<String>('testCaseId');
    testInputParameters = registerOutput<List<Map<String, dynamic>>>(
      'testInputParameters',
    );
    testTaskConfigs = registerOutput<List<Map<String, dynamic>>>(
      'testTaskConfigs',
    );
    triggerId = registerOutput<String>('triggerId');
    updateTime = registerOutput<String>('updateTime');
    versionId = registerOutput<String>('versionId');
    workflowId = registerOutput<String>('workflowId');
  }
}
