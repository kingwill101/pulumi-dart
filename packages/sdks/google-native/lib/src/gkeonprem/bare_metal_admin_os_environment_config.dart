// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies operating system operation settings for cluster provisioning.
class BareMetalAdminOsEnvironmentConfig {
  /// Whether the package repo should be added when initializing bare metal machines.
  final pulumi.Input<bool>? packageRepoExcluded;

  /// Creates a new [BareMetalAdminOsEnvironmentConfig].
  /// [packageRepoExcluded] Whether the package repo should be added when initializing bare metal machines.
  BareMetalAdminOsEnvironmentConfig({
    this.packageRepoExcluded,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'packageRepoExcluded': ?packageRepoExcluded,
    };
  }

  factory BareMetalAdminOsEnvironmentConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminOsEnvironmentConfig(
      packageRepoExcluded: map['packageRepoExcluded'] == null ? null : (map['packageRepoExcluded'] as bool).input(),
    );
  }
}

