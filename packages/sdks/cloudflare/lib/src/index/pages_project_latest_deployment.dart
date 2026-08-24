// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pages_project_latest_deployment_build_config.dart';
import 'pages_project_latest_deployment_deployment_trigger.dart';
import 'pages_project_latest_deployment_env_vars.dart';
import 'pages_project_latest_deployment_latest_stage.dart';
import 'pages_project_latest_deployment_source.dart';
import 'pages_project_latest_deployment_stage.dart';

class PagesProjectLatestDeployment {
  /// A list of alias URLs pointing to this deployment.
  final pulumi.Input<List<String>?>? aliases;
  /// Configs for the project build process.
  final pulumi.Input<PagesProjectLatestDeploymentBuildConfig?>? buildConfig;
  /// When the deployment was created.
  final pulumi.Input<String?>? createdOn;
  /// Info about what caused the deployment.
  final pulumi.Input<PagesProjectLatestDeploymentDeploymentTrigger?>? deploymentTrigger;
  /// Environment variables used for builds and Pages Functions.
  final pulumi.Input<Map<String, PagesProjectLatestDeploymentEnvVars>?>? envVars;
  /// Type of deploy.
  /// Available values: "preview", "production".
  final pulumi.Input<String?>? environment;
  /// Id of the deployment.
  final pulumi.Input<String?>? id;
  /// If the deployment has been skipped.
  final pulumi.Input<bool?>? isSkipped;
  /// The status of the deployment.
  final pulumi.Input<PagesProjectLatestDeploymentLatestStage?>? latestStage;
  /// When the deployment was last modified.
  final pulumi.Input<String?>? modifiedOn;
  /// Id of the project.
  final pulumi.Input<String?>? projectId;
  /// Name of the project.
  final pulumi.Input<String?>? projectName;
  /// Short Id (8 character) of the deployment.
  final pulumi.Input<String?>? shortId;
  /// Configs for the project source control.
  final pulumi.Input<PagesProjectLatestDeploymentSource?>? source;
  /// List of past stages.
  final pulumi.Input<List<PagesProjectLatestDeploymentStage>?>? stages;
  /// The live URL to view this deployment.
  final pulumi.Input<String?>? url;
  /// Whether the deployment uses functions.
  final pulumi.Input<bool?>? usesFunctions;

  /// Creates a new [PagesProjectLatestDeployment].
  /// [aliases] A list of alias URLs pointing to this deployment.
  /// [buildConfig] Configs for the project build process.
  /// [createdOn] When the deployment was created.
  /// [deploymentTrigger] Info about what caused the deployment.
  /// [envVars] Environment variables used for builds and Pages Functions.
  /// [environment] Type of deploy.
  /// [id] Id of the deployment.
  /// [isSkipped] If the deployment has been skipped.
  /// [latestStage] The status of the deployment.
  /// [modifiedOn] When the deployment was last modified.
  /// [projectId] Id of the project.
  /// [projectName] Name of the project.
  /// [shortId] Short Id (8 character) of the deployment.
  /// [source] Configs for the project source control.
  /// [stages] List of past stages.
  /// [url] The live URL to view this deployment.
  /// [usesFunctions] Whether the deployment uses functions.
  const PagesProjectLatestDeployment({
    this.aliases,
    this.buildConfig,
    this.createdOn,
    this.deploymentTrigger,
    this.envVars,
    this.environment,
    this.id,
    this.isSkipped,
    this.latestStage,
    this.modifiedOn,
    this.projectId,
    this.projectName,
    this.shortId,
    this.source,
    this.stages,
    this.url,
    this.usesFunctions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliases': ?aliases,
      'buildConfig': ?pulumi.Input.mapOptionalInputValue<PagesProjectLatestDeploymentBuildConfig, Map<String, dynamic>>(buildConfig, (value) => value.toMap()),
      'createdOn': ?createdOn,
      'deploymentTrigger': ?pulumi.Input.mapOptionalInputValue<PagesProjectLatestDeploymentDeploymentTrigger, Map<String, dynamic>>(deploymentTrigger, (value) => value.toMap()),
      'envVars': ?pulumi.Input.mapOptionalInputValue<Map<String, PagesProjectLatestDeploymentEnvVars>, Map<String, Map<String, dynamic>>>(envVars, (value) => pulumi.Input.encodeMapValues<PagesProjectLatestDeploymentEnvVars, Map<String, dynamic>>(value, (value) => value.toMap())),
      'environment': ?environment,
      'id': ?id,
      'isSkipped': ?isSkipped,
      'latestStage': ?pulumi.Input.mapOptionalInputValue<PagesProjectLatestDeploymentLatestStage, Map<String, dynamic>>(latestStage, (value) => value.toMap()),
      'modifiedOn': ?modifiedOn,
      'projectId': ?projectId,
      'projectName': ?projectName,
      'shortId': ?shortId,
      'source': ?pulumi.Input.mapOptionalInputValue<PagesProjectLatestDeploymentSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'stages': ?pulumi.Input.mapOptionalInputValue<List<PagesProjectLatestDeploymentStage>, List<Map<String, dynamic>>>(stages, (value) => pulumi.Input.encodeList<PagesProjectLatestDeploymentStage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'url': ?url,
      'usesFunctions': ?usesFunctions,
    };
  }

  factory PagesProjectLatestDeployment.fromMap(Map<String, dynamic> map) {
    return PagesProjectLatestDeployment(
      aliases: (() { final guardedValue = map['aliases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      buildConfig: (() { final guardedValue = map['buildConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PagesProjectLatestDeploymentBuildConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentTrigger: (() { final guardedValue = map['deploymentTrigger']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PagesProjectLatestDeploymentDeploymentTrigger.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      envVars: (() { final guardedValue = map['envVars']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<PagesProjectLatestDeploymentEnvVars>(guardedValue, (value) => PagesProjectLatestDeploymentEnvVars.fromMap((value as Map).cast<String, dynamic>()))); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isSkipped: (() { final guardedValue = map['isSkipped']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      latestStage: (() { final guardedValue = map['latestStage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PagesProjectLatestDeploymentLatestStage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectName: (() { final guardedValue = map['projectName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shortId: (() { final guardedValue = map['shortId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PagesProjectLatestDeploymentSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stages: (() { final guardedValue = map['stages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PagesProjectLatestDeploymentStage>(guardedValue, (value) => PagesProjectLatestDeploymentStage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usesFunctions: (() { final guardedValue = map['usesFunctions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
