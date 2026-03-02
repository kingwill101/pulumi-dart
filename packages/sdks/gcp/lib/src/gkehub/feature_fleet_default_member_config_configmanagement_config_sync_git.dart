// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeatureFleetDefaultMemberConfigConfigmanagementConfigSyncGit {
  /// The Google Cloud Service Account Email used for auth when secretType is gcpServiceAccount
  final pulumi.Input<String>? gcpServiceAccountEmail;
  /// URL for the HTTPS Proxy to be used when communicating with the Git repo
  final pulumi.Input<String>? httpsProxy;
  /// The path within the Git repository that represents the top level of the repo to sync
  final pulumi.Input<String>? policyDir;
  /// Type of secret configured for access to the Git repo
  final pulumi.Input<String> secretType;
  /// The branch of the repository to sync from. Default: master
  final pulumi.Input<String>? syncBranch;
  /// The URL of the Git repository to use as the source of truth
  final pulumi.Input<String>? syncRepo;
  /// Git revision (tag or hash) to check out. Default HEAD
  final pulumi.Input<String>? syncRev;
  /// Period in seconds between consecutive syncs. Default: 15
  final pulumi.Input<String>? syncWaitSecs;

  /// Creates a new [FeatureFleetDefaultMemberConfigConfigmanagementConfigSyncGit].
  /// [gcpServiceAccountEmail] The Google Cloud Service Account Email used for auth when secretType is gcpServiceAccount
  /// [httpsProxy] URL for the HTTPS Proxy to be used when communicating with the Git repo
  /// [policyDir] The path within the Git repository that represents the top level of the repo to sync
  /// [secretType] Type of secret configured for access to the Git repo
  /// [syncBranch] The branch of the repository to sync from. Default: master
  /// [syncRepo] The URL of the Git repository to use as the source of truth
  /// [syncRev] Git revision (tag or hash) to check out. Default HEAD
  /// [syncWaitSecs] Period in seconds between consecutive syncs. Default: 15
  FeatureFleetDefaultMemberConfigConfigmanagementConfigSyncGit({
    this.gcpServiceAccountEmail,
    this.httpsProxy,
    this.policyDir,
    required this.secretType,
    this.syncBranch,
    this.syncRepo,
    this.syncRev,
    this.syncWaitSecs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpServiceAccountEmail': ?gcpServiceAccountEmail,
      'httpsProxy': ?httpsProxy,
      'policyDir': ?policyDir,
      'secretType': secretType,
      'syncBranch': ?syncBranch,
      'syncRepo': ?syncRepo,
      'syncRev': ?syncRev,
      'syncWaitSecs': ?syncWaitSecs,
    };
  }

  factory FeatureFleetDefaultMemberConfigConfigmanagementConfigSyncGit.fromMap(Map<String, dynamic> map) {
    return FeatureFleetDefaultMemberConfigConfigmanagementConfigSyncGit(
      gcpServiceAccountEmail: map['gcpServiceAccountEmail'] == null ? null : (map['gcpServiceAccountEmail'] as String).input(),
      httpsProxy: map['httpsProxy'] == null ? null : (map['httpsProxy'] as String).input(),
      policyDir: map['policyDir'] == null ? null : (map['policyDir'] as String).input(),
      secretType: (map['secretType'] as String).input(),
      syncBranch: map['syncBranch'] == null ? null : (map['syncBranch'] as String).input(),
      syncRepo: map['syncRepo'] == null ? null : (map['syncRepo'] as String).input(),
      syncRev: map['syncRev'] == null ? null : (map['syncRev'] as String).input(),
      syncWaitSecs: map['syncWaitSecs'] == null ? null : (map['syncWaitSecs'] as String).input(),
    );
  }
}

