// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents configuration for a generic web service.
class GoogleCloudDialogflowCxV3WebhookGenericWebServiceResponse {
  /// Optional. Specifies a list of allowed custom CA certificates (in DER format) for HTTPS verification. This overrides the default SSL trust store. If this is empty or unspecified, Dialogflow will use Google's default trust store to verify certificates. N.B. Make sure the HTTPS server certificates are signed with "subject alt name". For instance a certificate can be self-signed using the following command, ``` openssl x509 -req -days 200 -in example.com.csr \ -signkey example.com.key \ -out example.com.crt \ -extfile <(printf "\nsubjectAltName='DNS:www.example.com'") ```
  final pulumi.Input<List<String>> allowedCaCerts;
  /// Optional. HTTP method for the flexible webhook calls. Standard webhook always uses POST.
  final pulumi.Input<String> httpMethod;
  /// Optional. Maps the values extracted from specific fields of the flexible webhook response into session parameters. - Key: session parameter name - Value: field path in the webhook response
  final pulumi.Input<Map<String, String>> parameterMapping;
  /// The password for HTTP Basic authentication.
  final pulumi.Input<String> password;
  /// Optional. Defines a custom JSON object as request body to send to flexible webhook.
  final pulumi.Input<String> requestBody;
  /// The HTTP request headers to send together with webhook requests.
  final pulumi.Input<Map<String, String>> requestHeaders;
  /// The webhook URI for receiving POST requests. It must use https protocol.
  final pulumi.Input<String> uri;
  /// The user name for HTTP Basic authentication.
  final pulumi.Input<String> username;
  /// Optional. Type of the webhook.
  final pulumi.Input<String> webhookType;

  /// Creates a new [GoogleCloudDialogflowCxV3WebhookGenericWebServiceResponse].
  /// [allowedCaCerts] Optional. Specifies a list of allowed custom CA certificates (in DER format) for HTTPS verification. This overrides the default SSL trust store. If this is empty or unspecified, Dialogflow will use Google's default trust store to verify certificates. N.B. Make sure the HTTPS server certificates are signed with "subject alt name". For instance a certificate can be self-signed using the following command, ``` openssl x509 -req -days 200 -in example.com.csr \ -signkey example.com.key \ -out example.com.crt \ -extfile <(printf "\nsubjectAltName='DNS:www.example.com'") ```
  /// [httpMethod] Optional. HTTP method for the flexible webhook calls. Standard webhook always uses POST.
  /// [parameterMapping] Optional. Maps the values extracted from specific fields of the flexible webhook response into session parameters. - Key: session parameter name - Value: field path in the webhook response
  /// [password] The password for HTTP Basic authentication.
  /// [requestBody] Optional. Defines a custom JSON object as request body to send to flexible webhook.
  /// [requestHeaders] The HTTP request headers to send together with webhook requests.
  /// [uri] The webhook URI for receiving POST requests. It must use https protocol.
  /// [username] The user name for HTTP Basic authentication.
  /// [webhookType] Optional. Type of the webhook.
  GoogleCloudDialogflowCxV3WebhookGenericWebServiceResponse({
    required this.allowedCaCerts,
    required this.httpMethod,
    required this.parameterMapping,
    required this.password,
    required this.requestBody,
    required this.requestHeaders,
    required this.uri,
    required this.username,
    required this.webhookType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedCaCerts': allowedCaCerts,
      'httpMethod': httpMethod,
      'parameterMapping': parameterMapping,
      'password': password,
      'requestBody': requestBody,
      'requestHeaders': requestHeaders,
      'uri': uri,
      'username': username,
      'webhookType': webhookType,
    };
  }

  factory GoogleCloudDialogflowCxV3WebhookGenericWebServiceResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3WebhookGenericWebServiceResponse(
      allowedCaCerts: ((map['allowedCaCerts'] as List).cast<String>()).input(),
      httpMethod: (map['httpMethod'] as String).input(),
      parameterMapping: ((map['parameterMapping'] as Map).cast<String, String>()).input(),
      password: (map['password'] as String).input(),
      requestBody: (map['requestBody'] as String).input(),
      requestHeaders: ((map['requestHeaders'] as Map).cast<String, String>()).input(),
      uri: (map['uri'] as String).input(),
      username: (map['username'] as String).input(),
      webhookType: (map['webhookType'] as String).input(),
    );
  }
}

