// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PagesProjectSourceConfig {
  /// Whether to enable automatic deployments when pushing to the source repository.
  /// When disabled, no deployments (production or preview) will be triggered automatically.
  final pulumi.Input<bool?>? deploymentsEnabled;
  /// The owner of the repository.
  final pulumi.Input<String?>? owner;
  /// The owner ID of the repository.
  final pulumi.Input<String?>? ownerId;
  /// A list of paths that should be excluded from triggering a preview deployment. Wildcard syntax (`*`) is supported.
  final pulumi.Input<List<String>?>? pathExcludes;
  /// A list of paths that should be watched to trigger a preview deployment. Wildcard syntax (`*`) is supported.
  final pulumi.Input<List<String>?>? pathIncludes;
  /// Whether to enable PR comments.
  final pulumi.Input<bool?>? prCommentsEnabled;
  /// A list of branches that should not trigger a preview deployment. Wildcard syntax (`*`) is supported. Must be used with `previewDeploymentSetting` set to `custom`.
  final pulumi.Input<List<String>?>? previewBranchExcludes;
  /// A list of branches that should trigger a preview deployment. Wildcard syntax (`*`) is supported. Must be used with `previewDeploymentSetting` set to `custom`.
  final pulumi.Input<List<String>?>? previewBranchIncludes;
  /// Controls whether commits to preview branches trigger a preview deployment.
  /// Available values: "all", "none", "custom".
  final pulumi.Input<String?>? previewDeploymentSetting;
  /// The production branch of the repository.
  final pulumi.Input<String?>? productionBranch;
  /// Whether to trigger a production deployment on commits to the production branch.
  final pulumi.Input<bool?>? productionDeploymentsEnabled;
  /// The ID of the repository.
  final pulumi.Input<String?>? repoId;
  /// The name of the repository.
  final pulumi.Input<String?>? repoName;

  /// Creates a new [PagesProjectSourceConfig].
  /// [deploymentsEnabled] Whether to enable automatic deployments when pushing to the source repository.
  /// [owner] The owner of the repository.
  /// [ownerId] The owner ID of the repository.
  /// [pathExcludes] A list of paths that should be excluded from triggering a preview deployment. Wildcard syntax (`*`) is supported.
  /// [pathIncludes] A list of paths that should be watched to trigger a preview deployment. Wildcard syntax (`*`) is supported.
  /// [prCommentsEnabled] Whether to enable PR comments.
  /// [previewBranchExcludes] A list of branches that should not trigger a preview deployment. Wildcard syntax (`*`) is supported. Must be used with `previewDeploymentSetting` set to `custom`.
  /// [previewBranchIncludes] A list of branches that should trigger a preview deployment. Wildcard syntax (`*`) is supported. Must be used with `previewDeploymentSetting` set to `custom`.
  /// [previewDeploymentSetting] Controls whether commits to preview branches trigger a preview deployment.
  /// [productionBranch] The production branch of the repository.
  /// [productionDeploymentsEnabled] Whether to trigger a production deployment on commits to the production branch.
  /// [repoId] The ID of the repository.
  /// [repoName] The name of the repository.
  const PagesProjectSourceConfig({
    this.deploymentsEnabled,
    this.owner,
    this.ownerId,
    this.pathExcludes,
    this.pathIncludes,
    this.prCommentsEnabled,
    this.previewBranchExcludes,
    this.previewBranchIncludes,
    this.previewDeploymentSetting,
    this.productionBranch,
    this.productionDeploymentsEnabled,
    this.repoId,
    this.repoName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentsEnabled': ?deploymentsEnabled,
      'owner': ?owner,
      'ownerId': ?ownerId,
      'pathExcludes': ?pathExcludes,
      'pathIncludes': ?pathIncludes,
      'prCommentsEnabled': ?prCommentsEnabled,
      'previewBranchExcludes': ?previewBranchExcludes,
      'previewBranchIncludes': ?previewBranchIncludes,
      'previewDeploymentSetting': ?previewDeploymentSetting,
      'productionBranch': ?productionBranch,
      'productionDeploymentsEnabled': ?productionDeploymentsEnabled,
      'repoId': ?repoId,
      'repoName': ?repoName,
    };
  }

  factory PagesProjectSourceConfig.fromMap(Map<String, dynamic> map) {
    return PagesProjectSourceConfig(
      deploymentsEnabled: (() { final guardedValue = map['deploymentsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pathExcludes: (() { final guardedValue = map['pathExcludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      pathIncludes: (() { final guardedValue = map['pathIncludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      prCommentsEnabled: (() { final guardedValue = map['prCommentsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      previewBranchExcludes: (() { final guardedValue = map['previewBranchExcludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      previewBranchIncludes: (() { final guardedValue = map['previewBranchIncludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      previewDeploymentSetting: (() { final guardedValue = map['previewDeploymentSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productionBranch: (() { final guardedValue = map['productionBranch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productionDeploymentsEnabled: (() { final guardedValue = map['productionDeploymentsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      repoId: (() { final guardedValue = map['repoId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repoName: (() { final guardedValue = map['repoName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
