// ignore_for_file: unused_element, unnecessary_cast


class FeatureFleetDefaultMemberConfigConfigmanagementConfigSyncGit {
  /// The Google Cloud Service Account Email used for auth when secretType is gcpServiceAccount
  final String? gcpServiceAccountEmail;
  /// URL for the HTTPS Proxy to be used when communicating with the Git repo
  final String? httpsProxy;
  /// The path within the Git repository that represents the top level of the repo to sync
  final String? policyDir;
  /// Type of secret configured for access to the Git repo
  final String secretType;
  /// The branch of the repository to sync from. Default: master
  final String? syncBranch;
  /// The URL of the Git repository to use as the source of truth
  final String? syncRepo;
  /// Git revision (tag or hash) to check out. Default HEAD
  final String? syncRev;
  /// Period in seconds between consecutive syncs. Default: 15
  final String? syncWaitSecs;

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
      gcpServiceAccountEmail: map['gcpServiceAccountEmail'] == null ? null : map['gcpServiceAccountEmail'] as String,
      httpsProxy: map['httpsProxy'] == null ? null : map['httpsProxy'] as String,
      policyDir: map['policyDir'] == null ? null : map['policyDir'] as String,
      secretType: map['secretType'] as String,
      syncBranch: map['syncBranch'] == null ? null : map['syncBranch'] as String,
      syncRepo: map['syncRepo'] == null ? null : map['syncRepo'] as String,
      syncRev: map['syncRev'] == null ? null : map['syncRev'] as String,
      syncWaitSecs: map['syncWaitSecs'] == null ? null : map['syncWaitSecs'] as String,
    );
  }
}

