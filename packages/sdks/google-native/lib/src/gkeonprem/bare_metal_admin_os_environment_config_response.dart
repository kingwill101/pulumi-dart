// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies operating system operation settings for cluster provisioning.
class BareMetalAdminOsEnvironmentConfigResponse {
  /// Whether the package repo should be added when initializing bare metal machines.
  final pulumi.Input<bool> packageRepoExcluded;

  /// Creates a new [BareMetalAdminOsEnvironmentConfigResponse].
  /// [packageRepoExcluded] Whether the package repo should be added when initializing bare metal machines.
  BareMetalAdminOsEnvironmentConfigResponse({
    required this.packageRepoExcluded,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'packageRepoExcluded': packageRepoExcluded,
    };
  }

  factory BareMetalAdminOsEnvironmentConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminOsEnvironmentConfigResponse(
      packageRepoExcluded: (map['packageRepoExcluded'] as bool).input(),
    );
  }
}

