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
  SelfHostedIntegrationRuntime({
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
      description: map['description'] == null ? null : (map['description']! as String).input(),
      linkedInfo: map['linkedInfo'] == null ? null : (LinkedIntegrationRuntimeKeyAuthorization.fromMap((map['linkedInfo']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

