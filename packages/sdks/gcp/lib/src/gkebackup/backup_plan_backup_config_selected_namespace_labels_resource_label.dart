// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackupPlanBackupConfigSelectedNamespaceLabelsResourceLabel {
  /// The key of the kubernetes label.
  final pulumi.Input<String> key;
  /// The value of the Label.
  final pulumi.Input<String> value;

  /// Creates a new [BackupPlanBackupConfigSelectedNamespaceLabelsResourceLabel].
  /// [key] The key of the kubernetes label.
  /// [value] The value of the Label.
  BackupPlanBackupConfigSelectedNamespaceLabelsResourceLabel({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory BackupPlanBackupConfigSelectedNamespaceLabelsResourceLabel.fromMap(Map<String, dynamic> map) {
    return BackupPlanBackupConfigSelectedNamespaceLabelsResourceLabel(
      key: (map['key'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

