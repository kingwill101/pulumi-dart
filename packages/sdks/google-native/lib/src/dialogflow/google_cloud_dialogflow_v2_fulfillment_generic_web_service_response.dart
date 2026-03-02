// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents configuration for a generic web service. Dialogflow supports two mechanisms for authentications: - Basic authentication with username and password. - Authentication with additional authentication headers. More information could be found at: https://cloud.google.com/dialogflow/docs/fulfillment-configure.
class GoogleCloudDialogflowV2FulfillmentGenericWebServiceResponse {
  /// Optional. Indicates if generic web service is created through Cloud Functions integration. Defaults to false. is_cloud_function is deprecated. Cloud functions can be configured by its uri as a regular web service now.
  final pulumi.Input<bool> isCloudFunction;
  /// Optional. The password for HTTP Basic authentication.
  final pulumi.Input<String> password;
  /// Optional. The HTTP request headers to send together with fulfillment requests.
  final pulumi.Input<Map<String, String>> requestHeaders;
  /// The fulfillment URI for receiving POST requests. It must use https protocol.
  final pulumi.Input<String> uri;
  /// Optional. The user name for HTTP Basic authentication.
  final pulumi.Input<String> username;

  /// Creates a new [GoogleCloudDialogflowV2FulfillmentGenericWebServiceResponse].
  /// [isCloudFunction] Optional. Indicates if generic web service is created through Cloud Functions integration. Defaults to false. is_cloud_function is deprecated. Cloud functions can be configured by its uri as a regular web service now.
  /// [password] Optional. The password for HTTP Basic authentication.
  /// [requestHeaders] Optional. The HTTP request headers to send together with fulfillment requests.
  /// [uri] The fulfillment URI for receiving POST requests. It must use https protocol.
  /// [username] Optional. The user name for HTTP Basic authentication.
  GoogleCloudDialogflowV2FulfillmentGenericWebServiceResponse({
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

  factory GoogleCloudDialogflowV2FulfillmentGenericWebServiceResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2FulfillmentGenericWebServiceResponse(
      isCloudFunction: (map['isCloudFunction'] as bool).input(),
      password: (map['password'] as String).input(),
      requestHeaders: ((map['requestHeaders'] as Map).cast<String, String>()).input(),
      uri: (map['uri'] as String).input(),
      username: (map['username'] as String).input(),
    );
  }
}

