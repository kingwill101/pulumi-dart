// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_connector_custom_oauth_config.dart';
import 'account_connector_provider_oauth_config.dart';
import 'account_connector_proxy_config.dart';

/// Input properties used for looking up and filtering AccountConnector resources.
class AccountConnectorState {
  /// The ID to use for the AccountConnector, which will become the final
  /// component of the AccountConnector's resource name. Its format should adhere
  /// to https://google.aip.dev/122#resource-id-segments Names must be unique
  /// per-project per-location.
  final pulumi.Input<String>? accountConnectorId;
  /// Allows users to store small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// The timestamp when the accountConnector was created.
  final pulumi.Input<String>? createTime;
  /// Message for a customized OAuth config.
  /// Structure is documented below.
  final pulumi.Input<AccountConnectorCustomOauthConfig>? customOauthConfig;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;
  /// Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Identifier. The resource name of the accountConnector, in the format
  /// `projects/{project}/locations/{location}/accountConnectors/{account_connector_id}`.
  final pulumi.Input<String>? name;
  /// Start OAuth flow by clicking on this URL.
  final pulumi.Input<String>? oauthStartUri;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// ProviderOAuthConfig is the OAuth config for a provider.
  /// Structure is documented below.
  final pulumi.Input<AccountConnectorProviderOauthConfig>? providerOauthConfig;
  /// The proxy configuration.
  /// Structure is documented below.
  final pulumi.Input<AccountConnectorProxyConfig>? proxyConfig;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The timestamp when the accountConnector was updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [AccountConnectorState].
  /// [accountConnectorId] The ID to use for the AccountConnector, which will become the final
  /// [annotations] Allows users to store small amounts of arbitrary data.
  /// [createTime] The timestamp when the accountConnector was created.
  /// [customOauthConfig] Message for a customized OAuth config.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [effectiveAnnotations] All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [etag] This checksum is computed by the server based on the value of other
  /// [labels] Labels as key value pairs
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. The resource name of the accountConnector, in the format
  /// [oauthStartUri] Start OAuth flow by clicking on this URL.
  /// [project] The ID of the project in which the resource belongs.
  /// [providerOauthConfig] ProviderOAuthConfig is the OAuth config for a provider.
  /// [proxyConfig] The proxy configuration.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [updateTime] The timestamp when the accountConnector was updated.
  const AccountConnectorState({
    this.accountConnectorId,
    this.annotations,
    this.createTime,
    this.customOauthConfig,
    this.deletionPolicy,
    this.effectiveAnnotations,
    this.effectiveLabels,
    this.etag,
    this.labels,
    this.location,
    this.name,
    this.oauthStartUri,
    this.project,
    this.providerOauthConfig,
    this.proxyConfig,
    this.pulumiLabels,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountConnectorId': ?accountConnectorId,
      'annotations': ?annotations,
      'createTime': ?createTime,
      'customOauthConfig': ?pulumi.Input.mapOptionalInputValue<AccountConnectorCustomOauthConfig, Map<String, dynamic>>(customOauthConfig, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'oauthStartUri': ?oauthStartUri,
      'project': ?project,
      'providerOauthConfig': ?pulumi.Input.mapOptionalInputValue<AccountConnectorProviderOauthConfig, Map<String, dynamic>>(providerOauthConfig, (value) => value.toMap()),
      'proxyConfig': ?pulumi.Input.mapOptionalInputValue<AccountConnectorProxyConfig, Map<String, dynamic>>(proxyConfig, (value) => value.toMap()),
      'pulumiLabels': ?pulumiLabels,
      'updateTime': ?updateTime,
    };
  }

  factory AccountConnectorState.fromMap(Map<String, dynamic> map) {
    return AccountConnectorState(
      accountConnectorId: (() { final guardedValue = map['accountConnectorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customOauthConfig: (() { final guardedValue = map['customOauthConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountConnectorCustomOauthConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveAnnotations: (() { final guardedValue = map['effectiveAnnotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauthStartUri: (() { final guardedValue = map['oauthStartUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerOauthConfig: (() { final guardedValue = map['providerOauthConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountConnectorProviderOauthConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      proxyConfig: (() { final guardedValue = map['proxyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountConnectorProxyConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
