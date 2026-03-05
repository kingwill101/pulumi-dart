// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CurationEndpointApplicationIntegrationEndpointDetails {
  /// The API trigger ID of the Application Integration workflow.
  final pulumi.Input<String> triggerId;
  /// The endpoint URI should be a valid REST URI for triggering an Application
  /// Integration.
  /// Format:
  /// `https://integrations.googleapis.com/v1/{name=projects/*/locations/*/integrations/*}:execute`
  /// or
  /// `https://{location}-integrations.googleapis.com/v1/{name=projects/*/locations/*/integrations/*}:execute`
  final pulumi.Input<String> uri;

  /// Creates a new [CurationEndpointApplicationIntegrationEndpointDetails].
  /// [triggerId] The API trigger ID of the Application Integration workflow.
  /// [uri] The endpoint URI should be a valid REST URI for triggering an Application
  CurationEndpointApplicationIntegrationEndpointDetails({
    required this.triggerId,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'triggerId': triggerId,
      'uri': uri,
    };
  }

  factory CurationEndpointApplicationIntegrationEndpointDetails.fromMap(Map<String, dynamic> map) {
    return CurationEndpointApplicationIntegrationEndpointDetails(
      triggerId: pulumi.Input.fromValue(map['triggerId'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}

