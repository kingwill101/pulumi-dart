// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_webhook_service_directory_generic_web_service_oauth_config.dart';
import 'cx_webhook_service_directory_generic_web_service_secret_versions_for_request_header.dart';
import 'cx_webhook_service_directory_generic_web_service_service_account_auth_config.dart';

class CxWebhookServiceDirectoryGenericWebService {
  /// Specifies a list of allowed custom CA certificates (in DER format) for
  /// HTTPS verification. This overrides the default SSL trust store. If this
  /// is empty or unspecified, Dialogflow will use Google's default trust store
  /// to verify certificates.
  /// N.B. Make sure the HTTPS server certificates are signed with "subject alt
  /// name". For instance a certificate can be self-signed using the following
  /// command,
  /// openssl x509 -req -days 200 -in example.com.csr \
  /// -signkey example.com.key \
  /// -out example.com.crt \
  /// -extfile &lt;(printf "\nsubjectAltName='DNS:www.example.com'")
  final pulumi.Input<List<String>?>? allowedCaCerts;
  /// HTTP method for the flexible webhook calls. Standard webhook always uses
  /// POST.
  /// Possible values are: `POST`, `GET`, `HEAD`, `PUT`, `DELETE`, `PATCH`, `OPTIONS`.
  final pulumi.Input<String?>? httpMethod;
  /// Represents configuration of OAuth client credential flow for 3rd party
  /// API authentication.
  /// Structure is documented below.
  final pulumi.Input<CxWebhookServiceDirectoryGenericWebServiceOauthConfig?>? oauthConfig;
  /// Maps the values extracted from specific fields of the flexible webhook
  /// response into session parameters.
  /// - Key: session parameter name
  /// - Value: field path in the webhook response
  final pulumi.Input<Map<String, String>?>? parameterMapping;
  /// Defines a custom JSON object as request body to send to flexible webhook.
  final pulumi.Input<String?>? requestBody;
  /// The HTTP request headers to send together with webhook requests.
  final pulumi.Input<Map<String, String>?>? requestHeaders;
  /// The SecretManager secret version resource storing the username:password
  /// pair for HTTP Basic authentication.
  /// Format: `projects/{project}/secrets/{secret}/versions/{version}`
  final pulumi.Input<String?>? secretVersionForUsernamePassword;
  /// The HTTP request headers to send together with webhook requests. Header
  /// values are stored in SecretManager secret versions.
  /// When the same header name is specified in both `requestHeaders` and
  /// `secretVersionsForRequestHeaders`, the value in
  /// `secretVersionsForRequestHeaders` will be used.
  /// Structure is documented below.
  final pulumi.Input<List<CxWebhookServiceDirectoryGenericWebServiceSecretVersionsForRequestHeader>?>? secretVersionsForRequestHeaders;
  /// Configuration for authentication using a service account.
  /// Structure is documented below.
  final pulumi.Input<CxWebhookServiceDirectoryGenericWebServiceServiceAccountAuthConfig?>? serviceAccountAuthConfig;
  /// Indicate the auth token type generated from the [Diglogflow service
  /// agent](https://cloud.google.com/iam/docs/service-agents#dialogflow-service-agent).
  /// The generated token is sent in the Authorization header.
  /// Possible values are: `NONE`, `ID_TOKEN`, `ACCESS_TOKEN`.
  final pulumi.Input<String?>? serviceAgentAuth;
  /// The webhook URI for receiving POST requests. It must use https protocol.
  final pulumi.Input<String> uri;
  /// Type of the webhook.
  /// Possible values are: `STANDARD`, `FLEXIBLE`.
  final pulumi.Input<String?>? webhookType;

