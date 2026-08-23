// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSyncOci {
  /// The Google Cloud Service Account Email used for auth when secretType is gcpServiceAccount
  final pulumi.Input<String> gcpServiceAccountEmail;
  /// The absolute path of the directory that contains the local resources. Default: the root directory of the image
  final pulumi.Input<String> policyDir;
  /// Type of secret configured for access to the Git repo
  final pulumi.Input<String> secretType;
  /// The OCI image repository URL for the package to sync from
  final pulumi.Input<String> syncRepo;
  /// Period in seconds between consecutive syncs. Default: 15
  final pulumi.Input<String> syncWaitSecs;
  /// Version of Config Sync installed
  final pulumi.Input<String> version;

  /// Creates a new [GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSyncOci].
  /// [gcpServiceAccountEmail] The Google Cloud Service Account Email used for auth when secretType is gcpServiceAccount
  /// [policyDir] The absolute path of the directory that contains the local resources. Default: the root directory of the image
  /// [secretType] Type of secret configured for access to the Git repo
  /// [syncRepo] The OCI image repository URL for the package to sync from
  /// [syncWaitSecs] Period in seconds between consecutive syncs. Default: 15
  /// [version] Version of Config Sync installed
  const GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSyncOci({
    required this.gcpServiceAccountEmail,
    required this.policyDir,
    required this.secretType,
    required this.syncRepo,
    required this.syncWaitSecs,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpServiceAccountEmail': gcpServiceAccountEmail,
      'policyDir': policyDir,
      'secretType': secretType,
      'syncRepo': syncRepo,
      'syncWaitSecs': syncWaitSecs,
      'version': version,
    };
  }

  factory GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSyncOci.fromMap(Map<String, dynamic> map) {
    return GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSyncOci(
      gcpServiceAccountEmail: pulumi.Input.fromValue(map['gcpServiceAccountEmail'] as String),
      policyDir: pulumi.Input.fromValue(map['policyDir'] as String),
      secretType: pulumi.Input.fromValue(map['secretType'] as String),
      syncRepo: pulumi.Input.fromValue(map['syncRepo'] as String),
      syncWaitSecs: pulumi.Input.fromValue(map['syncWaitSecs'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
