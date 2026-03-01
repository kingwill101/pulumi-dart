// ignore_for_file: unused_element, unnecessary_cast


class CurationEndpointApplicationIntegrationEndpointDetails {
  /// The API trigger ID of the Application Integration workflow.
  final String triggerId;
  /// The endpoint URI should be a valid REST URI for triggering an Application
  /// Integration.
  /// Format:
  /// `https://integrations.googleapis.com/v1/{name=projects/*/locations/*/integrations/*}:execute`
  /// or
  /// `https://{location}-integrations.googleapis.com/v1/{name=projects/*/locations/*/integrations/*}:execute`
  final String uri;

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
      triggerId: map['triggerId'] as String,
      uri: map['uri'] as String,
    );
  }
}

