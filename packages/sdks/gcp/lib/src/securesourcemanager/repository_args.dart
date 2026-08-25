// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_initial_config.dart';
import 'repository_scan_config.dart';

/// {@template pulumi_securesourcemanager_repository_repository_args_doc}
/// The set of arguments for Repository.
/// {@endtemplate}
/// {@macro pulumi_securesourcemanager_repository_repository_args_doc}
class RepositoryArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to PREVENT.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Description of the repository, which cannot exceed 500 characters.
  final pulumi.Input<String?>? description;
  /// Initial configurations for the repository.
  /// Structure is documented below.
  final pulumi.Input<RepositoryInitialConfig?>? initialConfig;
  /// The name of the instance in which the repository is hosted.
  final pulumi.Input<String> instance;
  /// The location for the Repository.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The ID for the Repository.
  final pulumi.Input<String> repositoryId;
  /// Provides configuration for scanning.
  /// Structure is documented below.
  final pulumi.Input<RepositoryScanConfig?>? scanConfig;
  /// Repository level service account.
  final pulumi.Input<String?>? serviceAccount;

  /// Creates a new [RepositoryArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to PREVENT.
  /// [description] Description of the repository, which cannot exceed 500 characters.
  /// [initialConfig] Initial configurations for the repository.
  /// [instance] The name of the instance in which the repository is hosted.
  /// [location] The location for the Repository.
  /// [project] The ID of the project in which the resource belongs.
  /// [repositoryId] The ID for the Repository.
  /// [scanConfig] Provides configuration for scanning.
  /// [serviceAccount] Repository level service account.
  const RepositoryArgs({
    this.deletionPolicy,
    this.description,
    this.initialConfig,
    required this.instance,
    required this.location,
    this.project,
    required this.repositoryId,
    this.scanConfig,
    this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'initialConfig': ?pulumi.Input.mapOptionalInputValue<RepositoryInitialConfig, Map<String, dynamic>>(initialConfig, (value) => value.toMap()),
      'instance': instance,
      'location': location,
      'project': ?project,
      'repositoryId': repositoryId,
      'scanConfig': ?pulumi.Input.mapOptionalInputValue<RepositoryScanConfig, Map<String, dynamic>>(scanConfig, (value) => value.toMap()),
      'serviceAccount': ?serviceAccount,
    };
  }

  factory RepositoryArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initialConfig: (() { final guardedValue = map['initialConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepositoryInitialConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryId: pulumi.Input.fromValue(map['repositoryId'] as String),
      scanConfig: (() { final guardedValue = map['scanConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepositoryScanConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
