// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pages_project_build_config.dart';
import 'pages_project_deployment_configs.dart';
import 'pages_project_source.dart';

/// {@template pulumi_index_pages_project_pages_project_args_doc}
/// The set of arguments for PagesProject.
/// {@endtemplate}
/// {@macro pulumi_index_pages_project_pages_project_args_doc}
class PagesProjectArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// Configs for the project build process.
  final pulumi.Input<PagesProjectBuildConfig?>? buildConfig;
  /// Configs for deployments in a project.
  final pulumi.Input<PagesProjectDeploymentConfigs?>? deploymentConfigs;
  /// Name of the project.
  final pulumi.Input<String> name;
  /// Production branch of the project. Used to identify production deployments.
  final pulumi.Input<String> productionBranch;
  /// Configs for the project source control.
  final pulumi.Input<PagesProjectSource?>? source;

  /// Creates a new [PagesProjectArgs].
  /// [accountId] Identifier.
  /// [buildConfig] Configs for the project build process.
  /// [deploymentConfigs] Configs for deployments in a project.
  /// [name] Name of the project.
  /// [productionBranch] Production branch of the project. Used to identify production deployments.
  /// [source] Configs for the project source control.
  const PagesProjectArgs({
    required this.accountId,
    this.buildConfig,
    this.deploymentConfigs,
    required this.name,
    required this.productionBranch,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'buildConfig': ?pulumi.Input.mapOptionalInputValue<PagesProjectBuildConfig, Map<String, dynamic>>(buildConfig, (value) => value.toMap()),
      'deploymentConfigs': ?pulumi.Input.mapOptionalInputValue<PagesProjectDeploymentConfigs, Map<String, dynamic>>(deploymentConfigs, (value) => value.toMap()),
      'name': name,
      'productionBranch': productionBranch,
      'source': ?pulumi.Input.mapOptionalInputValue<PagesProjectSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory PagesProjectArgs.fromMap(Map<String, dynamic> map) {
    return PagesProjectArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      buildConfig: (() { final guardedValue = map['buildConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PagesProjectBuildConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deploymentConfigs: (() { final guardedValue = map['deploymentConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PagesProjectDeploymentConfigs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      productionBranch: pulumi.Input.fromValue(map['productionBranch'] as String),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PagesProjectSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
