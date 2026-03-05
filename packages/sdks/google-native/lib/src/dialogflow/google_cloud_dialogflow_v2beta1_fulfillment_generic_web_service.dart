// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents configuration for a generic web service. Dialogflow supports two mechanisms for authentications: - Basic authentication with username and password. - Authentication with additional authentication headers. More information could be found at: https://cloud.google.com/dialogflow/docs/fulfillment-configure.
class GoogleCloudDialogflowV2beta1FulfillmentGenericWebService {
  /// Optional. Indicates if generic web service is created through Cloud Functions integration. Defaults to false. is_cloud_function is deprecated. Cloud functions can be configured by its uri as a regular web service now.
  final pulumi.Input<bool>? isCloudFunction;
  /// The password for HTTP Basic authentication.
  final pulumi.Input<String>? password;
  /// The HTTP request headers to send together with fulfillment requests.
  final pulumi.Input<Map<String, String>>? requestHeaders;
  /// The fulfillment URI for receiving POST requests. It must use https protocol.
  final pulumi.Input<String> uri;
  /// The user name for HTTP Basic authentication.
  final pulumi.Input<String>? username;

  /// Creates a new [GoogleCloudDialogflowV2beta1FulfillmentGenericWebService].
  /// [isCloudFunction] Optional. Indicates if generic web service is created through Cloud Functions integration. Defaults to false. is_cloud_function is deprecated. Cloud functions can be configured by its uri as a regular web service now.
  /// [password] The password for HTTP Basic authentication.
  /// [requestHeaders] The HTTP request headers to send together with fulfillment requests.
  /// [uri] The fulfillment URI for receiving POST requests. It must use https protocol.
  /// [username] The user name for HTTP Basic authentication.
  GoogleCloudDialogflowV2beta1FulfillmentGenericWebService({
    this.isCloudFunction,
    this.password,
    this.requestHeaders,
    required this.uri,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isCloudFunction': ?isCloudFunction,
      'password': ?password,
      'requestHeaders': ?requestHeaders,
      'uri': uri,
      'username': ?username,
    };
  }

  factory GoogleCloudDialogflowV2beta1FulfillmentGenericWebService.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1FulfillmentGenericWebService(
      isCloudFunction: (() { final guardedValue = map['isCloudFunction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestHeaders: (() { final guardedValue = map['requestHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      uri: pulumi.Input.fromValue(map['uri'] as String),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

