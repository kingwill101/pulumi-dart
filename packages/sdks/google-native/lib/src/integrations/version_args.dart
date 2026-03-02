// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_teardown.dart';
import 'enterprise_crm_frontends_eventbus_proto_task_config.dart';
import 'enterprise_crm_frontends_eventbus_proto_trigger_config.dart';
import 'enterprise_crm_frontends_eventbus_proto_workflow_parameters.dart';
import 'google_cloud_integrations_v1alpha_cloud_logging_details.dart';
import 'google_cloud_integrations_v1alpha_error_catcher_config.dart';
import 'google_cloud_integrations_v1alpha_integration_parameter.dart';
import 'google_cloud_integrations_v1alpha_task_config.dart';
import 'google_cloud_integrations_v1alpha_trigger_config.dart';
import 'version_database_persistence_policy.dart';
import 'version_origin.dart';

/// {@template pulumi_integrations_v1alpha_version_args_doc}
/// The set of arguments for Version.
/// {@endtemplate}
/// {@macro pulumi_integrations_v1alpha_version_args_doc}
class VersionArgs {
  /// Optional. Cloud Logging details for the integration version
  final pulumi.Input<GoogleCloudIntegrationsV1alphaCloudLoggingDetails>? cloudLoggingDetails;
  /// Optional. Optional. Indicates if sample workflow should be created.
  final pulumi.Input<bool>? createSampleIntegrations;
  /// Optional. Flag to disable database persistence for execution data, including event execution info, execution export info, execution metadata index and execution param index.
  final pulumi.Input<VersionDatabasePersistencePolicy>? databasePersistencePolicy;
  /// Optional. The integration description.
  final pulumi.Input<String>? description;
  /// Optional. Error Catch Task configuration for the integration. It's optional.
  final pulumi.Input<List<GoogleCloudIntegrationsV1alphaErrorCatcherConfig>>? errorCatcherConfigs;
  final pulumi.Input<String> integrationId;
  /// Optional. Parameters that are expected to be passed to the integration when an event is triggered. This consists of all the parameters that are expected in the integration execution. This gives the user the ability to provide default values, add information like PII and also provide data types of each parameter.
  final pulumi.Input<List<GoogleCloudIntegrationsV1alphaIntegrationParameter>>? integrationParameters;
  /// Optional. Parameters that are expected to be passed to the integration when an event is triggered. This consists of all the parameters that are expected in the integration execution. This gives the user the ability to provide default values, add information like PII and also provide data types of each parameter.
  final pulumi.Input<EnterpriseCrmFrontendsEventbusProtoWorkflowParameters>? integrationParametersInternal;
  /// Optional. The last modifier's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  final pulumi.Input<String>? lastModifierEmail;
  final pulumi.Input<String>? location;
  /// Optional. The edit lock holder's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  final pulumi.Input<String>? lockHolder;
  /// Set this flag to true, if draft version is to be created for a brand new integration. False, if the request is for an existing integration. For backward compatibility reasons, even if this flag is set to `false` and no existing integration is found, a new draft integration will still be created.
  final pulumi.Input<bool>? newIntegration;
  /// Optional. The origin that indicates where this integration is coming from.
  final pulumi.Input<VersionOrigin>? origin;
  /// Optional. The id of the template which was used to create this integration_version.
  final pulumi.Input<String>? parentTemplateId;
  final pulumi.Input<String> productId;
  final pulumi.Input<String>? project;
  /// Optional. The run-as service account email, if set and auth config is not configured, that will be used to generate auth token to be used in Connector task, Rest caller task and Cloud function task.
  final pulumi.Input<String>? runAsServiceAccount;
  /// Optional. An increasing sequence that is set when a new snapshot is created. The last created snapshot can be identified by [workflow_name, org_id latest(snapshot_number)]. However, last created snapshot need not be same as the HEAD. So users should always use "HEAD" tag to identify the head.
  final pulumi.Input<String>? snapshotNumber;
  /// Optional. Task configuration for the integration. It's optional, but the integration doesn't do anything without task_configs.
  final pulumi.Input<List<GoogleCloudIntegrationsV1alphaTaskConfig>>? taskConfigs;
  /// Optional. Task configuration for the integration. It's optional, but the integration doesn't do anything without task_configs.
  final pulumi.Input<List<EnterpriseCrmFrontendsEventbusProtoTaskConfig>>? taskConfigsInternal;
  /// Optional. Contains a graph of tasks that will be executed before putting the event in a terminal state (SUCCEEDED/FAILED/FATAL), regardless of success or failure, similar to "finally" in code.
  final pulumi.Input<EnterpriseCrmEventbusProtoTeardown>? teardown;
  /// Optional. Trigger configurations.
  final pulumi.Input<List<GoogleCloudIntegrationsV1alphaTriggerConfig>>? triggerConfigs;
  /// Optional. Trigger configurations.
  final pulumi.Input<List<EnterpriseCrmFrontendsEventbusProtoTriggerConfig>>? triggerConfigsInternal;
  /// Optional. A user-defined label that annotates an integration version. Typically, this is only set when the integration version is created.
  final pulumi.Input<String>? userLabel;

