// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_integrations_v1alpha_integration_parameter.dart';
import 'google_cloud_integrations_v1alpha_test_task_config.dart';
import 'test_case_database_persistence_policy.dart';

/// {@template pulumi_integrations_v1alpha_test_case_args_doc}
/// The set of arguments for TestCase.
/// {@endtemplate}
/// {@macro pulumi_integrations_v1alpha_test_case_args_doc}
class TestCaseArgs {
  /// Auto-generated.
  final pulumi.Input<String>? createTime;
  /// Optional. The creator's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  final pulumi.Input<String>? creatorEmail;
  /// Optional. Various policies for how to persist the test execution info including execution info, execution export info, execution metadata index and execution param index..
  final pulumi.Input<TestCaseDatabasePersistencePolicy>? databasePersistencePolicy;
  /// Optional. Description of the test case.
  final pulumi.Input<String>? description;
  /// The display name of test case.
  final pulumi.Input<String> displayName;
  final pulumi.Input<String> integrationId;
  /// The last modifer's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  final pulumi.Input<String>? lastModifierEmail;
  final pulumi.Input<String>? location;
  /// Optional. The edit lock holder's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  final pulumi.Input<String>? lockHolderEmail;
  final pulumi.Input<String>? project;
  /// Required. Required
  final pulumi.Input<String> testCaseId;
  /// Optional. Parameters that are expected to be passed to the test case when the test case is triggered. This gives the user the ability to provide default values. This should include all the output variables of the trigger as input variables.
  final pulumi.Input<List<GoogleCloudIntegrationsV1alphaIntegrationParameter>>? testInputParameters;
  /// Optional. However, the test case doesn't mock or assert anything without test_task_configs.
  final pulumi.Input<List<GoogleCloudIntegrationsV1alphaTestTaskConfig>>? testTaskConfigs;
  /// This defines the trigger ID in workflow which is considered to be executed as starting point of the test case
  final pulumi.Input<String> triggerId;
  /// Auto-generated.
  final pulumi.Input<String>? updateTime;
  final pulumi.Input<String> versionId;
  /// ID of the workflow with which this test case is associated
  final pulumi.Input<String>? workflowId;

