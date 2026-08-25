// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeatureFleetDefaultMemberConfigConfigmanagementConfigSyncOci {
  /// The Google Cloud Service Account Email used for auth when secretType is gcpServiceAccount
  final pulumi.Input<String?>? gcpServiceAccountEmail;
  /// The absolute path of the directory that contains the local resources. Default: the root directory of the image
  final pulumi.Input<String?>? policyDir;
  /// Type of secret configured for access to the Git repo
  final pulumi.Input<String> secretType;
  /// The OCI image repository URL for the package to sync from
  final pulumi.Input<String?>? syncRepo;
  /// Period in seconds between consecutive syncs. Default: 15
  final pulumi.Input<String?>? syncWaitSecs;
  /// (Optional, Deprecated)
  /// Version of Config Sync installed
  ///
  /// &gt; **Warning:** The `configmanagement.config_sync.oci.version` field is deprecated and will be removed in a future major release. Please use `configmanagement.version` field to specify the version of Config Sync installed instead.
  final pulumi.Input<String?>? version;

  /// Creates a new [FeatureFleetDefaultMemberConfigConfigmanagementConfigSyncOci].
  /// [gcpServiceAccountEmail] The Google Cloud Service Account Email used for auth when secretType is gcpServiceAccount
  /// [policyDir] The absolute path of the directory that contains the local resources. Default: the root directory of the image
  /// [secretType] Type of secret configured for access to the Git repo
  /// [syncRepo] The OCI image repository URL for the package to sync from
  /// [syncWaitSecs] Period in seconds between consecutive syncs. Default: 15
  /// [version] (Optional, Deprecated)
  const FeatureFleetDefaultMemberConfigConfigmanagementConfigSyncOci({
    this.gcpServiceAccountEmail,
    this.policyDir,
    required this.secretType,
    this.syncRepo,
    this.syncWaitSecs,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpServiceAccountEmail': ?gcpServiceAccountEmail,
      'policyDir': ?policyDir,
      'secretType': secretType,
      'syncRepo': ?syncRepo,
      'syncWaitSecs': ?syncWaitSecs,
      'version': ?version,
    };
  }

  factory FeatureFleetDefaultMemberConfigConfigmanagementConfigSyncOci.fromMap(Map<String, dynamic> map) {
    return FeatureFleetDefaultMemberConfigConfigmanagementConfigSyncOci(
      gcpServiceAccountEmail: (() { final guardedValue = map['gcpServiceAccountEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyDir: (() { final guardedValue = map['policyDir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretType: pulumi.Input.fromValue(map['secretType'] as String),
      syncRepo: (() { final guardedValue = map['syncRepo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syncWaitSecs: (() { final guardedValue = map['syncWaitSecs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
