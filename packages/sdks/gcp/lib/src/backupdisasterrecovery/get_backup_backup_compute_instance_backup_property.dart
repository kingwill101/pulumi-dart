// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBackupBackupComputeInstanceBackupProperty {
  /// Indicates if the backup was created with guest flush enabled.
  final pulumi.Input<bool> guestFlush;

  /// Creates a new [GetBackupBackupComputeInstanceBackupProperty].
  /// [guestFlush] Indicates if the backup was created with guest flush enabled.
  const GetBackupBackupComputeInstanceBackupProperty({
    required this.guestFlush,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guestFlush': guestFlush,
    };
  }

  factory GetBackupBackupComputeInstanceBackupProperty.fromMap(Map<String, dynamic> map) {
    return GetBackupBackupComputeInstanceBackupProperty(
      guestFlush: pulumi.Input.fromValue(map['guestFlush'] as bool),
    );
  }
}
