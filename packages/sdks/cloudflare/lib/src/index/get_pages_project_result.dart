// ignore_for_file: unused_element, unnecessary_cast

import 'get_pages_project_build_config.dart';
import 'get_pages_project_canonical_deployment.dart';
import 'get_pages_project_deployment_configs.dart';
import 'get_pages_project_latest_deployment.dart';
import 'get_pages_project_source.dart';

/// Result data returned by getPagesProject.
class GetPagesProjectResult {
  /// Identifier.
  final String? accountId;
  /// Configs for the project build process.
  final GetPagesProjectBuildConfig? buildConfig;
  /// Most recent production deployment of the project.
  final GetPagesProjectCanonicalDeployment? canonicalDeployment;
  /// When the project was created.
  final String? createdOn;
  /// Configs for deployments in a project.
  final GetPagesProjectDeploymentConfigs? deploymentConfigs;
  /// A list of associated custom domains for the project.
  final List<String>? domains;
  /// Framework the project is using.
  final String? framework;
  /// Version of the framework the project is using.
  final String? frameworkVersion;
  /// Name of the project.
  final String? id;
  /// Most recent deployment of the project.
  final GetPagesProjectLatestDeployment? latestDeployment;
  /// Name of the project.
  final String? name;
  /// Name of the preview script.
  final String? previewScriptName;
  /// Production branch of the project. Used to identify production deployments.
  final String? productionBranch;
  /// Name of the production script.
  final String? productionScriptName;
  /// Name of the project.
  final String? projectName;
  /// Configs for the project source control.
  final GetPagesProjectSource? source;
  /// The Cloudflare subdomain associated with the project.
  final String? subdomain;
  /// Whether the project uses functions.
  final bool? usesFunctions;

  /// Creates a new [GetPagesProjectResult].
  /// [accountId] Identifier.
  /// [buildConfig] Configs for the project build process.
  /// [canonicalDeployment] Most recent production deployment of the project.
  /// [createdOn] When the project was created.
  /// [deploymentConfigs] Configs for deployments in a project.
  /// [domains] A list of associated custom domains for the project.
  /// [framework] Framework the project is using.
  /// [frameworkVersion] Version of the framework the project is using.
  /// [id] Name of the project.
  /// [latestDeployment] Most recent deployment of the project.
  /// [name] Name of the project.
  /// [previewScriptName] Name of the preview script.
  /// [productionBranch] Production branch of the project. Used to identify production deployments.
  /// [productionScriptName] Name of the production script.
  /// [projectName] Name of the project.
  /// [source] Configs for the project source control.
  /// [subdomain] The Cloudflare subdomain associated with the project.
  /// [usesFunctions] Whether the project uses functions.
  const GetPagesProjectResult({
    this.accountId,
    this.buildConfig,
    this.canonicalDeployment,
    this.createdOn,
    this.deploymentConfigs,
    this.domains,
    this.framework,
    this.frameworkVersion,
    this.id,
    this.latestDeployment,
    this.name,
    this.previewScriptName,
    this.productionBranch,
    this.productionScriptName,
    this.projectName,
    this.source,
    this.subdomain,
    this.usesFunctions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'buildConfig': ?buildConfig?.toMap(),
      'canonicalDeployment': ?canonicalDeployment?.toMap(),
      'createdOn': ?createdOn,
      'deploymentConfigs': ?deploymentConfigs?.toMap(),
      'domains': ?domains,
      'framework': ?framework,
      'frameworkVersion': ?frameworkVersion,
      'id': ?id,
      'latestDeployment': ?latestDeployment?.toMap(),
      'name': ?name,
      'previewScriptName': ?previewScriptName,
      'productionBranch': ?productionBranch,
      'productionScriptName': ?productionScriptName,
      'projectName': ?projectName,
      'source': ?source?.toMap(),
      'subdomain': ?subdomain,
      'usesFunctions': ?usesFunctions,
    };
  }

  factory GetPagesProjectResult.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      buildConfig: (() { final guardedValue = map['buildConfig']; if (guardedValue == null) return null; return GetPagesProjectBuildConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      canonicalDeployment: (() { final guardedValue = map['canonicalDeployment']; if (guardedValue == null) return null; return GetPagesProjectCanonicalDeployment.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deploymentConfigs: (() { final guardedValue = map['deploymentConfigs']; if (guardedValue == null) return null; return GetPagesProjectDeploymentConfigs.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      domains: (() { final guardedValue = map['domains']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      framework: (() { final guardedValue = map['framework']; if (guardedValue == null) return null; return guardedValue as String; })(),
      frameworkVersion: (() { final guardedValue = map['frameworkVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      latestDeployment: (() { final guardedValue = map['latestDeployment']; if (guardedValue == null) return null; return GetPagesProjectLatestDeployment.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      previewScriptName: (() { final guardedValue = map['previewScriptName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      productionBranch: (() { final guardedValue = map['productionBranch']; if (guardedValue == null) return null; return guardedValue as String; })(),
      productionScriptName: (() { final guardedValue = map['productionScriptName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      projectName: (() { final guardedValue = map['projectName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return GetPagesProjectSource.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      subdomain: (() { final guardedValue = map['subdomain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      usesFunctions: (() { final guardedValue = map['usesFunctions']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
