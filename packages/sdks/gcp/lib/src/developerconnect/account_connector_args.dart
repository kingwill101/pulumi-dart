// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_connector_custom_oauth_config.dart';
import 'account_connector_provider_oauth_config.dart';
import 'account_connector_proxy_config.dart';

/// {@template pulumi_developerconnect_account_connector_account_connector_args_doc}
/// The set of arguments for AccountConnector.
/// {@endtemplate}
/// {@macro pulumi_developerconnect_account_connector_account_connector_args_doc}
class AccountConnectorArgs {
  /// The ID to use for the AccountConnector, which will become the final
  /// component of the AccountConnector's resource name. Its format should adhere
  /// to https://google.aip.dev/122#resource-id-segments Names must be unique
  /// per-project per-location.
  final pulumi.Input<String> accountConnectorId;
  /// Allows users to store small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>?>? annotations;
  /// Message for a customized OAuth config.
  /// Structure is documented below.
  final pulumi.Input<AccountConnectorCustomOauthConfig?>? customOauthConfig;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  final pulumi.Input<String?>? etag;
  /// Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// ProviderOAuthConfig is the OAuth config for a provider.
  /// Structure is documented below.
  final pulumi.Input<AccountConnectorProviderOauthConfig?>? providerOauthConfig;
  /// The proxy configuration.
  /// Structure is documented below.
  final pulumi.Input<AccountConnectorProxyConfig?>? proxyConfig;

  /// Creates a new [AccountConnectorArgs].
  /// [accountConnectorId] The ID to use for the AccountConnector, which will become the final
  /// [annotations] Allows users to store small amounts of arbitrary data.
  /// [customOauthConfig] Message for a customized OAuth config.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [etag] This checksum is computed by the server based on the value of other
  /// [labels] Labels as key value pairs
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  /// [providerOauthConfig] ProviderOAuthConfig is the OAuth config for a provider.
  /// [proxyConfig] The proxy configuration.
  const AccountConnectorArgs({
    required this.accountConnectorId,
    this.annotations,
    this.customOauthConfig,
    this.deletionPolicy,
    this.etag,
    this.labels,
    required this.location,
    this.project,
    this.providerOauthConfig,
    this.proxyConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountConnectorId': accountConnectorId,
      'annotations': ?annotations,
      'customOauthConfig': ?pulumi.Input.mapOptionalInputValue<AccountConnectorCustomOauthConfig, Map<String, dynamic>>(customOauthConfig, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'etag': ?etag,
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'providerOauthConfig': ?pulumi.Input.mapOptionalInputValue<AccountConnectorProviderOauthConfig, Map<String, dynamic>>(providerOauthConfig, (value) => value.toMap()),
      'proxyConfig': ?pulumi.Input.mapOptionalInputValue<AccountConnectorProxyConfig, Map<String, dynamic>>(proxyConfig, (value) => value.toMap()),
    };
  }

  factory AccountConnectorArgs.fromMap(Map<String, dynamic> map) {
    return AccountConnectorArgs(
      accountConnectorId: pulumi.Input.fromValue(map['accountConnectorId'] as String),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      customOauthConfig: (() { final guardedValue = map['customOauthConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountConnectorCustomOauthConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerOauthConfig: (() { final guardedValue = map['providerOauthConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountConnectorProviderOauthConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      proxyConfig: (() { final guardedValue = map['proxyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountConnectorProxyConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
