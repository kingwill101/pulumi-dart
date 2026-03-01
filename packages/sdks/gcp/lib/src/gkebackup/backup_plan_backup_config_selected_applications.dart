// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_plan_backup_config_selected_applications_namespaced_name.dart';

class BackupPlanBackupConfigSelectedApplications {
  /// A list of namespaced Kubernetes resources.
  /// Structure is documented below.
  final List<BackupPlanBackupConfigSelectedApplicationsNamespacedName> namespacedNames;

  /// Creates a new [BackupPlanBackupConfigSelectedApplications].
  /// [namespacedNames] A list of namespaced Kubernetes resources.
  BackupPlanBackupConfigSelectedApplications({
    required this.namespacedNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespacedNames': pulumi.Input.encodeList<BackupPlanBackupConfigSelectedApplicationsNamespacedName, Map<String, dynamic>>(namespacedNames, (value) => value.toMap()),
    };
  }

  factory BackupPlanBackupConfigSelectedApplications.fromMap(Map<String, dynamic> map) {
    return BackupPlanBackupConfigSelectedApplications(
      namespacedNames: pulumi.Input.decodeList<BackupPlanBackupConfigSelectedApplicationsNamespacedName>(map['namespacedNames'], (value) => BackupPlanBackupConfigSelectedApplicationsNamespacedName.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

