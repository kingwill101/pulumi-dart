// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectSourceConfig {
  /// Whether to enable automatic deployments when pushing to the source repository.
  /// When disabled, no deployments (production or preview) will be triggered automatically.
  final pulumi.Input<bool> deploymentsEnabled;
  /// The owner of the repository.
  final pulumi.Input<String> owner;
  /// The owner ID of the repository.
  final pulumi.Input<String> ownerId;
  /// A list of paths that should be excluded from triggering a preview deployment. Wildcard syntax (`*`) is supported.
  final pulumi.Input<List<String>> pathExcludes;
  /// A list of paths that should be watched to trigger a preview deployment. Wildcard syntax (`*`) is supported.
  final pulumi.Input<List<String>> pathIncludes;
  /// Whether to enable PR comments.
  final pulumi.Input<bool> prCommentsEnabled;
  /// A list of branches that should not trigger a preview deployment. Wildcard syntax (`*`) is supported. Must be used with `previewDeploymentSetting` set to `custom`.
  final pulumi.Input<List<String>> previewBranchExcludes;
  /// A list of branches that should trigger a preview deployment. Wildcard syntax (`*`) is supported. Must be used with `previewDeploymentSetting` set to `custom`.
  final pulumi.Input<List<String>> previewBranchIncludes;
  /// Controls whether commits to preview branches trigger a preview deployment.
  /// Available values: "all", "none", "custom".
  final pulumi.Input<String> previewDeploymentSetting;
  /// The production branch of the repository.
  final pulumi.Input<String> productionBranch;
  /// Whether to trigger a production deployment on commits to the production branch.
  final pulumi.Input<bool> productionDeploymentsEnabled;
  /// The ID of the repository.
  final pulumi.Input<String> repoId;
  /// The name of the repository.
  final pulumi.Input<String> repoName;

  /// Creates a new [GetPagesProjectSourceConfig].
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
  const GetPagesProjectSourceConfig({
    required this.deploymentsEnabled,
    required this.owner,
    required this.ownerId,
    required this.pathExcludes,
    required this.pathIncludes,
    required this.prCommentsEnabled,
    required this.previewBranchExcludes,
    required this.previewBranchIncludes,
    required this.previewDeploymentSetting,
    required this.productionBranch,
    required this.productionDeploymentsEnabled,
    required this.repoId,
    required this.repoName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentsEnabled': deploymentsEnabled,
      'owner': owner,
      'ownerId': ownerId,
      'pathExcludes': pathExcludes,
      'pathIncludes': pathIncludes,
      'prCommentsEnabled': prCommentsEnabled,
      'previewBranchExcludes': previewBranchExcludes,
      'previewBranchIncludes': previewBranchIncludes,
      'previewDeploymentSetting': previewDeploymentSetting,
      'productionBranch': productionBranch,
      'productionDeploymentsEnabled': productionDeploymentsEnabled,
      'repoId': repoId,
      'repoName': repoName,
    };
  }

  factory GetPagesProjectSourceConfig.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectSourceConfig(
      deploymentsEnabled: pulumi.Input.fromValue(map['deploymentsEnabled'] as bool),
      owner: pulumi.Input.fromValue(map['owner'] as String),
      ownerId: pulumi.Input.fromValue(map['ownerId'] as String),
      pathExcludes: pulumi.Input.fromValue((map['pathExcludes'] as List).cast<String>()),
      pathIncludes: pulumi.Input.fromValue((map['pathIncludes'] as List).cast<String>()),
      prCommentsEnabled: pulumi.Input.fromValue(map['prCommentsEnabled'] as bool),
      previewBranchExcludes: pulumi.Input.fromValue((map['previewBranchExcludes'] as List).cast<String>()),
      previewBranchIncludes: pulumi.Input.fromValue((map['previewBranchIncludes'] as List).cast<String>()),
      previewDeploymentSetting: pulumi.Input.fromValue(map['previewDeploymentSetting'] as String),
      productionBranch: pulumi.Input.fromValue(map['productionBranch'] as String),
      productionDeploymentsEnabled: pulumi.Input.fromValue(map['productionDeploymentsEnabled'] as bool),
      repoId: pulumi.Input.fromValue(map['repoId'] as String),
      repoName: pulumi.Input.fromValue(map['repoName'] as String),
    );
  }
}
