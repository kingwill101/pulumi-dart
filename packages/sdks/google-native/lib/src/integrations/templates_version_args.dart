// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_teardown.dart';
import 'enterprise_crm_frontends_eventbus_proto_task_config.dart';
import 'enterprise_crm_frontends_eventbus_proto_trigger_config.dart';
import 'enterprise_crm_frontends_eventbus_proto_workflow_parameters.dart';
import 'google_cloud_integrations_v1alpha_error_catcher_config.dart';
import 'templates_version_database_persistence_policy.dart';

/// {@template pulumi_integrations_v1alpha_templates_version_args_doc}
/// The set of arguments for TemplatesVersion.
/// {@endtemplate}
/// {@macro pulumi_integrations_v1alpha_templates_version_args_doc}
class TemplatesVersionArgs {
  /// Optional. Flag to disable database persistence for execution data, including event execution info, execution export info, execution metadata index and execution param index.
  final pulumi.Input<TemplatesVersionDatabasePersistencePolicy>? databasePersistencePolicy;
  /// Optional. The templateversion description. Permitted format is alphanumeric with underscores and no spaces.
  final pulumi.Input<String>? description;
  /// Optional. Error Catch Task configuration for the IntegrationTemplateVersion. It's optional.
  final pulumi.Input<List<GoogleCloudIntegrationsV1alphaErrorCatcherConfig>>? errorCatcherConfigs;
  final pulumi.Input<String> integrationtemplateId;
  /// Optional. The last modifier's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  final pulumi.Input<String>? lastModifierEmail;
  final pulumi.Input<String>? location;
  /// Optional. ID of the IntegrationVersion that was used to create this IntegrationTemplateVersion
  final pulumi.Input<String>? parentIntegrationVersionId;
  final pulumi.Input<String> productId;
  final pulumi.Input<String>? project;
  /// Optional. Task configuration for the IntegrationTemplateVersion. It's optional, but the IntegrationTemplateVersion doesn't do anything without task_configs.
  final pulumi.Input<List<EnterpriseCrmFrontendsEventbusProtoTaskConfig>>? taskConfigs;
  /// Optional. Contains a graph of tasks that will be executed before putting the event in a terminal state (SUCCEEDED/FAILED/FATAL), regardless of success or failure, similar to "finally" in code.
  final pulumi.Input<EnterpriseCrmEventbusProtoTeardown>? teardown;
  /// Optional. Parameters that are expected to be passed to the IntegrationTemplateVersion when an event is triggered. This consists of all the parameters that are expected in the IntegrationTemplateVersion execution. This gives the user the ability to provide default values, add information like PII and also provide data types of each parameter.
  final pulumi.Input<EnterpriseCrmFrontendsEventbusProtoWorkflowParameters>? templateParameters;
  /// Optional. Trigger configurations.
  final pulumi.Input<List<EnterpriseCrmFrontendsEventbusProtoTriggerConfig>>? triggerConfigs;
  /// Optional. A user-defined label that annotates an integration version. Typically, this is only set when the integration version is created.
  final pulumi.Input<String>? userLabel;

