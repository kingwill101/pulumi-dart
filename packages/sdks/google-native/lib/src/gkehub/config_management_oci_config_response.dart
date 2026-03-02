// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// OCI repo configuration for a single cluster
class ConfigManagementOciConfigResponse {
  /// The Google Cloud Service Account Email used for auth when secret_type is gcpServiceAccount.
  final pulumi.Input<String> gcpServiceAccountEmail;
  /// The absolute path of the directory that contains the local resources. Default: the root directory of the image.
  final pulumi.Input<String> policyDir;
  /// Type of secret configured for access to the Git repo.
  final pulumi.Input<String> secretType;
  /// The OCI image repository URL for the package to sync from. e.g. `LOCATION-docker.pkg.dev/PROJECT_ID/REPOSITORY_NAME/PACKAGE_NAME`.
  final pulumi.Input<String> syncRepo;
  /// Period in seconds between consecutive syncs. Default: 15.
  final pulumi.Input<String> syncWaitSecs;

  /// Creates a new [ConfigManagementOciConfigResponse].
  /// [gcpServiceAccountEmail] The Google Cloud Service Account Email used for auth when secret_type is gcpServiceAccount.
  /// [policyDir] The absolute path of the directory that contains the local resources. Default: the root directory of the image.
  /// [secretType] Type of secret configured for access to the Git repo.
  /// [syncRepo] The OCI image repository URL for the package to sync from. e.g. `LOCATION-docker.pkg.dev/PROJECT_ID/REPOSITORY_NAME/PACKAGE_NAME`.
  /// [syncWaitSecs] Period in seconds between consecutive syncs. Default: 15.
  ConfigManagementOciConfigResponse({
    required this.gcpServiceAccountEmail,
    required this.policyDir,
    required this.secretType,
    required this.syncRepo,
    required this.syncWaitSecs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpServiceAccountEmail': gcpServiceAccountEmail,
      'policyDir': policyDir,
      'secretType': secretType,
      'syncRepo': syncRepo,
      'syncWaitSecs': syncWaitSecs,
    };
  }

  factory ConfigManagementOciConfigResponse.fromMap(Map<String, dynamic> map) {
    return ConfigManagementOciConfigResponse(
      gcpServiceAccountEmail: (map['gcpServiceAccountEmail'] as String).input(),
      policyDir: (map['policyDir'] as String).input(),
      secretType: (map['secretType'] as String).input(),
      syncRepo: (map['syncRepo'] as String).input(),
      syncWaitSecs: (map['syncWaitSecs'] as String).input(),
    );
  }
}

