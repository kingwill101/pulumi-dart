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
  const TemplatesVersionArgs({
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
      'databasePersistencePolicy': ?pulumi.Input.mapOptionalInputValue<TemplatesVersionDatabasePersistencePolicy, String>(databasePersistencePolicy, (value) => value.wireValue),
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
      databasePersistencePolicy: (() { final guardedValue = map['databasePersistencePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TemplatesVersionDatabasePersistencePolicy.fromValue(guardedValue as String)); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorCatcherConfigs: (() { final guardedValue = map['errorCatcherConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudIntegrationsV1alphaErrorCatcherConfig>(guardedValue, (value) => GoogleCloudIntegrationsV1alphaErrorCatcherConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      integrationtemplateId: pulumi.Input.fromValue(map['integrationtemplateId'] as String),
      lastModifierEmail: (() { final guardedValue = map['lastModifierEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentIntegrationVersionId: (() { final guardedValue = map['parentIntegrationVersionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productId: pulumi.Input.fromValue(map['productId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskConfigs: (() { final guardedValue = map['taskConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnterpriseCrmFrontendsEventbusProtoTaskConfig>(guardedValue, (value) => EnterpriseCrmFrontendsEventbusProtoTaskConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      teardown: (() { final guardedValue = map['teardown']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmEventbusProtoTeardown.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      templateParameters: (() { final guardedValue = map['templateParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmFrontendsEventbusProtoWorkflowParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      triggerConfigs: (() { final guardedValue = map['triggerConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnterpriseCrmFrontendsEventbusProtoTriggerConfig>(guardedValue, (value) => EnterpriseCrmFrontendsEventbusProtoTriggerConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      userLabel: (() { final guardedValue = map['userLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

