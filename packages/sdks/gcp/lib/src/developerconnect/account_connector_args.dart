// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_connector_provider_oauth_config.dart';

/// {@template pulumi_developerconnect_account_connector_account_connector_args_doc}
/// The set of arguments for AccountConnector.
/// {@endtemplate}
/// {@macro pulumi_developerconnect_account_connector_account_connector_args_doc}
class AccountConnectorArgs {
  /// Required. The ID to use for the AccountConnector, which will become the final
  /// component of the AccountConnector's resource name. Its format should adhere
  /// to https://google.aip.dev/122#resource-id-segments Names must be unique
  /// per-project per-location.
  final pulumi.Input<String> accountConnectorId;
  /// Optional. Allows users to store small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Optional. Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the resource.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// ProviderOAuthConfig is the OAuth config for a provider.
  /// Structure is documented below.
  final pulumi.Input<AccountConnectorProviderOauthConfig>? providerOauthConfig;

  /// Creates a new [AccountConnectorArgs].
  /// [accountConnectorId] Required. The ID to use for the AccountConnector, which will become the final
  /// [annotations] Optional. Allows users to store small amounts of arbitrary data.
  /// [labels] Optional. Labels as key value pairs
  /// [location] The location of the resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [providerOauthConfig] ProviderOAuthConfig is the OAuth config for a provider.
  AccountConnectorArgs({
    required this.accountConnectorId,
    this.annotations,
    this.labels,
    required this.location,
    this.project,
    this.providerOauthConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountConnectorId': accountConnectorId,
      'annotations': ?annotations,
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'providerOauthConfig': ?pulumi.Input.mapOptionalInputValue<AccountConnectorProviderOauthConfig, Map<String, dynamic>>(providerOauthConfig, (value) => value.toMap()),
    };
  }

  factory AccountConnectorArgs.fromMap(Map<String, dynamic> map) {
    return AccountConnectorArgs(
      accountConnectorId: (map['accountConnectorId'] as String).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations']! as Map).cast<String, String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      providerOauthConfig: map['providerOauthConfig'] == null ? null : (AccountConnectorProviderOauthConfig.fromMap((map['providerOauthConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

