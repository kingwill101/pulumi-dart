// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bastion_host_ip_configuration.dart';

/// Input properties used for looking up and filtering BastionHost resources.
class BastionHostState {
  /// Is Copy/Paste feature enabled for the Bastion Host. Defaults to `true`.
  final pulumi.Input<bool>? copyPasteEnabled;
  /// The FQDN for the Bastion Host.
  final pulumi.Input<String>? dnsName;
  /// Is File Copy feature enabled for the Bastion Host. Defaults to `false`.
  ///
  /// &gt; **Note:** `fileCopyEnabled` is only supported when `sku` is `Standard` or `Premium`.
  final pulumi.Input<bool>? fileCopyEnabled;
  /// A `ipConfiguration` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<BastionHostIpConfiguration>? ipConfiguration;
  /// Is IP Connect feature enabled for the Bastion Host. Defaults to `false`.
  ///
  /// &gt; **Note:** `ipConnectEnabled` is only supported when `sku` is `Standard` or `Premium`.
  final pulumi.Input<bool>? ipConnectEnabled;
  /// Is Kerberos authentication feature enabled for the Bastion Host. Defaults to `false`.
  ///
  /// &gt; **Note:** `kerberosEnabled` is only supported when `sku` is `Standard` or `Premium`.
  final pulumi.Input<bool>? kerberosEnabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. Review [Azure Bastion Host FAQ](https://docs.microsoft.com/azure/bastion/bastion-faq) for supported locations.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Bastion Host. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Whether Private-Only deployment is enabled for the Bastion Host.
  final pulumi.Input<bool>? privateOnlyEnabled;
  /// The name of the resource group in which to create the Bastion Host. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The number of scale units with which to provision the Bastion Host. Possible values are between `2` and `50`. Defaults to `2`.
  ///
  /// &gt; **Note:** `scaleUnits` only can be changed when `sku` is `Standard` or `Premium`. `scaleUnits` is always `2` when `sku` is `Basic`.
  final pulumi.Input<int>? scaleUnits;
  /// Is Session Recording feature enabled for the Bastion Host. Defaults to `false`.
  ///
  /// &gt; **Note:** `sessionRecordingEnabled` is only supported when `sku` is `Premium`.
  final pulumi.Input<bool>? sessionRecordingEnabled;
  /// Is Shareable Link feature enabled for the Bastion Host. Defaults to `false`.
  ///
  /// &gt; **Note:** `shareableLinkEnabled` is only supported when `sku` is `Standard` or `Premium`.
  final pulumi.Input<bool>? shareableLinkEnabled;
  /// The SKU of the Bastion Host. Accepted values are `Developer`, `Basic`, `Standard` and `Premium`. Defaults to `Basic`.
  ///
  /// &gt; **Note:** Downgrading the SKU will force a new resource to be created.
  final pulumi.Input<String>? sku;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Is Tunneling feature enabled for the Bastion Host. Defaults to `false`.
  ///
  /// &gt; **Note:** `tunnelingEnabled` is only supported when `sku` is `Standard` or `Premium`.
  final pulumi.Input<bool>? tunnelingEnabled;
  /// The ID of the Virtual Network for the Developer Bastion Host. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualNetworkId;
  /// Specifies a list of Availability Zones in which this Public Bastion Host should be located. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [BastionHostState].
  /// [copyPasteEnabled] Is Copy/Paste feature enabled for the Bastion Host. Defaults to `true`.
  /// [dnsName] The FQDN for the Bastion Host.
  /// [fileCopyEnabled] Is File Copy feature enabled for the Bastion Host. Defaults to `false`.
  /// [ipConfiguration] A `ipConfiguration` block as defined below. Changing this forces a new resource to be created.
  /// [ipConnectEnabled] Is IP Connect feature enabled for the Bastion Host. Defaults to `false`.
  /// [kerberosEnabled] Is Kerberos authentication feature enabled for the Bastion Host. Defaults to `false`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. Review [Azure Bastion Host FAQ](https://docs.microsoft.com/azure/bastion/bastion-faq) for supported locations.
  /// [name] Specifies the name of the Bastion Host. Changing this forces a new resource to be created.
  /// [privateOnlyEnabled] Whether Private-Only deployment is enabled for the Bastion Host.
  /// [resourceGroupName] The name of the resource group in which to create the Bastion Host. Changing this forces a new resource to be created.
  /// [scaleUnits] The number of scale units with which to provision the Bastion Host. Possible values are between `2` and `50`. Defaults to `2`.
  /// [sessionRecordingEnabled] Is Session Recording feature enabled for the Bastion Host. Defaults to `false`.
  /// [shareableLinkEnabled] Is Shareable Link feature enabled for the Bastion Host. Defaults to `false`.
  /// [sku] The SKU of the Bastion Host. Accepted values are `Developer`, `Basic`, `Standard` and `Premium`. Defaults to `Basic`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [tunnelingEnabled] Is Tunneling feature enabled for the Bastion Host. Defaults to `false`.
  /// [virtualNetworkId] The ID of the Virtual Network for the Developer Bastion Host. Changing this forces a new resource to be created.
  /// [zones] Specifies a list of Availability Zones in which this Public Bastion Host should be located. Changing this forces a new resource to be created.
  const BastionHostState({
    this.copyPasteEnabled,
    this.dnsName,
    this.fileCopyEnabled,
    this.ipConfiguration,
    this.ipConnectEnabled,
    this.kerberosEnabled,
    this.location,
    this.name,
    this.privateOnlyEnabled,
    this.resourceGroupName,
    this.scaleUnits,
    this.sessionRecordingEnabled,
    this.shareableLinkEnabled,
    this.sku,
    this.tags,
    this.tunnelingEnabled,
    this.virtualNetworkId,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyPasteEnabled': ?copyPasteEnabled,
      'dnsName': ?dnsName,
      'fileCopyEnabled': ?fileCopyEnabled,
      'ipConfiguration': ?pulumi.Input.mapOptionalInputValue<BastionHostIpConfiguration, Map<String, dynamic>>(ipConfiguration, (value) => value.toMap()),
      'ipConnectEnabled': ?ipConnectEnabled,
      'kerberosEnabled': ?kerberosEnabled,
      'location': ?location,
      'name': ?name,
      'privateOnlyEnabled': ?privateOnlyEnabled,
      'resourceGroupName': ?resourceGroupName,
      'scaleUnits': ?scaleUnits,
      'sessionRecordingEnabled': ?sessionRecordingEnabled,
      'shareableLinkEnabled': ?shareableLinkEnabled,
      'sku': ?sku,
      'tags': ?tags,
      'tunnelingEnabled': ?tunnelingEnabled,
      'virtualNetworkId': ?virtualNetworkId,
      'zones': ?zones,
    };
  }

  factory BastionHostState.fromMap(Map<String, dynamic> map) {
    return BastionHostState(
      copyPasteEnabled: (() { final guardedValue = map['copyPasteEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileCopyEnabled: (() { final guardedValue = map['fileCopyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipConfiguration: (() { final guardedValue = map['ipConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BastionHostIpConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipConnectEnabled: (() { final guardedValue = map['ipConnectEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kerberosEnabled: (() { final guardedValue = map['kerberosEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateOnlyEnabled: (() { final guardedValue = map['privateOnlyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scaleUnits: (() { final guardedValue = map['scaleUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sessionRecordingEnabled: (() { final guardedValue = map['sessionRecordingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      shareableLinkEnabled: (() { final guardedValue = map['shareableLinkEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tunnelingEnabled: (() { final guardedValue = map['tunnelingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      virtualNetworkId: (() { final guardedValue = map['virtualNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
