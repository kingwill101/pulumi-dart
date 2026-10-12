// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBackupPlanAssociationsAssociationRulesConfigInfoLastBackupError {
  /// The status code, which should be an enum value of [google.rpc.Code].
  final pulumi.Input<int> code;
  /// A developer-facing error message.
  final pulumi.Input<String> message;

  /// Creates a new [GetBackupPlanAssociationsAssociationRulesConfigInfoLastBackupError].
  /// [code] The status code, which should be an enum value of [google.rpc.Code].
  /// [message] A developer-facing error message.
  const GetBackupPlanAssociationsAssociationRulesConfigInfoLastBackupError({
    required this.code,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'message': message,
    };
  }

  factory GetBackupPlanAssociationsAssociationRulesConfigInfoLastBackupError.fromMap(Map<String, dynamic> map) {
    return GetBackupPlanAssociationsAssociationRulesConfigInfoLastBackupError(
      code: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['code'])),
      message: pulumi.Input.fromValue(map['message'] as String),
    );
  }
}
