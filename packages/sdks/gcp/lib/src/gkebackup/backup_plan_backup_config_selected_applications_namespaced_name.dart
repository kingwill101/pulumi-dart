// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackupPlanBackupConfigSelectedApplicationsNamespacedName {
  /// The name of a Kubernetes Resource.
  final pulumi.Input<String> name;
  /// The namespace of a Kubernetes Resource.
  final pulumi.Input<String> namespace;

  /// Creates a new [BackupPlanBackupConfigSelectedApplicationsNamespacedName].
  /// [name] The name of a Kubernetes Resource.
  /// [namespace] The namespace of a Kubernetes Resource.
  BackupPlanBackupConfigSelectedApplicationsNamespacedName({
    required this.name,
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'namespace': namespace,
    };
  }

  factory BackupPlanBackupConfigSelectedApplicationsNamespacedName.fromMap(Map<String, dynamic> map) {
    return BackupPlanBackupConfigSelectedApplicationsNamespacedName(
      name: (map['name'] as String).input(),
      namespace: (map['namespace'] as String).input(),
    );
  }
}

