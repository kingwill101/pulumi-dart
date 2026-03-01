// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_connector_provider_oauth_config.dart';

/// Input properties used for looking up and filtering AccountConnector resources.
class AccountConnectorState {
  /// Required. The ID to use for the AccountConnector, which will become the final
  /// component of the AccountConnector's resource name. Its format should adhere
  /// to https://google.aip.dev/122#resource-id-segments Names must be unique
  /// per-project per-location.
  final pulumi.Input<String>? accountConnectorId;
  /// Optional. Allows users to store small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Output only. The timestamp when the userConnection was created.
  final pulumi.Input<String>? createTime;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Optional. Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the resource.
  final pulumi.Input<String>? location;
  /// Identifier. The resource name of the userConnection, in the format
  /// `projects/{project}/locations/{location}/accountConnectors/{account_connector_id}`.
  final pulumi.Input<String>? name;
  /// Output only. Start OAuth flow by clicking on this URL.
  final pulumi.Input<String>? oauthStartUri;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// ProviderOAuthConfig is the OAuth config for a provider.
  /// Structure is documented below.
  final pulumi.Input<AccountConnectorProviderOauthConfig>? providerOauthConfig;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Output only. The timestamp when the userConnection was updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [AccountConnectorState].
  /// [accountConnectorId] Required. The ID to use for the AccountConnector, which will become the final
  /// [annotations] Optional. Allows users to store small amounts of arbitrary data.
  /// [createTime] Output only. The timestamp when the userConnection was created.
  /// [effectiveAnnotations] Optional.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Optional. Labels as key value pairs
  /// [location] The location of the resource.
  /// [name] Identifier. The resource name of the userConnection, in the format
  /// [oauthStartUri] Output only. Start OAuth flow by clicking on this URL.
  /// [project] The ID of the project in which the resource belongs.
  /// [providerOauthConfig] ProviderOAuthConfig is the OAuth config for a provider.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [updateTime] Output only. The timestamp when the userConnection was updated.
  AccountConnectorState({
    pulumi.Output<String>? accountConnectorId,
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<String>? createTime,
    pulumi.Output<Map<String, String>>? effectiveAnnotations,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? oauthStartUri,
    pulumi.Output<String>? project,
    pulumi.Output<AccountConnectorProviderOauthConfig>? providerOauthConfig,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? updateTime,
  }) :
      accountConnectorId = pulumi.Input.asOptionalInput<String>(accountConnectorId),
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      effectiveAnnotations = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveAnnotations),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      oauthStartUri = pulumi.Input.asOptionalInput<String>(oauthStartUri),
      project = pulumi.Input.asOptionalInput<String>(project),
      providerOauthConfig = pulumi.Input.asOptionalInput<AccountConnectorProviderOauthConfig>(providerOauthConfig),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountConnectorId': ?accountConnectorId,
      'annotations': ?annotations,
      'createTime': ?createTime,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'oauthStartUri': ?oauthStartUri,
      'project': ?project,
      'providerOauthConfig': ?pulumi.Input.mapOptionalInputValue<AccountConnectorProviderOauthConfig, Map<String, dynamic>>(providerOauthConfig, (value) => value.toMap()),
      'pulumiLabels': ?pulumiLabels,
      'updateTime': ?updateTime,
    };
  }

  factory AccountConnectorState.fromMap(Map<String, dynamic> map) {
    return AccountConnectorState(
      accountConnectorId: map['accountConnectorId'] == null ? null : pulumi.Output.create<String>(map['accountConnectorId'] as String),
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveAnnotations'] as Map).cast<String, String>()),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      oauthStartUri: map['oauthStartUri'] == null ? null : pulumi.Output.create<String>(map['oauthStartUri'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      providerOauthConfig: map['providerOauthConfig'] == null ? null : pulumi.Output.create<AccountConnectorProviderOauthConfig>(AccountConnectorProviderOauthConfig.fromMap((map['providerOauthConfig'] as Map).cast<String, dynamic>())),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

