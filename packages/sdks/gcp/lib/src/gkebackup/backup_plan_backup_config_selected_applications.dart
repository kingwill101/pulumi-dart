// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_plan_backup_config_selected_applications_namespaced_name.dart';

class BackupPlanBackupConfigSelectedApplications {
  /// A list of namespaced Kubernetes resources.
  /// Structure is documented below.
  final pulumi.Input<List<BackupPlanBackupConfigSelectedApplicationsNamespacedName>> namespacedNames;

  /// Creates a new [BackupPlanBackupConfigSelectedApplications].
  /// [namespacedNames] A list of namespaced Kubernetes resources.
  const BackupPlanBackupConfigSelectedApplications({
    required this.namespacedNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespacedNames': pulumi.Input.mapInputValue<List<BackupPlanBackupConfigSelectedApplicationsNamespacedName>, List<Map<String, dynamic>>>(namespacedNames, (value) => pulumi.Input.encodeList<BackupPlanBackupConfigSelectedApplicationsNamespacedName, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BackupPlanBackupConfigSelectedApplications.fromMap(Map<String, dynamic> map) {
    return BackupPlanBackupConfigSelectedApplications(
      namespacedNames: pulumi.Input.fromValue(pulumi.Input.decodeList<BackupPlanBackupConfigSelectedApplicationsNamespacedName>(map['namespacedNames']!, (value) => BackupPlanBackupConfigSelectedApplicationsNamespacedName.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
