// ignore_for_file: unused_element, unnecessary_cast


class BareMetalClusterOsEnvironmentConfig {
  /// Whether the package repo should not be included when initializing
  /// bare metal machines.
  final bool packageRepoExcluded;

  /// Creates a new [BareMetalClusterOsEnvironmentConfig].
  /// [packageRepoExcluded] Whether the package repo should not be included when initializing
  BareMetalClusterOsEnvironmentConfig({
    required this.packageRepoExcluded,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'packageRepoExcluded': packageRepoExcluded,
    };
  }

  factory BareMetalClusterOsEnvironmentConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterOsEnvironmentConfig(
      packageRepoExcluded: map['packageRepoExcluded'] as bool,
    );
  }
}

