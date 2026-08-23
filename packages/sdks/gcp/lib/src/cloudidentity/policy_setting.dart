// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicySetting {
  /// The type of the Setting.
  final pulumi.Input<String> type;
  /// The value of the Setting as JSON string.
  final pulumi.Input<String> valueJson;

  /// Creates a new [PolicySetting].
  /// [type] The type of the Setting.
  /// [valueJson] The value of the Setting as JSON string.
  const PolicySetting({
    required this.type,
    required this.valueJson,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'valueJson': valueJson,
    };
  }

  factory PolicySetting.fromMap(Map<String, dynamic> map) {
    return PolicySetting(
      type: pulumi.Input.fromValue(map['type'] as String),
      valueJson: pulumi.Input.fromValue(map['valueJson'] as String),
    );
  }
}
