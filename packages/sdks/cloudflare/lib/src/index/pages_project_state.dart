// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pages_project_build_config.dart';
import 'pages_project_canonical_deployment.dart';
import 'pages_project_deployment_configs.dart';
import 'pages_project_latest_deployment.dart';
import 'pages_project_source.dart';

/// Input properties used for looking up and filtering PagesProject resources.
class PagesProjectState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Configs for the project build process.
  final pulumi.Input<PagesProjectBuildConfig?>? buildConfig;
  /// Most recent production deployment of the project.
  final pulumi.Input<PagesProjectCanonicalDeployment?>? canonicalDeployment;
  /// When the project was created.
  final pulumi.Input<String?>? createdOn;
  /// Configs for deployments in a project.
  final pulumi.Input<PagesProjectDeploymentConfigs?>? deploymentConfigs;
  /// A list of associated custom domains for the project.
  final pulumi.Input<List<String>?>? domains;
  /// Framework the project is using.
  final pulumi.Input<String?>? framework;
  /// Version of the framework the project is using.
  final pulumi.Input<String?>? frameworkVersion;
  /// Most recent deployment of the project.
  final pulumi.Input<PagesProjectLatestDeployment?>? latestDeployment;
  /// Name of the project.
  final pulumi.Input<String?>? name;
  /// Name of the preview script.
  final pulumi.Input<String?>? previewScriptName;
  /// Production branch of the project. Used to identify production deployments.
  final pulumi.Input<String?>? productionBranch;
  /// Name of the production script.
  final pulumi.Input<String?>? productionScriptName;
  /// Configs for the project source control.
  final pulumi.Input<PagesProjectSource?>? source;
  /// The Cloudflare subdomain associated with the project.
  final pulumi.Input<String?>? subdomain;
  /// Whether the project uses functions.
  final pulumi.Input<bool?>? usesFunctions;

  /// Creates a new [PagesProjectState].
  /// [accountId] Identifier.
  /// [buildConfig] Configs for the project build process.
  /// [canonicalDeployment] Most recent production deployment of the project.
  /// [createdOn] When the project was created.
  /// [deploymentConfigs] Configs for deployments in a project.
  /// [domains] A list of associated custom domains for the project.
  /// [framework] Framework the project is using.
  /// [frameworkVersion] Version of the framework the project is using.
  /// [latestDeployment] Most recent deployment of the project.
  /// [name] Name of the project.
  /// [previewScriptName] Name of the preview script.
  /// [productionBranch] Production branch of the project. Used to identify production deployments.
  /// [productionScriptName] Name of the production script.
  /// [source] Configs for the project source control.
  /// [subdomain] The Cloudflare subdomain associated with the project.
  /// [usesFunctions] Whether the project uses functions.
  const PagesProjectState({
    this.accountId,
    this.buildConfig,
    this.canonicalDeployment,
    this.createdOn,
    this.deploymentConfigs,
    this.domains,
    this.framework,
    this.frameworkVersion,
    this.latestDeployment,
    this.name,
    this.previewScriptName,
    this.productionBranch,
    this.productionScriptName,
    this.source,
    this.subdomain,
    this.usesFunctions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'buildConfig': ?pulumi.Input.mapOptionalInputValue<PagesProjectBuildConfig, Map<String, dynamic>>(buildConfig, (value) => value.toMap()),
      'canonicalDeployment': ?pulumi.Input.mapOptionalInputValue<PagesProjectCanonicalDeployment, Map<String, dynamic>>(canonicalDeployment, (value) => value.toMap()),
      'createdOn': ?createdOn,
      'deploymentConfigs': ?pulumi.Input.mapOptionalInputValue<PagesProjectDeploymentConfigs, Map<String, dynamic>>(deploymentConfigs, (value) => value.toMap()),
      'domains': ?domains,
      'framework': ?framework,
      'frameworkVersion': ?frameworkVersion,
      'latestDeployment': ?pulumi.Input.mapOptionalInputValue<PagesProjectLatestDeployment, Map<String, dynamic>>(latestDeployment, (value) => value.toMap()),
      'name': ?name,
      'previewScriptName': ?previewScriptName,
      'productionBranch': ?productionBranch,
      'productionScriptName': ?productionScriptName,
      'source': ?pulumi.Input.mapOptionalInputValue<PagesProjectSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'subdomain': ?subdomain,
      'usesFunctions': ?usesFunctions,
    };
  }

  factory PagesProjectState.fromMap(Map<String, dynamic> map) {
    return PagesProjectState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      buildConfig: (() { final guardedValue = map['buildConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PagesProjectBuildConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      canonicalDeployment: (() { final guardedValue = map['canonicalDeployment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PagesProjectCanonicalDeployment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentConfigs: (() { final guardedValue = map['deploymentConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PagesProjectDeploymentConfigs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      domains: (() { final guardedValue = map['domains']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      framework: (() { final guardedValue = map['framework']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frameworkVersion: (() { final guardedValue = map['frameworkVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      latestDeployment: (() { final guardedValue = map['latestDeployment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PagesProjectLatestDeployment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      previewScriptName: (() { final guardedValue = map['previewScriptName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productionBranch: (() { final guardedValue = map['productionBranch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productionScriptName: (() { final guardedValue = map['productionScriptName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PagesProjectSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subdomain: (() { final guardedValue = map['subdomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usesFunctions: (() { final guardedValue = map['usesFunctions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
