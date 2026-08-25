// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChatEngineCommonConfig {
  /// The name of the company, business or entity that is associated with the engine. Setting this may help improve LLM related features.
  final pulumi.Input<String?>? companyName;

  /// Creates a new [ChatEngineCommonConfig].
  /// [companyName] The name of the company, business or entity that is associated with the engine. Setting this may help improve LLM related features.
  const ChatEngineCommonConfig({
    this.companyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'companyName': ?companyName,
    };
  }

  factory ChatEngineCommonConfig.fromMap(Map<String, dynamic> map) {
    return ChatEngineCommonConfig(
      companyName: (() { final guardedValue = map['companyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
