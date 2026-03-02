// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentChatbot {
  /// Background color for the chatbot button
  final pulumi.Input<String>? buttonBackgroundColor;
  /// Logo for the chatbot
  final pulumi.Input<String>? logo;
  /// Name of the chatbot
  final pulumi.Input<String>? name;
  /// Primary color for the chatbot
  final pulumi.Input<String>? primaryColor;
  /// Secondary color for the chatbot
  final pulumi.Input<String>? secondaryColor;
  /// Starting message for the chatbot
  final pulumi.Input<String>? startingMessage;

  /// Creates a new [GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentChatbot].
  /// [buttonBackgroundColor] Background color for the chatbot button
  /// [logo] Logo for the chatbot
  /// [name] Name of the chatbot
  /// [primaryColor] Primary color for the chatbot
  /// [secondaryColor] Secondary color for the chatbot
  /// [startingMessage] Starting message for the chatbot
  GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentChatbot({
    this.buttonBackgroundColor,
    this.logo,
    this.name,
    this.primaryColor,
    this.secondaryColor,
    this.startingMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buttonBackgroundColor': ?buttonBackgroundColor,
      'logo': ?logo,
      'name': ?name,
      'primaryColor': ?primaryColor,
      'secondaryColor': ?secondaryColor,
      'startingMessage': ?startingMessage,
    };
  }

  factory GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentChatbot.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentsByOpenaiApiKeyAgentParentAgentChatbot(
      buttonBackgroundColor: map['buttonBackgroundColor'] == null ? null : (map['buttonBackgroundColor']! as String).input(),
      logo: map['logo'] == null ? null : (map['logo']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      primaryColor: map['primaryColor'] == null ? null : (map['primaryColor']! as String).input(),
      secondaryColor: map['secondaryColor'] == null ? null : (map['secondaryColor']! as String).input(),
      startingMessage: map['startingMessage'] == null ? null : (map['startingMessage']! as String).input(),
    );
  }
}