  /// Creates a new [TestCaseArgs].
  /// [createTime] Auto-generated.
  /// [creatorEmail] Optional. The creator's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  /// [databasePersistencePolicy] Optional. Various policies for how to persist the test execution info including execution info, execution export info, execution metadata index and execution param index..
  /// [description] Optional. Description of the test case.
  /// [displayName] The display name of test case.
  /// [integrationId] Required.
  /// [lastModifierEmail] The last modifer's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  /// [location] Optional.
  /// [lockHolderEmail] Optional. The edit lock holder's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  /// [project] Optional.
  /// [testCaseId] Required. Required
  /// [testInputParameters] Optional. Parameters that are expected to be passed to the test case when the test case is triggered. This gives the user the ability to provide default values. This should include all the output variables of the trigger as input variables.
  /// [testTaskConfigs] Optional. However, the test case doesn't mock or assert anything without test_task_configs.
  /// [triggerId] This defines the trigger ID in workflow which is considered to be executed as starting point of the test case
  /// [updateTime] Auto-generated.
  /// [versionId] Required.
  /// [workflowId] ID of the workflow with which this test case is associated
  TestCaseArgs({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? creatorEmail,
    pulumi.Output<TestCaseDatabasePersistencePolicy>? databasePersistencePolicy,
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    required pulumi.Output<String> integrationId,
    pulumi.Output<String>? lastModifierEmail,
    pulumi.Output<String>? location,
    pulumi.Output<String>? lockHolderEmail,
    pulumi.Output<String>? project,
    required pulumi.Output<String> testCaseId,
    pulumi.Output<List<GoogleCloudIntegrationsV1alphaIntegrationParameter>>? testInputParameters,
    pulumi.Output<List<GoogleCloudIntegrationsV1alphaTestTaskConfig>>? testTaskConfigs,
    required pulumi.Output<String> triggerId,
    pulumi.Output<String>? updateTime,
    required pulumi.Output<String> versionId,
    pulumi.Output<String>? workflowId,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      creatorEmail = pulumi.Input.asOptionalInput<String>(creatorEmail),
      databasePersistencePolicy = pulumi.Input.asOptionalInput<TestCaseDatabasePersistencePolicy>(databasePersistencePolicy),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      integrationId = pulumi.Input.asInput<String>(integrationId),
      lastModifierEmail = pulumi.Input.asOptionalInput<String>(lastModifierEmail),
      location = pulumi.Input.asOptionalInput<String>(location),
      lockHolderEmail = pulumi.Input.asOptionalInput<String>(lockHolderEmail),
      project = pulumi.Input.asOptionalInput<String>(project),
      testCaseId = pulumi.Input.asInput<String>(testCaseId),
      testInputParameters = pulumi.Input.asOptionalInput<List<GoogleCloudIntegrationsV1alphaIntegrationParameter>>(testInputParameters),
      testTaskConfigs = pulumi.Input.asOptionalInput<List<GoogleCloudIntegrationsV1alphaTestTaskConfig>>(testTaskConfigs),
      triggerId = pulumi.Input.asInput<String>(triggerId),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      versionId = pulumi.Input.asInput<String>(versionId),
      workflowId = pulumi.Input.asOptionalInput<String>(workflowId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'creatorEmail': ?creatorEmail,
      'databasePersistencePolicy': ?pulumi.Input.mapOptionalInputValue<TestCaseDatabasePersistencePolicy, String>(databasePersistencePolicy, (value) => value.value),
      'description': ?description,
      'displayName': displayName,
      'integrationId': integrationId,
      'lastModifierEmail': ?lastModifierEmail,
      'location': ?location,
      'lockHolderEmail': ?lockHolderEmail,
      'project': ?project,
      'testCaseId': testCaseId,
      'testInputParameters': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudIntegrationsV1alphaIntegrationParameter>, List<Map<String, dynamic>>>(testInputParameters, (value) => pulumi.Input.encodeList<GoogleCloudIntegrationsV1alphaIntegrationParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'testTaskConfigs': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudIntegrationsV1alphaTestTaskConfig>, List<Map<String, dynamic>>>(testTaskConfigs, (value) => pulumi.Input.encodeList<GoogleCloudIntegrationsV1alphaTestTaskConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'triggerId': triggerId,
      'updateTime': ?updateTime,
      'versionId': versionId,
      'workflowId': ?workflowId,
    };
  }

  factory TestCaseArgs.fromMap(Map<String, dynamic> map) {
    return TestCaseArgs(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      creatorEmail: map['creatorEmail'] == null ? null : pulumi.Output.create<String>(map['creatorEmail'] as String),
      databasePersistencePolicy: map['databasePersistencePolicy'] == null ? null : pulumi.Output.create<TestCaseDatabasePersistencePolicy>(TestCaseDatabasePersistencePolicy.fromValue(map['databasePersistencePolicy'] as String)),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      integrationId: pulumi.Output.create<String>(map['integrationId'] as String),
      lastModifierEmail: map['lastModifierEmail'] == null ? null : pulumi.Output.create<String>(map['lastModifierEmail'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      lockHolderEmail: map['lockHolderEmail'] == null ? null : pulumi.Output.create<String>(map['lockHolderEmail'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      testCaseId: pulumi.Output.create<String>(map['testCaseId'] as String),
      testInputParameters: map['testInputParameters'] == null ? null : pulumi.Output.create<List<GoogleCloudIntegrationsV1alphaIntegrationParameter>>(pulumi.Input.decodeList<GoogleCloudIntegrationsV1alphaIntegrationParameter>(map['testInputParameters'], (value) => GoogleCloudIntegrationsV1alphaIntegrationParameter.fromMap((value as Map).cast<String, dynamic>()))),
      testTaskConfigs: map['testTaskConfigs'] == null ? null : pulumi.Output.create<List<GoogleCloudIntegrationsV1alphaTestTaskConfig>>(pulumi.Input.decodeList<GoogleCloudIntegrationsV1alphaTestTaskConfig>(map['testTaskConfigs'], (value) => GoogleCloudIntegrationsV1alphaTestTaskConfig.fromMap((value as Map).cast<String, dynamic>()))),
      triggerId: pulumi.Output.create<String>(map['triggerId'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      versionId: pulumi.Output.create<String>(map['versionId'] as String),
      workflowId: map['workflowId'] == null ? null : pulumi.Output.create<String>(map['workflowId'] as String),
    );
  }
}

