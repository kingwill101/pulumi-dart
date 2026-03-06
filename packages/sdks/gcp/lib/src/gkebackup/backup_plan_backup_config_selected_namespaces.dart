// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackupPlanBackupConfigSelectedNamespaces {
  /// A list of Kubernetes Namespaces.
  final pulumi.Input<List<String>> namespaces;

  /// Creates a new [BackupPlanBackupConfigSelectedNamespaces].
  /// [namespaces] A list of Kubernetes Namespaces.
  const BackupPlanBackupConfigSelectedNamespaces({
    required this.namespaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaces': namespaces,
    };
  }

  factory BackupPlanBackupConfigSelectedNamespaces.fromMap(Map<String, dynamic> map) {
    return BackupPlanBackupConfigSelectedNamespaces(
      namespaces: pulumi.Input.fromValue((map['namespaces'] as List).cast<String>()),
    );
  }
}

