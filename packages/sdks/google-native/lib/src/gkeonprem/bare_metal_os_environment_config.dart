// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies operating system settings for cluster provisioning.
class BareMetalOsEnvironmentConfig {
  /// Whether the package repo should not be included when initializing bare metal machines.
  final pulumi.Input<bool>? packageRepoExcluded;

  /// Creates a new [BareMetalOsEnvironmentConfig].
  /// [packageRepoExcluded] Whether the package repo should not be included when initializing bare metal machines.
  BareMetalOsEnvironmentConfig({
    this.packageRepoExcluded,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'packageRepoExcluded': ?packageRepoExcluded,
    };
  }

  factory BareMetalOsEnvironmentConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalOsEnvironmentConfig(
      packageRepoExcluded: (() { final guardedValue = map['packageRepoExcluded']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

