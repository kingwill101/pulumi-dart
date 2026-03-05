// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_integrations_v1alpha_integration_parameter_response.dart';
import 'google_cloud_integrations_v1alpha_test_task_config_response.dart';

/// Result data returned by getTestCase.
class GetTestCaseResult {
  /// Auto-generated.
  final String createTime;
  /// Optional. The creator's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  final String creatorEmail;
  /// Optional. Various policies for how to persist the test execution info including execution info, execution export info, execution metadata index and execution param index..
  final String databasePersistencePolicy;
  /// Optional. Description of the test case.
  final String description;
  /// The display name of test case.
  final String displayName;
  /// The last modifer's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  final String lastModifierEmail;
  /// Optional. The edit lock holder's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  final String lockHolderEmail;
  /// Auto-generated primary key.
  final String name;
  /// Optional. Parameters that are expected to be passed to the test case when the test case is triggered. This gives the user the ability to provide default values. This should include all the output variables of the trigger as input variables.
  final List<GoogleCloudIntegrationsV1alphaIntegrationParameterResponse> testInputParameters;
  /// Optional. However, the test case doesn't mock or assert anything without test_task_configs.
  final List<GoogleCloudIntegrationsV1alphaTestTaskConfigResponse> testTaskConfigs;
  /// This defines the trigger ID in workflow which is considered to be executed as starting point of the test case
  final String triggerId;
  /// Auto-generated.
  final String updateTime;
  /// ID of the workflow with which this test case is associated
  final String workflowId;

  /// Creates a new [GetTestCaseResult].
  /// [createTime] Auto-generated.
  /// [creatorEmail] Optional. The creator's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  /// [databasePersistencePolicy] Optional. Various policies for how to persist the test execution info including execution info, execution export info, execution metadata index and execution param index..
  /// [description] Optional. Description of the test case.
  /// [displayName] The display name of test case.
  /// [lastModifierEmail] The last modifer's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  /// [lockHolderEmail] Optional. The edit lock holder's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  /// [name] Auto-generated primary key.
  /// [testInputParameters] Optional. Parameters that are expected to be passed to the test case when the test case is triggered. This gives the user the ability to provide default values. This should include all the output variables of the trigger as input variables.
  /// [testTaskConfigs] Optional. However, the test case doesn't mock or assert anything without test_task_configs.
  /// [triggerId] This defines the trigger ID in workflow which is considered to be executed as starting point of the test case
  /// [updateTime] Auto-generated.
  /// [workflowId] ID of the workflow with which this test case is associated
  GetTestCaseResult({
    required this.createTime,
    required this.creatorEmail,
    required this.databasePersistencePolicy,
    required this.description,
    required this.displayName,
    required this.lastModifierEmail,
    required this.lockHolderEmail,
    required this.name,
    required this.testInputParameters,
    required this.testTaskConfigs,
    required this.triggerId,
    required this.updateTime,
    required this.workflowId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'creatorEmail': creatorEmail,
      'databasePersistencePolicy': databasePersistencePolicy,
      'description': description,
      'displayName': displayName,
      'lastModifierEmail': lastModifierEmail,
      'lockHolderEmail': lockHolderEmail,
      'name': name,
      'testInputParameters': pulumi.Input.encodeList<GoogleCloudIntegrationsV1alphaIntegrationParameterResponse, Map<String, dynamic>>(testInputParameters, (value) => value.toMap()),
      'testTaskConfigs': pulumi.Input.encodeList<GoogleCloudIntegrationsV1alphaTestTaskConfigResponse, Map<String, dynamic>>(testTaskConfigs, (value) => value.toMap()),
      'triggerId': triggerId,
      'updateTime': updateTime,
      'workflowId': workflowId,
    };
  }

  factory GetTestCaseResult.fromMap(Map<String, dynamic> map) {
    return GetTestCaseResult(
      createTime: map['createTime'] as String,
      creatorEmail: map['creatorEmail'] as String,
      databasePersistencePolicy: map['databasePersistencePolicy'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      lastModifierEmail: map['lastModifierEmail'] as String,
      lockHolderEmail: map['lockHolderEmail'] as String,
      name: map['name'] as String,
      testInputParameters: pulumi.Input.decodeList<GoogleCloudIntegrationsV1alphaIntegrationParameterResponse>(map['testInputParameters']!, (value) => GoogleCloudIntegrationsV1alphaIntegrationParameterResponse.fromMap((value as Map).cast<String, dynamic>())),
      testTaskConfigs: pulumi.Input.decodeList<GoogleCloudIntegrationsV1alphaTestTaskConfigResponse>(map['testTaskConfigs']!, (value) => GoogleCloudIntegrationsV1alphaTestTaskConfigResponse.fromMap((value as Map).cast<String, dynamic>())),
      triggerId: map['triggerId'] as String,
      updateTime: map['updateTime'] as String,
      workflowId: map['workflowId'] as String,
    );
  }
}

