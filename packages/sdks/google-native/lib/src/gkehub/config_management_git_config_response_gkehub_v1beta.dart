// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Git repo configuration for a single cluster.
class ConfigManagementGitConfigResponseGkehubV1beta {
  /// The Google Cloud Service Account Email used for auth when secret_type is gcpServiceAccount.
  final pulumi.Input<String> gcpServiceAccountEmail;
  /// URL for the HTTPS proxy to be used when communicating with the Git repo.
  final pulumi.Input<String> httpsProxy;
  /// The path within the Git repository that represents the top level of the repo to sync. Default: the root directory of the repository.
  final pulumi.Input<String> policyDir;
  /// Type of secret configured for access to the Git repo. Must be one of ssh, cookiefile, gcenode, token, gcpserviceaccount or none. The validation of this is case-sensitive. Required.
  final pulumi.Input<String> secretType;
  /// The branch of the repository to sync from. Default: master.
  final pulumi.Input<String> syncBranch;
  /// The URL of the Git repository to use as the source of truth.
  final pulumi.Input<String> syncRepo;
  /// Git revision (tag or hash) to check out. Default HEAD.
  final pulumi.Input<String> syncRev;
  /// Period in seconds between consecutive syncs. Default: 15.
  final pulumi.Input<String> syncWaitSecs;

  /// Creates a new [ConfigManagementGitConfigResponseGkehubV1beta].
  /// [gcpServiceAccountEmail] The Google Cloud Service Account Email used for auth when secret_type is gcpServiceAccount.
  /// [httpsProxy] URL for the HTTPS proxy to be used when communicating with the Git repo.
  /// [policyDir] The path within the Git repository that represents the top level of the repo to sync. Default: the root directory of the repository.
  /// [secretType] Type of secret configured for access to the Git repo. Must be one of ssh, cookiefile, gcenode, token, gcpserviceaccount or none. The validation of this is case-sensitive. Required.
  /// [syncBranch] The branch of the repository to sync from. Default: master.
  /// [syncRepo] The URL of the Git repository to use as the source of truth.
  /// [syncRev] Git revision (tag or hash) to check out. Default HEAD.
  /// [syncWaitSecs] Period in seconds between consecutive syncs. Default: 15.
  ConfigManagementGitConfigResponseGkehubV1beta({
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

  factory ConfigManagementGitConfigResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return ConfigManagementGitConfigResponseGkehubV1beta(
      gcpServiceAccountEmail: (map['gcpServiceAccountEmail'] as String).input(),
      httpsProxy: (map['httpsProxy'] as String).input(),
      policyDir: (map['policyDir'] as String).input(),
      secretType: (map['secretType'] as String).input(),
      syncBranch: (map['syncBranch'] as String).input(),
      syncRepo: (map['syncRepo'] as String).input(),
      syncRev: (map['syncRev'] as String).input(),
      syncWaitSecs: (map['syncWaitSecs'] as String).input(),
    );
  }
}

