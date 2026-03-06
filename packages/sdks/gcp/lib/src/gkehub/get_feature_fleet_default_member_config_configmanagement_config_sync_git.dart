// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSyncGit {
  /// The Google Cloud Service Account Email used for auth when secretType is gcpServiceAccount
  final pulumi.Input<String> gcpServiceAccountEmail;
  /// URL for the HTTPS Proxy to be used when communicating with the Git repo
  final pulumi.Input<String> httpsProxy;
  /// The path within the Git repository that represents the top level of the repo to sync
  final pulumi.Input<String> policyDir;
  /// Type of secret configured for access to the Git repo
  final pulumi.Input<String> secretType;
  /// The branch of the repository to sync from. Default: master
  final pulumi.Input<String> syncBranch;
  /// The URL of the Git repository to use as the source of truth
  final pulumi.Input<String> syncRepo;
  /// Git revision (tag or hash) to check out. Default HEAD
  final pulumi.Input<String> syncRev;
  /// Period in seconds between consecutive syncs. Default: 15
  final pulumi.Input<String> syncWaitSecs;

  /// Creates a new [GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSyncGit].
  /// [gcpServiceAccountEmail] The Google Cloud Service Account Email used for auth when secretType is gcpServiceAccount
  /// [httpsProxy] URL for the HTTPS Proxy to be used when communicating with the Git repo
  /// [policyDir] The path within the Git repository that represents the top level of the repo to sync
  /// [secretType] Type of secret configured for access to the Git repo
  /// [syncBranch] The branch of the repository to sync from. Default: master
  /// [syncRepo] The URL of the Git repository to use as the source of truth
  /// [syncRev] Git revision (tag or hash) to check out. Default HEAD
  /// [syncWaitSecs] Period in seconds between consecutive syncs. Default: 15
  const GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSyncGit({
    required this.gcpServiceAccountEmail,
    required this.httpsProxy,
    required this.policyDir,
    required this.secretType,
    required this.syncBranch,
    required this.syncRepo,
    required this.syncRev,
    required this.syncWaitSecs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpServiceAccountEmail': gcpServiceAccountEmail,
      'httpsProxy': httpsProxy,
      'policyDir': policyDir,
      'secretType': secretType,
      'syncBranch': syncBranch,
      'syncRepo': syncRepo,
      'syncRev': syncRev,
      'syncWaitSecs': syncWaitSecs,
    };
  }

  factory GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSyncGit.fromMap(Map<String, dynamic> map) {
    return GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSyncGit(
      gcpServiceAccountEmail: pulumi.Input.fromValue(map['gcpServiceAccountEmail'] as String),
      httpsProxy: pulumi.Input.fromValue(map['httpsProxy'] as String),
      policyDir: pulumi.Input.fromValue(map['policyDir'] as String),
      secretType: pulumi.Input.fromValue(map['secretType'] as String),
      syncBranch: pulumi.Input.fromValue(map['syncBranch'] as String),
      syncRepo: pulumi.Input.fromValue(map['syncRepo'] as String),
      syncRev: pulumi.Input.fromValue(map['syncRev'] as String),
      syncWaitSecs: pulumi.Input.fromValue(map['syncWaitSecs'] as String),
    );
  }
}

