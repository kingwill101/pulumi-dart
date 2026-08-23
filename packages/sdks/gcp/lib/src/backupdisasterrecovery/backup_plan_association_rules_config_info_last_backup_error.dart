// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackupPlanAssociationRulesConfigInfoLastBackupError {
  /// (Output)
  /// The status code, which should be an enum value of [google.rpc.Code]
  final pulumi.Input<double>? code;
  /// (Output)
  /// A developer-facing error message, which should be in English.
  final pulumi.Input<String>? message;

  /// Creates a new [BackupPlanAssociationRulesConfigInfoLastBackupError].
  /// [code] (Output)
  /// [message] (Output)
  const BackupPlanAssociationRulesConfigInfoLastBackupError({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory BackupPlanAssociationRulesConfigInfoLastBackupError.fromMap(Map<String, dynamic> map) {
    return BackupPlanAssociationRulesConfigInfoLastBackupError(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
