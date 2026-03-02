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
    this.createTime,
    this.creatorEmail,
    this.databasePersistencePolicy,
    this.description,
    required this.displayName,
    required this.integrationId,
    this.lastModifierEmail,
    this.location,
    this.lockHolderEmail,
    this.project,
    required this.testCaseId,
    this.testInputParameters,
    this.testTaskConfigs,
    required this.triggerId,
    this.updateTime,
    required this.versionId,
    this.workflowId,
  });

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
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      creatorEmail: map['creatorEmail'] == null ? null : (map['creatorEmail'] as String).input(),
      databasePersistencePolicy: map['databasePersistencePolicy'] == null ? null : (TestCaseDatabasePersistencePolicy.fromValue(map['databasePersistencePolicy'] as String)).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      integrationId: (map['integrationId'] as String).input(),
      lastModifierEmail: map['lastModifierEmail'] == null ? null : (map['lastModifierEmail'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      lockHolderEmail: map['lockHolderEmail'] == null ? null : (map['lockHolderEmail'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      testCaseId: (map['testCaseId'] as String).input(),
      testInputParameters: map['testInputParameters'] == null ? null : (pulumi.Input.decodeList<GoogleCloudIntegrationsV1alphaIntegrationParameter>(map['testInputParameters'], (value) => GoogleCloudIntegrationsV1alphaIntegrationParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      testTaskConfigs: map['testTaskConfigs'] == null ? null : (pulumi.Input.decodeList<GoogleCloudIntegrationsV1alphaTestTaskConfig>(map['testTaskConfigs'], (value) => GoogleCloudIntegrationsV1alphaTestTaskConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      triggerId: (map['triggerId'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
      versionId: (map['versionId'] as String).input(),
      workflowId: map['workflowId'] == null ? null : (map['workflowId'] as String).input(),
    );
  }
}

