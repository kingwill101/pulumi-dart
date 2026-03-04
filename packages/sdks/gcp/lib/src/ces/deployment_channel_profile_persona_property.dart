// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentChannelProfilePersonaProperty {
  /// The persona of the channel.
  /// Possible values:
  /// UNKNOWN
  /// CONCISE
  /// CHATTY
  final pulumi.Input<String>? persona;

  /// Creates a new [DeploymentChannelProfilePersonaProperty].
  /// [persona] The persona of the channel.
  DeploymentChannelProfilePersonaProperty({this.persona});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'persona': ?persona};
  }

  factory DeploymentChannelProfilePersonaProperty.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeploymentChannelProfilePersonaProperty(
      persona: (() {
        final guardedValue = map['persona'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
