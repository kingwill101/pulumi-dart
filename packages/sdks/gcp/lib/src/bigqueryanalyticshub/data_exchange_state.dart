// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_exchange_sharing_environment_config.dart';

/// Input properties used for looking up and filtering DataExchange resources.
class DataExchangeState {
  /// The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  final pulumi.Input<String>? dataExchangeId;
  /// Description of the data exchange.
  final pulumi.Input<String>? description;
  /// Type of discovery on the discovery page for all the listings under this exchange. Cannot be set for a Data Clean Room. Updating this field also updates (overwrites) the discoveryType field for all the listings under this exchange.
  /// Possible values are: `DISCOVERY_TYPE_PRIVATE`, `DISCOVERY_TYPE_PUBLIC`.
  final pulumi.Input<String>? discoveryType;
  /// Human-readable display name of the data exchange. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), and must not start or end with spaces.
  final pulumi.Input<String>? displayName;
  /// Documentation describing the data exchange.
  final pulumi.Input<String>? documentation;
  /// Base64 encoded image representing the data exchange.
  final pulumi.Input<String>? icon;
  /// Number of listings contained in the data exchange.
  final pulumi.Input<int>? listingCount;
  /// The name of the location this data exchange.
  final pulumi.Input<String>? location;
  /// If true, subscriber email logging is enabled and all queries on the linked dataset will log the email address of the querying user. Once enabled, this setting cannot be turned off.
  final pulumi.Input<bool>? logLinkedDatasetQueryUserEmail;
  /// The resource name of the data exchange, for example:
  /// "projects/myproject/locations/US/dataExchanges/123"
  final pulumi.Input<String>? name;
  /// Email or URL of the primary point of contact of the data exchange.
  final pulumi.Input<String>? primaryContact;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Configurable data sharing environment option for a data exchange.
  /// This field is required for data clean room exchanges.
  /// Structure is documented below.
  final pulumi.Input<DataExchangeSharingEnvironmentConfig>? sharingEnvironmentConfig;

  /// Creates a new [DataExchangeState].
  /// [dataExchangeId] The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  /// [description] Description of the data exchange.
  /// [discoveryType] Type of discovery on the discovery page for all the listings under this exchange. Cannot be set for a Data Clean Room. Updating this field also updates (overwrites) the discoveryType field for all the listings under this exchange.
  /// [displayName] Human-readable display name of the data exchange. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), and must not start or end with spaces.
  /// [documentation] Documentation describing the data exchange.
  /// [icon] Base64 encoded image representing the data exchange.
  /// [listingCount] Number of listings contained in the data exchange.
  /// [location] The name of the location this data exchange.
  /// [logLinkedDatasetQueryUserEmail] If true, subscriber email logging is enabled and all queries on the linked dataset will log the email address of the querying user. Once enabled, this setting cannot be turned off.
  /// [name] The resource name of the data exchange, for example:
  /// [primaryContact] Email or URL of the primary point of contact of the data exchange.
  /// [project] The ID of the project in which the resource belongs.
  /// [sharingEnvironmentConfig] Configurable data sharing environment option for a data exchange.
  DataExchangeState({
    pulumi.Output<String>? dataExchangeId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? discoveryType,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? documentation,
    pulumi.Output<String>? icon,
    pulumi.Output<int>? listingCount,
    pulumi.Output<String>? location,
    pulumi.Output<bool>? logLinkedDatasetQueryUserEmail,
    pulumi.Output<String>? name,
    pulumi.Output<String>? primaryContact,
    pulumi.Output<String>? project,
    pulumi.Output<DataExchangeSharingEnvironmentConfig>? sharingEnvironmentConfig,
  }) :
      dataExchangeId = pulumi.Input.asOptionalInput<String>(dataExchangeId),
      description = pulumi.Input.asOptionalInput<String>(description),
      discoveryType = pulumi.Input.asOptionalInput<String>(discoveryType),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      documentation = pulumi.Input.asOptionalInput<String>(documentation),
      icon = pulumi.Input.asOptionalInput<String>(icon),
      listingCount = pulumi.Input.asOptionalInput<int>(listingCount),
      location = pulumi.Input.asOptionalInput<String>(location),
      logLinkedDatasetQueryUserEmail = pulumi.Input.asOptionalInput<bool>(logLinkedDatasetQueryUserEmail),
      name = pulumi.Input.asOptionalInput<String>(name),
      primaryContact = pulumi.Input.asOptionalInput<String>(primaryContact),
      project = pulumi.Input.asOptionalInput<String>(project),
      sharingEnvironmentConfig = pulumi.Input.asOptionalInput<DataExchangeSharingEnvironmentConfig>(sharingEnvironmentConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataExchangeId': ?dataExchangeId,
      'description': ?description,
      'discoveryType': ?discoveryType,
      'displayName': ?displayName,
      'documentation': ?documentation,
      'icon': ?icon,
      'listingCount': ?listingCount,
      'location': ?location,
      'logLinkedDatasetQueryUserEmail': ?logLinkedDatasetQueryUserEmail,
      'name': ?name,
      'primaryContact': ?primaryContact,
      'project': ?project,
      'sharingEnvironmentConfig': ?pulumi.Input.mapOptionalInputValue<DataExchangeSharingEnvironmentConfig, Map<String, dynamic>>(sharingEnvironmentConfig, (value) => value.toMap()),
    };
  }

  factory DataExchangeState.fromMap(Map<String, dynamic> map) {
    return DataExchangeState(
      dataExchangeId: map['dataExchangeId'] == null ? null : pulumi.Output.create<String>(map['dataExchangeId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      discoveryType: map['discoveryType'] == null ? null : pulumi.Output.create<String>(map['discoveryType'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      documentation: map['documentation'] == null ? null : pulumi.Output.create<String>(map['documentation'] as String),
      icon: map['icon'] == null ? null : pulumi.Output.create<String>(map['icon'] as String),
      listingCount: map['listingCount'] == null ? null : pulumi.Output.create<int>(map['listingCount'] as int),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      logLinkedDatasetQueryUserEmail: map['logLinkedDatasetQueryUserEmail'] == null ? null : pulumi.Output.create<bool>(map['logLinkedDatasetQueryUserEmail'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      primaryContact: map['primaryContact'] == null ? null : pulumi.Output.create<String>(map['primaryContact'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      sharingEnvironmentConfig: map['sharingEnvironmentConfig'] == null ? null : pulumi.Output.create<DataExchangeSharingEnvironmentConfig>(DataExchangeSharingEnvironmentConfig.fromMap((map['sharingEnvironmentConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

