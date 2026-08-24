// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pages_projects_result_build_config.dart';
import 'get_pages_projects_result_canonical_deployment.dart';
import 'get_pages_projects_result_deployment_configs.dart';
import 'get_pages_projects_result_latest_deployment.dart';
import 'get_pages_projects_result_source.dart';

class GetPagesProjectsResult {
  /// Configs for the project build process.
  final pulumi.Input<GetPagesProjectsResultBuildConfig> buildConfig;
  /// Most recent production deployment of the project.
  final pulumi.Input<GetPagesProjectsResultCanonicalDeployment> canonicalDeployment;
  /// When the project was created.
  final pulumi.Input<String> createdOn;
  /// Configs for deployments in a project.
  final pulumi.Input<GetPagesProjectsResultDeploymentConfigs> deploymentConfigs;
  /// A list of associated custom domains for the project.
  final pulumi.Input<List<String>> domains;
  /// Framework the project is using.
  final pulumi.Input<String> framework;
  /// Version of the framework the project is using.
  final pulumi.Input<String> frameworkVersion;
  /// ID of the project.
  final pulumi.Input<String> id;
  /// Most recent deployment of the project.
  final pulumi.Input<GetPagesProjectsResultLatestDeployment> latestDeployment;
  /// Name of the project.
  final pulumi.Input<String> name;
  /// Name of the preview script.
  final pulumi.Input<String> previewScriptName;
  /// Production branch of the project. Used to identify production deployments.
  final pulumi.Input<String> productionBranch;
  /// Name of the production script.
  final pulumi.Input<String> productionScriptName;
  /// Configs for the project source control.
  final pulumi.Input<GetPagesProjectsResultSource> source;
  /// The Cloudflare subdomain associated with the project.
  final pulumi.Input<String> subdomain;
  /// Whether the project uses functions.
  final pulumi.Input<bool> usesFunctions;

  /// Creates a new [GetPagesProjectsResult].
  /// [buildConfig] Configs for the project build process.
  /// [canonicalDeployment] Most recent production deployment of the project.
  /// [createdOn] When the project was created.
  /// [deploymentConfigs] Configs for deployments in a project.
  /// [domains] A list of associated custom domains for the project.
  /// [framework] Framework the project is using.
  /// [frameworkVersion] Version of the framework the project is using.
  /// [id] ID of the project.
  /// [latestDeployment] Most recent deployment of the project.
  /// [name] Name of the project.
  /// [previewScriptName] Name of the preview script.
  /// [productionBranch] Production branch of the project. Used to identify production deployments.
  /// [productionScriptName] Name of the production script.
  /// [source] Configs for the project source control.
  /// [subdomain] The Cloudflare subdomain associated with the project.
  /// [usesFunctions] Whether the project uses functions.
  const GetPagesProjectsResult({
    required this.buildConfig,
    required this.canonicalDeployment,
    required this.createdOn,
    required this.deploymentConfigs,
    required this.domains,
    required this.framework,
    required this.frameworkVersion,
    required this.id,
    required this.latestDeployment,
    required this.name,
    required this.previewScriptName,
    required this.productionBranch,
    required this.productionScriptName,
    required this.source,
    required this.subdomain,
    required this.usesFunctions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildConfig': pulumi.Input.mapInputValue<GetPagesProjectsResultBuildConfig, Map<String, dynamic>>(buildConfig, (value) => value.toMap()),
      'canonicalDeployment': pulumi.Input.mapInputValue<GetPagesProjectsResultCanonicalDeployment, Map<String, dynamic>>(canonicalDeployment, (value) => value.toMap()),
      'createdOn': createdOn,
      'deploymentConfigs': pulumi.Input.mapInputValue<GetPagesProjectsResultDeploymentConfigs, Map<String, dynamic>>(deploymentConfigs, (value) => value.toMap()),
      'domains': domains,
      'framework': framework,
      'frameworkVersion': frameworkVersion,
      'id': id,
      'latestDeployment': pulumi.Input.mapInputValue<GetPagesProjectsResultLatestDeployment, Map<String, dynamic>>(latestDeployment, (value) => value.toMap()),
      'name': name,
      'previewScriptName': previewScriptName,
      'productionBranch': productionBranch,
      'productionScriptName': productionScriptName,
      'source': pulumi.Input.mapInputValue<GetPagesProjectsResultSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'subdomain': subdomain,
      'usesFunctions': usesFunctions,
    };
  }

  factory GetPagesProjectsResult.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectsResult(
      buildConfig: pulumi.Input.fromValue(GetPagesProjectsResultBuildConfig.fromMap((map['buildConfig']! as Map).cast<String, dynamic>())),
      canonicalDeployment: pulumi.Input.fromValue(GetPagesProjectsResultCanonicalDeployment.fromMap((map['canonicalDeployment']! as Map).cast<String, dynamic>())),
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      deploymentConfigs: pulumi.Input.fromValue(GetPagesProjectsResultDeploymentConfigs.fromMap((map['deploymentConfigs']! as Map).cast<String, dynamic>())),
      domains: pulumi.Input.fromValue((map['domains'] as List).cast<String>()),
      framework: pulumi.Input.fromValue(map['framework'] as String),
      frameworkVersion: pulumi.Input.fromValue(map['frameworkVersion'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      latestDeployment: pulumi.Input.fromValue(GetPagesProjectsResultLatestDeployment.fromMap((map['latestDeployment']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      previewScriptName: pulumi.Input.fromValue(map['previewScriptName'] as String),
      productionBranch: pulumi.Input.fromValue(map['productionBranch'] as String),
      productionScriptName: pulumi.Input.fromValue(map['productionScriptName'] as String),
      source: pulumi.Input.fromValue(GetPagesProjectsResultSource.fromMap((map['source']! as Map).cast<String, dynamic>())),
      subdomain: pulumi.Input.fromValue(map['subdomain'] as String),
      usesFunctions: pulumi.Input.fromValue(map['usesFunctions'] as bool),
    );
  }
}
