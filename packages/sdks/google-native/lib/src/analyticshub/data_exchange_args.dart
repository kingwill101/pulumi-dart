// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sharing_environment_config.dart';

/// {@template pulumi_analyticshub_v1_data_exchange_args_doc}
/// The set of arguments for DataExchange.
/// {@endtemplate}
/// {@macro pulumi_analyticshub_v1_data_exchange_args_doc}
class DataExchangeArgs {
  /// Required. The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces. Max length: 100 bytes.
  final pulumi.Input<String> dataExchangeId;
  /// Optional. Description of the data exchange. The description must not contain Unicode non-characters as well as C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF). Default value is an empty string. Max length: 2000 bytes.
  final pulumi.Input<String>? description;
  /// Human-readable display name of the data exchange. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), ampersands (&) and must not start or end with spaces. Default value is an empty string. Max length: 63 bytes.
  final pulumi.Input<String> displayName;
  /// Optional. Documentation describing the data exchange.
  final pulumi.Input<String>? documentation;
  /// Optional. Base64 encoded image representing the data exchange. Max Size: 3.0MiB Expected image dimensions are 512x512 pixels, however the API only performs validation on size of the encoded data. Note: For byte fields, the content of the fields are base64-encoded (which increases the size of the data by 33-36%) when using JSON on the wire.
  final pulumi.Input<String>? icon;
  final pulumi.Input<String>? location;
  /// Optional. Email or URL of the primary point of contact of the data exchange. Max Length: 1000 bytes.
  final pulumi.Input<String>? primaryContact;
  final pulumi.Input<String>? project;
  /// Optional. Configurable data sharing environment option for a data exchange.
  final pulumi.Input<SharingEnvironmentConfig>? sharingEnvironmentConfig;

  /// Creates a new [DataExchangeArgs].
  /// [dataExchangeId] Required. The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces. Max length: 100 bytes.
  /// [description] Optional. Description of the data exchange. The description must not contain Unicode non-characters as well as C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF). Default value is an empty string. Max length: 2000 bytes.
  /// [displayName] Human-readable display name of the data exchange. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), ampersands (&) and must not start or end with spaces. Default value is an empty string. Max length: 63 bytes.
  /// [documentation] Optional. Documentation describing the data exchange.
  /// [icon] Optional. Base64 encoded image representing the data exchange. Max Size: 3.0MiB Expected image dimensions are 512x512 pixels, however the API only performs validation on size of the encoded data. Note: For byte fields, the content of the fields are base64-encoded (which increases the size of the data by 33-36%) when using JSON on the wire.
  /// [location] Optional.
  /// [primaryContact] Optional. Email or URL of the primary point of contact of the data exchange. Max Length: 1000 bytes.
  /// [project] Optional.
  /// [sharingEnvironmentConfig] Optional. Configurable data sharing environment option for a data exchange.
  DataExchangeArgs({
    required pulumi.Output<String> dataExchangeId,
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    pulumi.Output<String>? documentation,
    pulumi.Output<String>? icon,
    pulumi.Output<String>? location,
    pulumi.Output<String>? primaryContact,
    pulumi.Output<String>? project,
    pulumi.Output<SharingEnvironmentConfig>? sharingEnvironmentConfig,
  }) :
      dataExchangeId = pulumi.Input.asInput<String>(dataExchangeId),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      documentation = pulumi.Input.asOptionalInput<String>(documentation),
      icon = pulumi.Input.asOptionalInput<String>(icon),
      location = pulumi.Input.asOptionalInput<String>(location),
      primaryContact = pulumi.Input.asOptionalInput<String>(primaryContact),
      project = pulumi.Input.asOptionalInput<String>(project),
      sharingEnvironmentConfig = pulumi.Input.asOptionalInput<SharingEnvironmentConfig>(sharingEnvironmentConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataExchangeId': dataExchangeId,
      'description': ?description,
      'displayName': displayName,
      'documentation': ?documentation,
      'icon': ?icon,
      'location': ?location,
      'primaryContact': ?primaryContact,
      'project': ?project,
      'sharingEnvironmentConfig': ?pulumi.Input.mapOptionalInputValue<SharingEnvironmentConfig, Map<String, dynamic>>(sharingEnvironmentConfig, (value) => value.toMap()),
    };
  }

  factory DataExchangeArgs.fromMap(Map<String, dynamic> map) {
    return DataExchangeArgs(
      dataExchangeId: pulumi.Output.create<String>(map['dataExchangeId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      documentation: map['documentation'] == null ? null : pulumi.Output.create<String>(map['documentation'] as String),
      icon: map['icon'] == null ? null : pulumi.Output.create<String>(map['icon'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      primaryContact: map['primaryContact'] == null ? null : pulumi.Output.create<String>(map['primaryContact'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      sharingEnvironmentConfig: map['sharingEnvironmentConfig'] == null ? null : pulumi.Output.create<SharingEnvironmentConfig>(SharingEnvironmentConfig.fromMap((map['sharingEnvironmentConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