  /// Creates a new [TemplatesVersionArgs].
  /// [databasePersistencePolicy] Optional. Flag to disable database persistence for execution data, including event execution info, execution export info, execution metadata index and execution param index.
  /// [description] Optional. The templateversion description. Permitted format is alphanumeric with underscores and no spaces.
  /// [errorCatcherConfigs] Optional. Error Catch Task configuration for the IntegrationTemplateVersion. It's optional.
  /// [integrationtemplateId] Required.
  /// [lastModifierEmail] Optional. The last modifier's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  /// [location] Optional.
  /// [parentIntegrationVersionId] Optional. ID of the IntegrationVersion that was used to create this IntegrationTemplateVersion
  /// [productId] Required.
  /// [project] Optional.
  /// [taskConfigs] Optional. Task configuration for the IntegrationTemplateVersion. It's optional, but the IntegrationTemplateVersion doesn't do anything without task_configs.
  /// [teardown] Optional. Contains a graph of tasks that will be executed before putting the event in a terminal state (SUCCEEDED/FAILED/FATAL), regardless of success or failure, similar to "finally" in code.
  /// [templateParameters] Optional. Parameters that are expected to be passed to the IntegrationTemplateVersion when an event is triggered. This consists of all the parameters that are expected in the IntegrationTemplateVersion execution. This gives the user the ability to provide default values, add information like PII and also provide data types of each parameter.
  /// [triggerConfigs] Optional. Trigger configurations.
  /// [userLabel] Optional. A user-defined label that annotates an integration version. Typically, this is only set when the integration version is created.
  TemplatesVersionArgs({
    this.databasePersistencePolicy,
    this.description,
    this.errorCatcherConfigs,
    required this.integrationtemplateId,
    this.lastModifierEmail,
    this.location,
    this.parentIntegrationVersionId,
    required this.productId,
    this.project,
    this.taskConfigs,
    this.teardown,
    this.templateParameters,
    this.triggerConfigs,
    this.userLabel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databasePersistencePolicy': ?pulumi.Input.mapOptionalInputValue<TemplatesVersionDatabasePersistencePolicy, String>(databasePersistencePolicy, (value) => value.value),
      'description': ?description,
      'errorCatcherConfigs': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudIntegrationsV1alphaErrorCatcherConfig>, List<Map<String, dynamic>>>(errorCatcherConfigs, (value) => pulumi.Input.encodeList<GoogleCloudIntegrationsV1alphaErrorCatcherConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'integrationtemplateId': integrationtemplateId,
      'lastModifierEmail': ?lastModifierEmail,
      'location': ?location,
      'parentIntegrationVersionId': ?parentIntegrationVersionId,
      'productId': productId,
      'project': ?project,
      'taskConfigs': ?pulumi.Input.mapOptionalInputValue<List<EnterpriseCrmFrontendsEventbusProtoTaskConfig>, List<Map<String, dynamic>>>(taskConfigs, (value) => pulumi.Input.encodeList<EnterpriseCrmFrontendsEventbusProtoTaskConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'teardown': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoTeardown, Map<String, dynamic>>(teardown, (value) => value.toMap()),
      'templateParameters': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmFrontendsEventbusProtoWorkflowParameters, Map<String, dynamic>>(templateParameters, (value) => value.toMap()),
      'triggerConfigs': ?pulumi.Input.mapOptionalInputValue<List<EnterpriseCrmFrontendsEventbusProtoTriggerConfig>, List<Map<String, dynamic>>>(triggerConfigs, (value) => pulumi.Input.encodeList<EnterpriseCrmFrontendsEventbusProtoTriggerConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userLabel': ?userLabel,
    };
  }

  factory TemplatesVersionArgs.fromMap(Map<String, dynamic> map) {
    return TemplatesVersionArgs(
      databasePersistencePolicy: map['databasePersistencePolicy'] == null ? null : (TemplatesVersionDatabasePersistencePolicy.fromValue(map['databasePersistencePolicy']! as String)).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      errorCatcherConfigs: map['errorCatcherConfigs'] == null ? null : (pulumi.Input.decodeList<GoogleCloudIntegrationsV1alphaErrorCatcherConfig>(map['errorCatcherConfigs']!, (value) => GoogleCloudIntegrationsV1alphaErrorCatcherConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      integrationtemplateId: (map['integrationtemplateId'] as String).input(),
      lastModifierEmail: map['lastModifierEmail'] == null ? null : (map['lastModifierEmail']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      parentIntegrationVersionId: map['parentIntegrationVersionId'] == null ? null : (map['parentIntegrationVersionId']! as String).input(),
      productId: (map['productId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      taskConfigs: map['taskConfigs'] == null ? null : (pulumi.Input.decodeList<EnterpriseCrmFrontendsEventbusProtoTaskConfig>(map['taskConfigs']!, (value) => EnterpriseCrmFrontendsEventbusProtoTaskConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      teardown: map['teardown'] == null ? null : (EnterpriseCrmEventbusProtoTeardown.fromMap((map['teardown']! as Map).cast<String, dynamic>())).input(),
      templateParameters: map['templateParameters'] == null ? null : (EnterpriseCrmFrontendsEventbusProtoWorkflowParameters.fromMap((map['templateParameters']! as Map).cast<String, dynamic>())).input(),
      triggerConfigs: map['triggerConfigs'] == null ? null : (pulumi.Input.decodeList<EnterpriseCrmFrontendsEventbusProtoTriggerConfig>(map['triggerConfigs']!, (value) => EnterpriseCrmFrontendsEventbusProtoTriggerConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      userLabel: map['userLabel'] == null ? null : (map['userLabel']! as String).input(),
    );
  }
}