  /// Creates a new [CxWebhookServiceDirectoryGenericWebService].
  /// [allowedCaCerts] Specifies a list of allowed custom CA certificates (in DER format) for
  /// [httpMethod] HTTP method for the flexible webhook calls. Standard webhook always uses
  /// [oauthConfig] Represents configuration of OAuth client credential flow for 3rd party
  /// [parameterMapping] Maps the values extracted from specific fields of the flexible webhook
  /// [requestBody] Defines a custom JSON object as request body to send to flexible webhook.
  /// [requestHeaders] The HTTP request headers to send together with webhook requests.
  /// [secretVersionForUsernamePassword] The SecretManager secret version resource storing the username:password
  /// [secretVersionsForRequestHeaders] The HTTP request headers to send together with webhook requests. Header
  /// [serviceAccountAuthConfig] Configuration for authentication using a service account.
  /// [serviceAgentAuth] Indicate the auth token type generated from the [Diglogflow service
  /// [uri] The webhook URI for receiving POST requests. It must use https protocol.
  /// [webhookType] Type of the webhook.
  const CxWebhookServiceDirectoryGenericWebService({
    this.allowedCaCerts,
    this.httpMethod,
    this.oauthConfig,
    this.parameterMapping,
    this.requestBody,
    this.requestHeaders,
    this.secretVersionForUsernamePassword,
    this.secretVersionsForRequestHeaders,
    this.serviceAccountAuthConfig,
    this.serviceAgentAuth,
    required this.uri,
    this.webhookType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedCaCerts': ?allowedCaCerts,
      'httpMethod': ?httpMethod,
      'oauthConfig': ?pulumi.Input.mapOptionalInputValue<CxWebhookServiceDirectoryGenericWebServiceOauthConfig, Map<String, dynamic>>(oauthConfig, (value) => value.toMap()),
      'parameterMapping': ?parameterMapping,
      'requestBody': ?requestBody,
      'requestHeaders': ?requestHeaders,
      'secretVersionForUsernamePassword': ?secretVersionForUsernamePassword,
      'secretVersionsForRequestHeaders': ?pulumi.Input.mapOptionalInputValue<List<CxWebhookServiceDirectoryGenericWebServiceSecretVersionsForRequestHeader>, List<Map<String, dynamic>>>(secretVersionsForRequestHeaders, (value) => pulumi.Input.encodeList<CxWebhookServiceDirectoryGenericWebServiceSecretVersionsForRequestHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceAccountAuthConfig': ?pulumi.Input.mapOptionalInputValue<CxWebhookServiceDirectoryGenericWebServiceServiceAccountAuthConfig, Map<String, dynamic>>(serviceAccountAuthConfig, (value) => value.toMap()),
      'serviceAgentAuth': ?serviceAgentAuth,
      'uri': uri,
      'webhookType': ?webhookType,
    };
  }

  factory CxWebhookServiceDirectoryGenericWebService.fromMap(Map<String, dynamic> map) {
    return CxWebhookServiceDirectoryGenericWebService(
      allowedCaCerts: (() { final guardedValue = map['allowedCaCerts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      httpMethod: (() { final guardedValue = map['httpMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauthConfig: (() { final guardedValue = map['oauthConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxWebhookServiceDirectoryGenericWebServiceOauthConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parameterMapping: (() { final guardedValue = map['parameterMapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      requestBody: (() { final guardedValue = map['requestBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestHeaders: (() { final guardedValue = map['requestHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      secretVersionForUsernamePassword: (() { final guardedValue = map['secretVersionForUsernamePassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretVersionsForRequestHeaders: (() { final guardedValue = map['secretVersionsForRequestHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CxWebhookServiceDirectoryGenericWebServiceSecretVersionsForRequestHeader>(guardedValue, (value) => CxWebhookServiceDirectoryGenericWebServiceSecretVersionsForRequestHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serviceAccountAuthConfig: (() { final guardedValue = map['serviceAccountAuthConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxWebhookServiceDirectoryGenericWebServiceServiceAccountAuthConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceAgentAuth: (() { final guardedValue = map['serviceAgentAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: pulumi.Input.fromValue(map['uri'] as String),
      webhookType: (() { final guardedValue = map['webhookType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
