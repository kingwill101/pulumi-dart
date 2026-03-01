// ignore_for_file: unused_element, unnecessary_cast


/// Specifies operating system settings for cluster provisioning.
class BareMetalOsEnvironmentConfigResponse {
  /// Whether the package repo should not be included when initializing bare metal machines.
  final bool packageRepoExcluded;

  /// Creates a new [BareMetalOsEnvironmentConfigResponse].
  /// [packageRepoExcluded] Whether the package repo should not be included when initializing bare metal machines.
  BareMetalOsEnvironmentConfigResponse({
    required this.packageRepoExcluded,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'packageRepoExcluded': packageRepoExcluded,
    };
  }

  factory BareMetalOsEnvironmentConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalOsEnvironmentConfigResponse(
      packageRepoExcluded: map['packageRepoExcluded'] as bool,
    );
  }
}

