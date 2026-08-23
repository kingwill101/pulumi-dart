// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Git repo configuration for a single cluster.
class ConfigManagementGitConfig {
  /// The Google Cloud Service Account Email used for auth when secret_type is gcpServiceAccount.
  final pulumi.Input<String>? gcpServiceAccountEmail;
  /// URL for the HTTPS proxy to be used when communicating with the Git repo.
  final pulumi.Input<String>? httpsProxy;
  /// The path within the Git repository that represents the top level of the repo to sync. Default: the root directory of the repository.
  final pulumi.Input<String>? policyDir;
  /// Type of secret configured for access to the Git repo. Must be one of ssh, cookiefile, gcenode, token, gcpserviceaccount or none. The validation of this is case-sensitive. Required.
  final pulumi.Input<String>? secretType;
  /// The branch of the repository to sync from. Default: master.
  final pulumi.Input<String>? syncBranch;
  /// The URL of the Git repository to use as the source of truth.
  final pulumi.Input<String>? syncRepo;
  /// Git revision (tag or hash) to check out. Default HEAD.
  final pulumi.Input<String>? syncRev;
  /// Period in seconds between consecutive syncs. Default: 15.
  final pulumi.Input<String>? syncWaitSecs;

  /// Creates a new [ConfigManagementGitConfig].
  /// [gcpServiceAccountEmail] The Google Cloud Service Account Email used for auth when secret_type is gcpServiceAccount.
  /// [httpsProxy] URL for the HTTPS proxy to be used when communicating with the Git repo.
  /// [policyDir] The path within the Git repository that represents the top level of the repo to sync. Default: the root directory of the repository.
  /// [secretType] Type of secret configured for access to the Git repo. Must be one of ssh, cookiefile, gcenode, token, gcpserviceaccount or none. The validation of this is case-sensitive. Required.
  /// [syncBranch] The branch of the repository to sync from. Default: master.
  /// [syncRepo] The URL of the Git repository to use as the source of truth.
  /// [syncRev] Git revision (tag or hash) to check out. Default HEAD.
  /// [syncWaitSecs] Period in seconds between consecutive syncs. Default: 15.
  const ConfigManagementGitConfig({
    this.gcpServiceAccountEmail,
    this.httpsProxy,
    this.policyDir,
    this.secretType,
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
      'secretType': ?secretType,
      'syncBranch': ?syncBranch,
      'syncRepo': ?syncRepo,
      'syncRev': ?syncRev,
      'syncWaitSecs': ?syncWaitSecs,
    };
  }

  factory ConfigManagementGitConfig.fromMap(Map<String, dynamic> map) {
    return ConfigManagementGitConfig(
      gcpServiceAccountEmail: (() { final guardedValue = map['gcpServiceAccountEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpsProxy: (() { final guardedValue = map['httpsProxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyDir: (() { final guardedValue = map['policyDir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretType: (() { final guardedValue = map['secretType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syncBranch: (() { final guardedValue = map['syncBranch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syncRepo: (() { final guardedValue = map['syncRepo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syncRev: (() { final guardedValue = map['syncRev']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syncWaitSecs: (() { final guardedValue = map['syncWaitSecs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
