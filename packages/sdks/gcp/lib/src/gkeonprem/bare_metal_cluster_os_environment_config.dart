// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BareMetalClusterOsEnvironmentConfig {
  /// Whether the package repo should not be included when initializing
  /// bare metal machines.
  final pulumi.Input<bool> packageRepoExcluded;

  /// Creates a new [BareMetalClusterOsEnvironmentConfig].
  /// [packageRepoExcluded] Whether the package repo should not be included when initializing
  const BareMetalClusterOsEnvironmentConfig({
    required this.packageRepoExcluded,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'packageRepoExcluded': packageRepoExcluded,
    };
  }

  factory BareMetalClusterOsEnvironmentConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterOsEnvironmentConfig(
      packageRepoExcluded: pulumi.Input.fromValue(map['packageRepoExcluded'] as bool),
    );
  }
}

