// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GradientaiAgentChatbot {
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

  /// Creates a new [GradientaiAgentChatbot].
  /// [buttonBackgroundColor] Background color for the chatbot button
  /// [logo] Logo for the chatbot
  /// [name] Name of the chatbot
  /// [primaryColor] Primary color for the chatbot
  /// [secondaryColor] Secondary color for the chatbot
  /// [startingMessage] Starting message for the chatbot
  GradientaiAgentChatbot({
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

  factory GradientaiAgentChatbot.fromMap(Map<String, dynamic> map) {
    return GradientaiAgentChatbot(
      buttonBackgroundColor: (() {
        final guardedValue = map['buttonBackgroundColor'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      logo: (() {
        final guardedValue = map['logo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryColor: (() {
        final guardedValue = map['primaryColor'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryColor: (() {
        final guardedValue = map['secondaryColor'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      startingMessage: (() {
        final guardedValue = map['startingMessage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
