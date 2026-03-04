// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class As3DeleteApps {
  /// List of application names to delete from the specified tenant.
  ///
  /// &gt; `delete_apps` cannot be used together with `as3_json`.
  final pulumi.Input<List<String>> apps;

  /// Name of the tenant containing the apps to delete.
  final pulumi.Input<String> tenantName;

  /// Creates a new [As3DeleteApps].
  /// [apps] List of application names to delete from the specified tenant.
  /// [tenantName] Name of the tenant containing the apps to delete.
  As3DeleteApps({required this.apps, required this.tenantName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'apps': apps, 'tenantName': tenantName};
  }

  factory As3DeleteApps.fromMap(Map<String, dynamic> map) {
    return As3DeleteApps(
      apps: pulumi.Input.fromValue((map['apps'] as List).cast<String>()),
      tenantName: pulumi.Input.fromValue(map['tenantName'] as String),
    );
  }
}
