// ignore_for_file: unused_element, unnecessary_cast


class As3DeleteApps {
  /// List of application names to delete from the specified tenant.
  ///
  /// > `delete_apps` cannot be used together with `as3_json`.
  final List<String> apps;
  /// Name of the tenant containing the apps to delete.
  final String tenantName;

  /// Creates a new [As3DeleteApps].
  /// [apps] List of application names to delete from the specified tenant.
  /// [tenantName] Name of the tenant containing the apps to delete.
  As3DeleteApps({
    required this.apps,
    required this.tenantName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apps': apps,
      'tenantName': tenantName,
    };
  }

  factory As3DeleteApps.fromMap(Map<String, dynamic> map) {
    return As3DeleteApps(
      apps: (map['apps'] as List).cast<String>(),
      tenantName: map['tenantName'] as String,
    );
  }
}

