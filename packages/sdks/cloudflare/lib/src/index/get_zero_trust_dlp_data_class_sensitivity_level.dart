// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDlpDataClassSensitivityLevel {
  final pulumi.Input<String> groupId;
  final pulumi.Input<String> levelId;

  /// Creates a new [GetZeroTrustDlpDataClassSensitivityLevel].
  /// [groupId] Required.
  /// [levelId] Required.
  const GetZeroTrustDlpDataClassSensitivityLevel({
    required this.groupId,
    required this.levelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'levelId': levelId,
    };
  }

  factory GetZeroTrustDlpDataClassSensitivityLevel.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpDataClassSensitivityLevel(
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      levelId: pulumi.Input.fromValue(map['levelId'] as String),
    );
  }
}
