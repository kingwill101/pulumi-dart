// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentAfterAgentCallback {
  /// Human-readable description of the callback.
  final pulumi.Input<String>? description;
  /// Whether the callback is disabled. Disabled callbacks are ignored by the
  /// agent.
  final pulumi.Input<bool>? disabled;
  /// The python code to execute for the callback.
  final pulumi.Input<String> pythonCode;

  /// Creates a new [AgentAfterAgentCallback].
  /// [description] Human-readable description of the callback.
  /// [disabled] Whether the callback is disabled. Disabled callbacks are ignored by the
  /// [pythonCode] The python code to execute for the callback.
  AgentAfterAgentCallback({
    this.description,
    this.disabled,
    required this.pythonCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'disabled': ?disabled,
      'pythonCode': pythonCode,
    };
  }

  factory AgentAfterAgentCallback.fromMap(Map<String, dynamic> map) {
    return AgentAfterAgentCallback(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      disabled: map['disabled'] == null ? null : (map['disabled']! as bool).input(),
      pythonCode: (map['pythonCode'] as String).input(),
    );
  }
}

