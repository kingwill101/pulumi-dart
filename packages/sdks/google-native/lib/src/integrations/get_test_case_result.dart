// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_integrations_v1alpha_integration_parameter_response.dart';
import 'google_cloud_integrations_v1alpha_test_task_config_response.dart';

/// Result data returned by getTestCase.
class GetTestCaseResult {
  /// Auto-generated.
  final String? createTime;
  /// Optional. The creator's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  final String? creatorEmail;
  /// Optional. Various policies for how to persist the test execution info including execution info, execution export info, execution metadata index and execution param index..
  final String? databasePersistencePolicy;
  /// Optional. Description of the test case.
  final String? description;
  /// The display name of test case.
  final String? displayName;
  /// The last modifer's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  final String? lastModifierEmail;
  /// Optional. The edit lock holder's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  final String? lockHolderEmail;
  /// Auto-generated primary key.
  final String? name;
  /// Optional. Parameters that are expected to be passed to the test case when the test case is triggered. This gives the user the ability to provide default values. This should include all the output variables of the trigger as input variables.
  final List<GoogleCloudIntegrationsV1alphaIntegrationParameterResponse>? testInputParameters;
  /// Optional. However, the test case doesn't mock or assert anything without test_task_configs.
  final List<GoogleCloudIntegrationsV1alphaTestTaskConfigResponse>? testTaskConfigs;
  /// This defines the trigger ID in workflow which is considered to be executed as starting point of the test case
  final String? triggerId;
  /// Auto-generated.
  final String? updateTime;
  /// ID of the workflow with which this test case is associated
  final String? workflowId;

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
  const GetTestCaseResult({
    this.createTime,
    this.creatorEmail,
    this.databasePersistencePolicy,
    this.description,
    this.displayName,
    this.lastModifierEmail,
    this.lockHolderEmail,
    this.name,
    this.testInputParameters,
    this.testTaskConfigs,
    this.triggerId,
    this.updateTime,
    this.workflowId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'creatorEmail': ?creatorEmail,
      'databasePersistencePolicy': ?databasePersistencePolicy,
      'description': ?description,
      'displayName': ?displayName,
      'lastModifierEmail': ?lastModifierEmail,
      'lockHolderEmail': ?lockHolderEmail,
      'name': ?name,
      'testInputParameters': ?(() { final guardedValue = testInputParameters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudIntegrationsV1alphaIntegrationParameterResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'testTaskConfigs': ?(() { final guardedValue = testTaskConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudIntegrationsV1alphaTestTaskConfigResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'triggerId': ?triggerId,
      'updateTime': ?updateTime,
      'workflowId': ?workflowId,
    };
  }

  factory GetTestCaseResult.fromMap(Map<String, dynamic> map) {
    return GetTestCaseResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creatorEmail: (() { final guardedValue = map['creatorEmail']; if (guardedValue == null) return null; return guardedValue as String; })(),
      databasePersistencePolicy: (() { final guardedValue = map['databasePersistencePolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModifierEmail: (() { final guardedValue = map['lastModifierEmail']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lockHolderEmail: (() { final guardedValue = map['lockHolderEmail']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      testInputParameters: (() { final guardedValue = map['testInputParameters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudIntegrationsV1alphaIntegrationParameterResponse>(guardedValue, (value) => GoogleCloudIntegrationsV1alphaIntegrationParameterResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      testTaskConfigs: (() { final guardedValue = map['testTaskConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudIntegrationsV1alphaTestTaskConfigResponse>(guardedValue, (value) => GoogleCloudIntegrationsV1alphaTestTaskConfigResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      triggerId: (() { final guardedValue = map['triggerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workflowId: (() { final guardedValue = map['workflowId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
