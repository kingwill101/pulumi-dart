// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Policy creation properties.
class CreatePolicyInputProperties {
  /// The ReplicationProviderSettings.
  final pulumi.Input<dynamic>? providerSpecificInput;

  /// Creates a new [CreatePolicyInputProperties].
  /// [providerSpecificInput] The ReplicationProviderSettings.
  const CreatePolicyInputProperties({
    this.providerSpecificInput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'providerSpecificInput': ?providerSpecificInput,
    };
  }

  factory CreatePolicyInputProperties.fromMap(Map<String, dynamic> map) {
    return CreatePolicyInputProperties(
      providerSpecificInput: (() { final guardedValue = map['providerSpecificInput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
