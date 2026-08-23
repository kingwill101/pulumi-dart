// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_integration_runtime_key_authorization.dart';

/// Self-hosted integration runtime.
class SelfHostedIntegrationRuntime {
  /// Integration runtime description.
  final pulumi.Input<String>? description;
  /// Linked integration runtime type from data factory
  final pulumi.Input<LinkedIntegrationRuntimeKeyAuthorization>? linkedInfo;
  /// The type of integration runtime.
  /// Expected value is 'SelfHosted'.
  final pulumi.Input<String> type;

  /// Creates a new [SelfHostedIntegrationRuntime].
  /// [description] Integration runtime description.
  /// [linkedInfo] Linked integration runtime type from data factory
  /// [type] The type of integration runtime.
  const SelfHostedIntegrationRuntime({
    this.description,
    this.linkedInfo,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'linkedInfo': ?pulumi.Input.mapOptionalInputValue<LinkedIntegrationRuntimeKeyAuthorization, Map<String, dynamic>>(linkedInfo, (value) => value.toMap()),
      'type': type,
    };
  }

  factory SelfHostedIntegrationRuntime.fromMap(Map<String, dynamic> map) {
    return SelfHostedIntegrationRuntime(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkedInfo: (() { final guardedValue = map['linkedInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinkedIntegrationRuntimeKeyAuthorization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
