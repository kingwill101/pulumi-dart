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
    pulumi.Output<TemplatesVersionDatabasePersistencePolicy>? databasePersistencePolicy,
    pulumi.Output<String>? description,
    pulumi.Output<List<GoogleCloudIntegrationsV1alphaErrorCatcherConfig>>? errorCatcherConfigs,
    required pulumi.Output<String> integrationtemplateId,
    pulumi.Output<String>? lastModifierEmail,
    pulumi.Output<String>? location,
    pulumi.Output<String>? parentIntegrationVersionId,
    required pulumi.Output<String> productId,
    pulumi.Output<String>? project,
    pulumi.Output<List<EnterpriseCrmFrontendsEventbusProtoTaskConfig>>? taskConfigs,
    pulumi.Output<EnterpriseCrmEventbusProtoTeardown>? teardown,
    pulumi.Output<EnterpriseCrmFrontendsEventbusProtoWorkflowParameters>? templateParameters,
    pulumi.Output<List<EnterpriseCrmFrontendsEventbusProtoTriggerConfig>>? triggerConfigs,
    pulumi.Output<String>? userLabel,
  }) :
      databasePersistencePolicy = pulumi.Input.asOptionalInput<TemplatesVersionDatabasePersistencePolicy>(databasePersistencePolicy),
      description = pulumi.Input.asOptionalInput<String>(description),
      errorCatcherConfigs = pulumi.Input.asOptionalInput<List<GoogleCloudIntegrationsV1alphaErrorCatcherConfig>>(errorCatcherConfigs),
      integrationtemplateId = pulumi.Input.asInput<String>(integrationtemplateId),
      lastModifierEmail = pulumi.Input.asOptionalInput<String>(lastModifierEmail),
      location = pulumi.Input.asOptionalInput<String>(location),
      parentIntegrationVersionId = pulumi.Input.asOptionalInput<String>(parentIntegrationVersionId),
      productId = pulumi.Input.asInput<String>(productId),
      project = pulumi.Input.asOptionalInput<String>(project),
      taskConfigs = pulumi.Input.asOptionalInput<List<EnterpriseCrmFrontendsEventbusProtoTaskConfig>>(taskConfigs),
      teardown = pulumi.Input.asOptionalInput<EnterpriseCrmEventbusProtoTeardown>(teardown),
      templateParameters = pulumi.Input.asOptionalInput<EnterpriseCrmFrontendsEventbusProtoWorkflowParameters>(templateParameters),
      triggerConfigs = pulumi.Input.asOptionalInput<List<EnterpriseCrmFrontendsEventbusProtoTriggerConfig>>(triggerConfigs),
      userLabel = pulumi.Input.asOptionalInput<String>(userLabel);

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
      databasePersistencePolicy: map['databasePersistencePolicy'] == null ? null : pulumi.Output.create<TemplatesVersionDatabasePersistencePolicy>(TemplatesVersionDatabasePersistencePolicy.fromValue(map['databasePersistencePolicy'] as String)),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      errorCatcherConfigs: map['errorCatcherConfigs'] == null ? null : pulumi.Output.create<List<GoogleCloudIntegrationsV1alphaErrorCatcherConfig>>(pulumi.Input.decodeList<GoogleCloudIntegrationsV1alphaErrorCatcherConfig>(map['errorCatcherConfigs'], (value) => GoogleCloudIntegrationsV1alphaErrorCatcherConfig.fromMap((value as Map).cast<String, dynamic>()))),
      integrationtemplateId: pulumi.Output.create<String>(map['integrationtemplateId'] as String),
      lastModifierEmail: map['lastModifierEmail'] == null ? null : pulumi.Output.create<String>(map['lastModifierEmail'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      parentIntegrationVersionId: map['parentIntegrationVersionId'] == null ? null : pulumi.Output.create<String>(map['parentIntegrationVersionId'] as String),
      productId: pulumi.Output.create<String>(map['productId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      taskConfigs: map['taskConfigs'] == null ? null : pulumi.Output.create<List<EnterpriseCrmFrontendsEventbusProtoTaskConfig>>(pulumi.Input.decodeList<EnterpriseCrmFrontendsEventbusProtoTaskConfig>(map['taskConfigs'], (value) => EnterpriseCrmFrontendsEventbusProtoTaskConfig.fromMap((value as Map).cast<String, dynamic>()))),
      teardown: map['teardown'] == null ? null : pulumi.Output.create<EnterpriseCrmEventbusProtoTeardown>(EnterpriseCrmEventbusProtoTeardown.fromMap((map['teardown'] as Map).cast<String, dynamic>())),
      templateParameters: map['templateParameters'] == null ? null : pulumi.Output.create<EnterpriseCrmFrontendsEventbusProtoWorkflowParameters>(EnterpriseCrmFrontendsEventbusProtoWorkflowParameters.fromMap((map['templateParameters'] as Map).cast<String, dynamic>())),
      triggerConfigs: map['triggerConfigs'] == null ? null : pulumi.Output.create<List<EnterpriseCrmFrontendsEventbusProtoTriggerConfig>>(pulumi.Input.decodeList<EnterpriseCrmFrontendsEventbusProtoTriggerConfig>(map['triggerConfigs'], (value) => EnterpriseCrmFrontendsEventbusProtoTriggerConfig.fromMap((value as Map).cast<String, dynamic>()))),
      userLabel: map['userLabel'] == null ? null : pulumi.Output.create<String>(map['userLabel'] as String),
    );
  }
}

