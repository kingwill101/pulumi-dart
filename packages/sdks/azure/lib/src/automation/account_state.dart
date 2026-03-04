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
  final pulumi.Input<List<AccountPrivateEndpointConnection>>?
  privateEndpointConnections;

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
    this.dscPrimaryAccessKey,
    this.dscSecondaryAccessKey,
    this.dscServerEndpoint,
    this.encryptions,
    this.hybridServiceUrl,
    this.identity,
    this.localAuthenticationEnabled,
    this.location,
    this.name,
    this.privateEndpointConnections,
    this.publicNetworkAccessEnabled,
    this.resourceGroupName,
    this.skuName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dscPrimaryAccessKey': ?dscPrimaryAccessKey,
      'dscSecondaryAccessKey': ?dscSecondaryAccessKey,
      'dscServerEndpoint': ?dscServerEndpoint,
      'encryptions':
          ?pulumi.Input.mapOptionalInputValue<
            List<AccountEncryption>,
            List<Map<String, dynamic>>
          >(
            encryptions,
            (value) =>
                pulumi.Input.encodeList<
                  AccountEncryption,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'hybridServiceUrl': ?hybridServiceUrl,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            AccountIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'localAuthenticationEnabled': ?localAuthenticationEnabled,
      'location': ?location,
      'name': ?name,
      'privateEndpointConnections':
          ?pulumi.Input.mapOptionalInputValue<
            List<AccountPrivateEndpointConnection>,
            List<Map<String, dynamic>>
          >(
            privateEndpointConnections,
            (value) =>
                pulumi.Input.encodeList<
                  AccountPrivateEndpointConnection,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': ?resourceGroupName,
      'skuName': ?skuName,
      'tags': ?tags,
    };
  }

  factory AccountState.fromMap(Map<String, dynamic> map) {
    return AccountState(
      dscPrimaryAccessKey: (() {
        final guardedValue = map['dscPrimaryAccessKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dscSecondaryAccessKey: (() {
        final guardedValue = map['dscSecondaryAccessKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dscServerEndpoint: (() {
        final guardedValue = map['dscServerEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      encryptions: (() {
        final guardedValue = map['encryptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AccountEncryption>(
            guardedValue,
            (value) => AccountEncryption.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      hybridServiceUrl: (() {
        final guardedValue = map['hybridServiceUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AccountIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      localAuthenticationEnabled: (() {
        final guardedValue = map['localAuthenticationEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateEndpointConnections: (() {
        final guardedValue = map['privateEndpointConnections'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AccountPrivateEndpointConnection>(
            guardedValue,
            (value) => AccountPrivateEndpointConnection.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      publicNetworkAccessEnabled: (() {
        final guardedValue = map['publicNetworkAccessEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      skuName: (() {
        final guardedValue = map['skuName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
