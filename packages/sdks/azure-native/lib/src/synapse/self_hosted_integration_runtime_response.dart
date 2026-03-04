// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_integration_runtime_key_authorization_response.dart';

/// Self-hosted integration runtime.
class SelfHostedIntegrationRuntimeResponse {
  /// Integration runtime description.
  final pulumi.Input<String>? description;

  /// Linked integration runtime type from data factory
  final pulumi.Input<LinkedIntegrationRuntimeKeyAuthorizationResponse>?
  linkedInfo;

  /// The type of integration runtime.
  /// Expected value is 'SelfHosted'.
  final pulumi.Input<String> type;

  /// Creates a new [SelfHostedIntegrationRuntimeResponse].
  /// [description] Integration runtime description.
  /// [linkedInfo] Linked integration runtime type from data factory
  /// [type] The type of integration runtime.
  SelfHostedIntegrationRuntimeResponse({
    this.description,
    this.linkedInfo,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'linkedInfo':
          ?pulumi.Input.mapOptionalInputValue<
            LinkedIntegrationRuntimeKeyAuthorizationResponse,
            Map<String, dynamic>
          >(linkedInfo, (value) => value.toMap()),
      'type': type,
    };
  }

  factory SelfHostedIntegrationRuntimeResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return SelfHostedIntegrationRuntimeResponse(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      linkedInfo: (() {
        final guardedValue = map['linkedInfo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LinkedIntegrationRuntimeKeyAuthorizationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
