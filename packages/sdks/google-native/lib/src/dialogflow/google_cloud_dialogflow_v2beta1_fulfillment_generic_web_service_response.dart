// ignore_for_file: unused_element, unnecessary_cast


/// Represents configuration for a generic web service. Dialogflow supports two mechanisms for authentications: - Basic authentication with username and password. - Authentication with additional authentication headers. More information could be found at: https://cloud.google.com/dialogflow/docs/fulfillment-configure.
class GoogleCloudDialogflowV2beta1FulfillmentGenericWebServiceResponse {
  /// Optional. Indicates if generic web service is created through Cloud Functions integration. Defaults to false. is_cloud_function is deprecated. Cloud functions can be configured by its uri as a regular web service now.
  final bool isCloudFunction;
  /// The password for HTTP Basic authentication.
  final String password;
  /// The HTTP request headers to send together with fulfillment requests.
  final Map<String, String> requestHeaders;
  /// The fulfillment URI for receiving POST requests. It must use https protocol.
  final String uri;
  /// The user name for HTTP Basic authentication.
  final String username;

  /// Creates a new [GoogleCloudDialogflowV2beta1FulfillmentGenericWebServiceResponse].
  /// [isCloudFunction] Optional. Indicates if generic web service is created through Cloud Functions integration. Defaults to false. is_cloud_function is deprecated. Cloud functions can be configured by its uri as a regular web service now.
  /// [password] The password for HTTP Basic authentication.
  /// [requestHeaders] The HTTP request headers to send together with fulfillment requests.
  /// [uri] The fulfillment URI for receiving POST requests. It must use https protocol.
  /// [username] The user name for HTTP Basic authentication.
  GoogleCloudDialogflowV2beta1FulfillmentGenericWebServiceResponse({
    required this.isCloudFunction,
    required this.password,
    required this.requestHeaders,
    required this.uri,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isCloudFunction': isCloudFunction,
      'password': password,
      'requestHeaders': requestHeaders,
      'uri': uri,
      'username': username,
    };
  }

  factory GoogleCloudDialogflowV2beta1FulfillmentGenericWebServiceResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1FulfillmentGenericWebServiceResponse(
      isCloudFunction: map['isCloudFunction'] as bool,
      password: map['password'] as String,
      requestHeaders: (map['requestHeaders'] as Map).cast<String, String>(),
      uri: map['uri'] as String,
      username: map['username'] as String,
    );
  }
}

