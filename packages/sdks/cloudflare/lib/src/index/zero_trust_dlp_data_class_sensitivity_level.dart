// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustDlpDataClassSensitivityLevel {
  final pulumi.Input<String> groupId;
  final pulumi.Input<String> levelId;

  /// Creates a new [ZeroTrustDlpDataClassSensitivityLevel].
  /// [groupId] Required.
  /// [levelId] Required.
  const ZeroTrustDlpDataClassSensitivityLevel({
    required this.groupId,
    required this.levelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'levelId': levelId,
    };
  }

  factory ZeroTrustDlpDataClassSensitivityLevel.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpDataClassSensitivityLevel(
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      levelId: pulumi.Input.fromValue(map['levelId'] as String),
    );
  }
}
