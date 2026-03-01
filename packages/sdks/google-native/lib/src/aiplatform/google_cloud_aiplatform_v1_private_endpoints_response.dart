// ignore_for_file: unused_element, unnecessary_cast


/// PrivateEndpoints proto is used to provide paths for users to send requests privately. To send request via private service access, use predict_http_uri, explain_http_uri or health_http_uri. To send request via private service connect, use service_attachment.
class GoogleCloudAiplatformV1PrivateEndpointsResponse {
  /// Http(s) path to send explain requests.
  final String explainHttpUri;
  /// Http(s) path to send health check requests.
  final String healthHttpUri;
  /// Http(s) path to send prediction requests.
  final String predictHttpUri;
  /// The name of the service attachment resource. Populated if private service connect is enabled.
  final String serviceAttachment;

  /// Creates a new [GoogleCloudAiplatformV1PrivateEndpointsResponse].
  /// [explainHttpUri] Http(s) path to send explain requests.
  /// [healthHttpUri] Http(s) path to send health check requests.
  /// [predictHttpUri] Http(s) path to send prediction requests.
  /// [serviceAttachment] The name of the service attachment resource. Populated if private service connect is enabled.
  GoogleCloudAiplatformV1PrivateEndpointsResponse({
    required this.explainHttpUri,
    required this.healthHttpUri,
    required this.predictHttpUri,
    required this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'explainHttpUri': explainHttpUri,
      'healthHttpUri': healthHttpUri,
      'predictHttpUri': predictHttpUri,
      'serviceAttachment': serviceAttachment,
    };
  }

  factory GoogleCloudAiplatformV1PrivateEndpointsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1PrivateEndpointsResponse(
      explainHttpUri: map['explainHttpUri'] as String,
      healthHttpUri: map['healthHttpUri'] as String,
      predictHttpUri: map['predictHttpUri'] as String,
      serviceAttachment: map['serviceAttachment'] as String,
    );
  }
}

