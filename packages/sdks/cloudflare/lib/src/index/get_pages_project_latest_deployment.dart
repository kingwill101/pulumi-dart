// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pages_project_latest_deployment_build_config.dart';
import 'get_pages_project_latest_deployment_deployment_trigger.dart';
import 'get_pages_project_latest_deployment_env_vars.dart';
import 'get_pages_project_latest_deployment_latest_stage.dart';
import 'get_pages_project_latest_deployment_source.dart';
import 'get_pages_project_latest_deployment_stage.dart';

class GetPagesProjectLatestDeployment {
  /// A list of alias URLs pointing to this deployment.
  final pulumi.Input<List<String>> aliases;
  /// Configs for the project build process.
  final pulumi.Input<GetPagesProjectLatestDeploymentBuildConfig> buildConfig;
  /// When the deployment was created.
  final pulumi.Input<String> createdOn;
  /// Info about what caused the deployment.
  final pulumi.Input<GetPagesProjectLatestDeploymentDeploymentTrigger> deploymentTrigger;
  /// Environment variables used for builds and Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectLatestDeploymentEnvVars>> envVars;
  /// Type of deploy.
  /// Available values: "preview", "production".
  final pulumi.Input<String> environment;
  /// Id of the deployment.
  final pulumi.Input<String> id;
  /// If the deployment has been skipped.
  final pulumi.Input<bool> isSkipped;
  /// The status of the deployment.
  final pulumi.Input<GetPagesProjectLatestDeploymentLatestStage> latestStage;
  /// When the deployment was last modified.
  final pulumi.Input<String> modifiedOn;
  /// Id of the project.
  final pulumi.Input<String> projectId;
  /// Name of the project.
  final pulumi.Input<String> projectName;
  /// Short Id (8 character) of the deployment.
  final pulumi.Input<String> shortId;
  /// Why the deployment was skipped.
  /// Available values: "commit*message", "preview*deployments*disabled", "production*deployments*disabled", "path*config", "branch*config", "pages*to*workers*conversion".
  final pulumi.Input<String> skipReason;
  /// Configs for the project source control.
  final pulumi.Input<GetPagesProjectLatestDeploymentSource> source;
  /// List of past stages.
  final pulumi.Input<List<GetPagesProjectLatestDeploymentStage>> stages;
  /// The live URL to view this deployment.
  final pulumi.Input<String> url;
  /// Whether the deployment uses functions.
  final pulumi.Input<bool> usesFunctions;

  /// Creates a new [GetPagesProjectLatestDeployment].
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
  /// [skipReason] Why the deployment was skipped.
  /// [source] Configs for the project source control.
  /// [stages] List of past stages.
  /// [url] The live URL to view this deployment.
  /// [usesFunctions] Whether the deployment uses functions.
  const GetPagesProjectLatestDeployment({
    required this.aliases,
    required this.buildConfig,
    required this.createdOn,
    required this.deploymentTrigger,
    required this.envVars,
    required this.environment,
    required this.id,
    required this.isSkipped,
    required this.latestStage,
    required this.modifiedOn,
    required this.projectId,
    required this.projectName,
    required this.shortId,
    required this.skipReason,
    required this.source,
    required this.stages,
    required this.url,
    required this.usesFunctions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliases': aliases,
      'buildConfig': pulumi.Input.mapInputValue<GetPagesProjectLatestDeploymentBuildConfig, Map<String, dynamic>>(buildConfig, (value) => value.toMap()),
      'createdOn': createdOn,
      'deploymentTrigger': pulumi.Input.mapInputValue<GetPagesProjectLatestDeploymentDeploymentTrigger, Map<String, dynamic>>(deploymentTrigger, (value) => value.toMap()),
      'envVars': pulumi.Input.mapInputValue<Map<String, GetPagesProjectLatestDeploymentEnvVars>, Map<String, Map<String, dynamic>>>(envVars, (value) => pulumi.Input.encodeMapValues<GetPagesProjectLatestDeploymentEnvVars, Map<String, dynamic>>(value, (value) => value.toMap())),
      'environment': environment,
      'id': id,
      'isSkipped': isSkipped,
      'latestStage': pulumi.Input.mapInputValue<GetPagesProjectLatestDeploymentLatestStage, Map<String, dynamic>>(latestStage, (value) => value.toMap()),
      'modifiedOn': modifiedOn,
      'projectId': projectId,
      'projectName': projectName,
      'shortId': shortId,
      'skipReason': skipReason,
      'source': pulumi.Input.mapInputValue<GetPagesProjectLatestDeploymentSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'stages': pulumi.Input.mapInputValue<List<GetPagesProjectLatestDeploymentStage>, List<Map<String, dynamic>>>(stages, (value) => pulumi.Input.encodeList<GetPagesProjectLatestDeploymentStage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'url': url,
      'usesFunctions': usesFunctions,
    };
  }

  factory GetPagesProjectLatestDeployment.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectLatestDeployment(
      aliases: pulumi.Input.fromValue((map['aliases'] as List).cast<String>()),
      buildConfig: pulumi.Input.fromValue(GetPagesProjectLatestDeploymentBuildConfig.fromMap((map['buildConfig']! as Map).cast<String, dynamic>())),
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      deploymentTrigger: pulumi.Input.fromValue(GetPagesProjectLatestDeploymentDeploymentTrigger.fromMap((map['deploymentTrigger']! as Map).cast<String, dynamic>())),
      envVars: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectLatestDeploymentEnvVars>(map['envVars']!, (value) => GetPagesProjectLatestDeploymentEnvVars.fromMap((value as Map).cast<String, dynamic>()))),
      environment: pulumi.Input.fromValue(map['environment'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      isSkipped: pulumi.Input.fromValue(map['isSkipped'] as bool),
      latestStage: pulumi.Input.fromValue(GetPagesProjectLatestDeploymentLatestStage.fromMap((map['latestStage']! as Map).cast<String, dynamic>())),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      shortId: pulumi.Input.fromValue(map['shortId'] as String),
      skipReason: pulumi.Input.fromValue(map['skipReason'] as String),
      source: pulumi.Input.fromValue(GetPagesProjectLatestDeploymentSource.fromMap((map['source']! as Map).cast<String, dynamic>())),
      stages: pulumi.Input.fromValue(pulumi.Input.decodeList<GetPagesProjectLatestDeploymentStage>(map['stages']!, (value) => GetPagesProjectLatestDeploymentStage.fromMap((value as Map).cast<String, dynamic>()))),
      url: pulumi.Input.fromValue(map['url'] as String),
      usesFunctions: pulumi.Input.fromValue(map['usesFunctions'] as bool),
    );
  }
}
