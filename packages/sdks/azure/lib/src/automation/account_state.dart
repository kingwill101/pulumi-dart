// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_encryption.dart';
import 'account_identity.dart';
import 'account_private_endpoint_connection.dart';

/// Input properties used for looking up and filtering Account resources.
class AccountState {
  /// The Primary Access Key for the DSC Endpoint associated with this Automation Account.
  final pulumi.Input<String>? dscPrimaryAccessKey;
  /// The Secondary Access Key for the DSC Endpoint associated with this Automation Account.
  final pulumi.Input<String>? dscSecondaryAccessKey;
  /// The DSC Server Endpoint associated with this Automation Account.
  final pulumi.Input<String>? dscServerEndpoint;
  /// An `encryption` block as defined below.
  final pulumi.Input<List<AccountEncryption>>? encryptions;
  /// The URL of automation hybrid service which is used for hybrid worker on-boarding With this Automation Account.
  final pulumi.Input<String>? hybridServiceUrl;
  /// An `identity` block as defined below.
  final pulumi.Input<AccountIdentity>? identity;
  /// Whether requests using non-AAD authentication are blocked. Defaults to `true`.
  final pulumi.Input<bool>? localAuthenticationEnabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Automation Account. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  final pulumi.Input<List<AccountPrivateEndpointConnection>>? privateEndpointConnections;
  /// Whether public network access is allowed for the automation account. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The name of the resource group in which the Automation Account is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The SKU of the account. Possible values are `Basic` and `Free`.
  final pulumi.Input<String>? skuName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AccountState].
  /// [dscPrimaryAccessKey] The Primary Access Key for the DSC Endpoint associated with this Automation Account.
  /// [dscSecondaryAccessKey] The Secondary Access Key for the DSC Endpoint associated with this Automation Account.
  /// [dscServerEndpoint] The DSC Server Endpoint associated with this Automation Account.
  /// [encryptions] An `encryption` block as defined below.
  /// [hybridServiceUrl] The URL of automation hybrid service which is used for hybrid worker on-boarding With this Automation Account.
  /// [identity] An `identity` block as defined below.
  /// [localAuthenticationEnabled] Whether requests using non-AAD authentication are blocked. Defaults to `true`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Automation Account. Changing this forces a new resource to be created.
  /// [privateEndpointConnections] Optional.
  /// [publicNetworkAccessEnabled] Whether public network access is allowed for the automation account. Defaults to `true`.
  /// [resourceGroupName] The name of the resource group in which the Automation Account is created. Changing this forces a new resource to be created.
  /// [skuName] The SKU of the account. Possible values are `Basic` and `Free`.
  /// [tags] A mapping of tags to assign to the resource.
  AccountState({
    pulumi.Output<String>? dscPrimaryAccessKey,
    pulumi.Output<String>? dscSecondaryAccessKey,
    pulumi.Output<String>? dscServerEndpoint,
    pulumi.Output<List<AccountEncryption>>? encryptions,
    pulumi.Output<String>? hybridServiceUrl,
    pulumi.Output<AccountIdentity>? identity,
    pulumi.Output<bool>? localAuthenticationEnabled,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<List<AccountPrivateEndpointConnection>>? privateEndpointConnections,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? skuName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      dscPrimaryAccessKey = pulumi.Input.asOptionalInput<String>(dscPrimaryAccessKey),
      dscSecondaryAccessKey = pulumi.Input.asOptionalInput<String>(dscSecondaryAccessKey),
      dscServerEndpoint = pulumi.Input.asOptionalInput<String>(dscServerEndpoint),
      encryptions = pulumi.Input.asOptionalInput<List<AccountEncryption>>(encryptions),
      hybridServiceUrl = pulumi.Input.asOptionalInput<String>(hybridServiceUrl),
      identity = pulumi.Input.asOptionalInput<AccountIdentity>(identity),
      localAuthenticationEnabled = pulumi.Input.asOptionalInput<bool>(localAuthenticationEnabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      privateEndpointConnections = pulumi.Input.asOptionalInput<List<AccountPrivateEndpointConnection>>(privateEndpointConnections),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      skuName = pulumi.Input.asOptionalInput<String>(skuName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dscPrimaryAccessKey': ?dscPrimaryAccessKey,
      'dscSecondaryAccessKey': ?dscSecondaryAccessKey,
      'dscServerEndpoint': ?dscServerEndpoint,
      'encryptions': ?pulumi.Input.mapOptionalInputValue<List<AccountEncryption>, List<Map<String, dynamic>>>(encryptions, (value) => pulumi.Input.encodeList<AccountEncryption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hybridServiceUrl': ?hybridServiceUrl,
      'identity': ?pulumi.Input.mapOptionalInputValue<AccountIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'localAuthenticationEnabled': ?localAuthenticationEnabled,
      'location': ?location,
      'name': ?name,
      'privateEndpointConnections': ?pulumi.Input.mapOptionalInputValue<List<AccountPrivateEndpointConnection>, List<Map<String, dynamic>>>(privateEndpointConnections, (value) => pulumi.Input.encodeList<AccountPrivateEndpointConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': ?resourceGroupName,
      'skuName': ?skuName,
      'tags': ?tags,
    };
  }

  factory AccountState.fromMap(Map<String, dynamic> map) {
    return AccountState(
      dscPrimaryAccessKey: map['dscPrimaryAccessKey'] == null ? null : pulumi.Output.create<String>(map['dscPrimaryAccessKey'] as String),
      dscSecondaryAccessKey: map['dscSecondaryAccessKey'] == null ? null : pulumi.Output.create<String>(map['dscSecondaryAccessKey'] as String),
      dscServerEndpoint: map['dscServerEndpoint'] == null ? null : pulumi.Output.create<String>(map['dscServerEndpoint'] as String),
      encryptions: map['encryptions'] == null ? null : pulumi.Output.create<List<AccountEncryption>>(pulumi.Input.decodeList<AccountEncryption>(map['encryptions'], (value) => AccountEncryption.fromMap((value as Map).cast<String, dynamic>()))),
      hybridServiceUrl: map['hybridServiceUrl'] == null ? null : pulumi.Output.create<String>(map['hybridServiceUrl'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<AccountIdentity>(AccountIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      localAuthenticationEnabled: map['localAuthenticationEnabled'] == null ? null : pulumi.Output.create<bool>(map['localAuthenticationEnabled'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      privateEndpointConnections: map['privateEndpointConnections'] == null ? null : pulumi.Output.create<List<AccountPrivateEndpointConnection>>(pulumi.Input.decodeList<AccountPrivateEndpointConnection>(map['privateEndpointConnections'], (value) => AccountPrivateEndpointConnection.fromMap((value as Map).cast<String, dynamic>()))),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      skuName: map['skuName'] == null ? null : pulumi.Output.create<String>(map['skuName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

