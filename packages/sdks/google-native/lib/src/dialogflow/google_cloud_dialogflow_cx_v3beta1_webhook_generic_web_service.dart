// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_webhook_generic_web_service_http_method.dart';
import 'google_cloud_dialogflow_cx_v3beta1_webhook_generic_web_service_webhook_type.dart';

/// Represents configuration for a generic web service.
class GoogleCloudDialogflowCxV3beta1WebhookGenericWebService {
  /// Optional. Specifies a list of allowed custom CA certificates (in DER format) for HTTPS verification. This overrides the default SSL trust store. If this is empty or unspecified, Dialogflow will use Google's default trust store to verify certificates. N.B. Make sure the HTTPS server certificates are signed with "subject alt name". For instance a certificate can be self-signed using the following command, ``` openssl x509 -req -days 200 -in example.com.csr \ -signkey example.com.key \ -out example.com.crt \ -extfile &lt;(printf "\nsubjectAltName='DNS:www.example.com'") ```
  final pulumi.Input<List<String>>? allowedCaCerts;

  /// Optional. HTTP method for the flexible webhook calls. Standard webhook always uses POST.
  final pulumi.Input<
    GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceHttpMethod
  >?
  httpMethod;

  /// Optional. Maps the values extracted from specific fields of the flexible webhook response into session parameters. - Key: session parameter name - Value: field path in the webhook response
  final pulumi.Input<Map<String, String>>? parameterMapping;

  /// The password for HTTP Basic authentication.
  final pulumi.Input<String>? password;

  /// Optional. Defines a custom JSON object as request body to send to flexible webhook.
  final pulumi.Input<String>? requestBody;

  /// The HTTP request headers to send together with webhook requests.
  final pulumi.Input<Map<String, String>>? requestHeaders;

  /// The webhook URI for receiving POST requests. It must use https protocol.
  final pulumi.Input<String> uri;

  /// The user name for HTTP Basic authentication.
  final pulumi.Input<String>? username;

  /// Optional. Type of the webhook.
  final pulumi.Input<
    GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceWebhookType
  >?
  webhookType;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1WebhookGenericWebService].
  /// [allowedCaCerts] Optional. Specifies a list of allowed custom CA certificates (in DER format) for HTTPS verification. This overrides the default SSL trust store. If this is empty or unspecified, Dialogflow will use Google's default trust store to verify certificates. N.B. Make sure the HTTPS server certificates are signed with "subject alt name". For instance a certificate can be self-signed using the following command, ``` openssl x509 -req -days 200 -in example.com.csr \ -signkey example.com.key \ -out example.com.crt \ -extfile &lt;(printf "\nsubjectAltName='DNS:www.example.com'") ```
  /// [httpMethod] Optional. HTTP method for the flexible webhook calls. Standard webhook always uses POST.
  /// [parameterMapping] Optional. Maps the values extracted from specific fields of the flexible webhook response into session parameters. - Key: session parameter name - Value: field path in the webhook response
  /// [password] The password for HTTP Basic authentication.
  /// [requestBody] Optional. Defines a custom JSON object as request body to send to flexible webhook.
  /// [requestHeaders] The HTTP request headers to send together with webhook requests.
  /// [uri] The webhook URI for receiving POST requests. It must use https protocol.
  /// [username] The user name for HTTP Basic authentication.
  /// [webhookType] Optional. Type of the webhook.
  GoogleCloudDialogflowCxV3beta1WebhookGenericWebService({
    this.allowedCaCerts,
    this.httpMethod,
    this.parameterMapping,
    this.password,
    this.requestBody,
    this.requestHeaders,
    required this.uri,
    this.username,
    this.webhookType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedCaCerts': ?allowedCaCerts,
      'httpMethod':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceHttpMethod,
            String
          >(httpMethod, (value) => value.wireValue),
      'parameterMapping': ?parameterMapping,
      'password': ?password,
      'requestBody': ?requestBody,
      'requestHeaders': ?requestHeaders,
      'uri': uri,
      'username': ?username,
      'webhookType':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceWebhookType,
            String
          >(webhookType, (value) => value.wireValue),
    };
  }

  factory GoogleCloudDialogflowCxV3beta1WebhookGenericWebService.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3beta1WebhookGenericWebService(
      allowedCaCerts: (() {
        final guardedValue = map['allowedCaCerts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      httpMethod: (() {
        final guardedValue = map['httpMethod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceHttpMethod.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      parameterMapping: (() {
        final guardedValue = map['parameterMapping'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      requestBody: (() {
        final guardedValue = map['requestBody'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      requestHeaders: (() {
        final guardedValue = map['requestHeaders'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      uri: pulumi.Input.fromValue(map['uri'] as String),
      username: (() {
        final guardedValue = map['username'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      webhookType: (() {
        final guardedValue = map['webhookType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceWebhookType.fromValue(
            guardedValue as String,
          ),
        );
      })(),
    );
  }
}