  /// Creates a new [VersionArgs].
  /// [cloudLoggingDetails] Optional. Cloud Logging details for the integration version
  /// [createSampleIntegrations] Optional. Optional. Indicates if sample workflow should be created.
  /// [databasePersistencePolicy] Optional. Flag to disable database persistence for execution data, including event execution info, execution export info, execution metadata index and execution param index.
  /// [description] Optional. The integration description.
  /// [errorCatcherConfigs] Optional. Error Catch Task configuration for the integration. It's optional.
  /// [integrationId] Required.
  /// [integrationParameters] Optional. Parameters that are expected to be passed to the integration when an event is triggered. This consists of all the parameters that are expected in the integration execution. This gives the user the ability to provide default values, add information like PII and also provide data types of each parameter.
  /// [integrationParametersInternal] Optional. Parameters that are expected to be passed to the integration when an event is triggered. This consists of all the parameters that are expected in the integration execution. This gives the user the ability to provide default values, add information like PII and also provide data types of each parameter.
  /// [lastModifierEmail] Optional. The last modifier's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  /// [location] Optional.
  /// [lockHolder] Optional. The edit lock holder's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  /// [newIntegration] Set this flag to true, if draft version is to be created for a brand new integration. False, if the request is for an existing integration. For backward compatibility reasons, even if this flag is set to `false` and no existing integration is found, a new draft integration will still be created.
  /// [origin] Optional. The origin that indicates where this integration is coming from.
  /// [parentTemplateId] Optional. The id of the template which was used to create this integration_version.
  /// [productId] Required.
  /// [project] Optional.
  /// [runAsServiceAccount] Optional. The run-as service account email, if set and auth config is not configured, that will be used to generate auth token to be used in Connector task, Rest caller task and Cloud function task.
  /// [snapshotNumber] Optional. An increasing sequence that is set when a new snapshot is created. The last created snapshot can be identified by [workflow_name, org_id latest(snapshot_number)]. However, last created snapshot need not be same as the HEAD. So users should always use "HEAD" tag to identify the head.
  /// [taskConfigs] Optional. Task configuration for the integration. It's optional, but the integration doesn't do anything without task_configs.
  /// [taskConfigsInternal] Optional. Task configuration for the integration. It's optional, but the integration doesn't do anything without task_configs.
  /// [teardown] Optional. Contains a graph of tasks that will be executed before putting the event in a terminal state (SUCCEEDED/FAILED/FATAL), regardless of success or failure, similar to "finally" in code.
  /// [triggerConfigs] Optional. Trigger configurations.
  /// [triggerConfigsInternal] Optional. Trigger configurations.
  /// [userLabel] Optional. A user-defined label that annotates an integration version. Typically, this is only set when the integration version is created.
  VersionArgs({
    this.cloudLoggingDetails,
    this.createSampleIntegrations,
    this.databasePersistencePolicy,
    this.description,
    this.errorCatcherConfigs,
    required this.integrationId,
    this.integrationParameters,
    this.integrationParametersInternal,
    this.lastModifierEmail,
    this.location,
    this.lockHolder,
    this.newIntegration,
    this.origin,
    this.parentTemplateId,
    required this.productId,
    this.project,
    this.runAsServiceAccount,
    this.snapshotNumber,
    this.taskConfigs,
    this.taskConfigsInternal,
    this.teardown,
    this.triggerConfigs,
    this.triggerConfigsInternal,
    this.userLabel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudLoggingDetails': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaCloudLoggingDetails, Map<String, dynamic>>(cloudLoggingDetails, (value) => value.toMap()),
      'createSampleIntegrations': ?createSampleIntegrations,
      'databasePersistencePolicy': ?pulumi.Input.mapOptionalInputValue<VersionDatabasePersistencePolicy, String>(databasePersistencePolicy, (value) => value.value),
      'description': ?description,
      'errorCatcherConfigs': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudIntegrationsV1alphaErrorCatcherConfig>, List<Map<String, dynamic>>>(errorCatcherConfigs, (value) => pulumi.Input.encodeList<GoogleCloudIntegrationsV1alphaErrorCatcherConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'integrationId': integrationId,
      'integrationParameters': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudIntegrationsV1alphaIntegrationParameter>, List<Map<String, dynamic>>>(integrationParameters, (value) => pulumi.Input.encodeList<GoogleCloudIntegrationsV1alphaIntegrationParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'integrationParametersInternal': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmFrontendsEventbusProtoWorkflowParameters, Map<String, dynamic>>(integrationParametersInternal, (value) => value.toMap()),
      'lastModifierEmail': ?lastModifierEmail,
      'location': ?location,
      'lockHolder': ?lockHolder,
      'newIntegration': ?newIntegration,
      'origin': ?pulumi.Input.mapOptionalInputValue<VersionOrigin, String>(origin, (value) => value.value),
      'parentTemplateId': ?parentTemplateId,
      'productId': productId,
      'project': ?project,
      'runAsServiceAccount': ?runAsServiceAccount,
      'snapshotNumber': ?snapshotNumber,
      'taskConfigs': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudIntegrationsV1alphaTaskConfig>, List<Map<String, dynamic>>>(taskConfigs, (value) => pulumi.Input.encodeList<GoogleCloudIntegrationsV1alphaTaskConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'taskConfigsInternal': ?pulumi.Input.mapOptionalInputValue<List<EnterpriseCrmFrontendsEventbusProtoTaskConfig>, List<Map<String, dynamic>>>(taskConfigsInternal, (value) => pulumi.Input.encodeList<EnterpriseCrmFrontendsEventbusProtoTaskConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'teardown': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoTeardown, Map<String, dynamic>>(teardown, (value) => value.toMap()),
      'triggerConfigs': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudIntegrationsV1alphaTriggerConfig>, List<Map<String, dynamic>>>(triggerConfigs, (value) => pulumi.Input.encodeList<GoogleCloudIntegrationsV1alphaTriggerConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'triggerConfigsInternal': ?pulumi.Input.mapOptionalInputValue<List<EnterpriseCrmFrontendsEventbusProtoTriggerConfig>, List<Map<String, dynamic>>>(triggerConfigsInternal, (value) => pulumi.Input.encodeList<EnterpriseCrmFrontendsEventbusProtoTriggerConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userLabel': ?userLabel,
    };
  }

  factory VersionArgs.fromMap(Map<String, dynamic> map) {
    return VersionArgs(
      cloudLoggingDetails: map['cloudLoggingDetails'] == null ? null : (GoogleCloudIntegrationsV1alphaCloudLoggingDetails.fromMap((map['cloudLoggingDetails']! as Map).cast<String, dynamic>())).input(),
      createSampleIntegrations: map['createSampleIntegrations'] == null ? null : (map['createSampleIntegrations']! as bool).input(),
      databasePersistencePolicy: map['databasePersistencePolicy'] == null ? null : (VersionDatabasePersistencePolicy.fromValue(map['databasePersistencePolicy']! as String)).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      errorCatcherConfigs: map['errorCatcherConfigs'] == null ? null : (pulumi.Input.decodeList<GoogleCloudIntegrationsV1alphaErrorCatcherConfig>(map['errorCatcherConfigs']!, (value) => GoogleCloudIntegrationsV1alphaErrorCatcherConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      integrationId: (map['integrationId'] as String).input(),
      integrationParameters: map['integrationParameters'] == null ? null : (pulumi.Input.decodeList<GoogleCloudIntegrationsV1alphaIntegrationParameter>(map['integrationParameters']!, (value) => GoogleCloudIntegrationsV1alphaIntegrationParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      integrationParametersInternal: map['integrationParametersInternal'] == null ? null : (EnterpriseCrmFrontendsEventbusProtoWorkflowParameters.fromMap((map['integrationParametersInternal']! as Map).cast<String, dynamic>())).input(),
      lastModifierEmail: map['lastModifierEmail'] == null ? null : (map['lastModifierEmail']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      lockHolder: map['lockHolder'] == null ? null : (map['lockHolder']! as String).input(),
      newIntegration: map['newIntegration'] == null ? null : (map['newIntegration']! as bool).input(),
      origin: map['origin'] == null ? null : (VersionOrigin.fromValue(map['origin']! as String)).input(),
      parentTemplateId: map['parentTemplateId'] == null ? null : (map['parentTemplateId']! as String).input(),
      productId: (map['productId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      runAsServiceAccount: map['runAsServiceAccount'] == null ? null : (map['runAsServiceAccount']! as String).input(),
      snapshotNumber: map['snapshotNumber'] == null ? null : (map['snapshotNumber']! as String).input(),
      taskConfigs: map['taskConfigs'] == null ? null : (pulumi.Input.decodeList<GoogleCloudIntegrationsV1alphaTaskConfig>(map['taskConfigs']!, (value) => GoogleCloudIntegrationsV1alphaTaskConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      taskConfigsInternal: map['taskConfigsInternal'] == null ? null : (pulumi.Input.decodeList<EnterpriseCrmFrontendsEventbusProtoTaskConfig>(map['taskConfigsInternal']!, (value) => EnterpriseCrmFrontendsEventbusProtoTaskConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      teardown: map['teardown'] == null ? null : (EnterpriseCrmEventbusProtoTeardown.fromMap((map['teardown']! as Map).cast<String, dynamic>())).input(),
      triggerConfigs: map['triggerConfigs'] == null ? null : (pulumi.Input.decodeList<GoogleCloudIntegrationsV1alphaTriggerConfig>(map['triggerConfigs']!, (value) => GoogleCloudIntegrationsV1alphaTriggerConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      triggerConfigsInternal: map['triggerConfigsInternal'] == null ? null : (pulumi.Input.decodeList<EnterpriseCrmFrontendsEventbusProtoTriggerConfig>(map['triggerConfigsInternal']!, (value) => EnterpriseCrmFrontendsEventbusProtoTriggerConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      userLabel: map['userLabel'] == null ? null : (map['userLabel']! as String).input(),
    );
  }
}

