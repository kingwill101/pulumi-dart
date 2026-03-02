// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bastion_host_ip_configuration.dart';

/// {@template pulumi_compute_bastion_host_bastion_host_args_doc}
/// The set of arguments for BastionHost.
/// {@endtemplate}
/// {@macro pulumi_compute_bastion_host_bastion_host_args_doc}
class BastionHostArgs {
  /// Is Copy/Paste feature enabled for the Bastion Host. Defaults to `true`.
  final pulumi.Input<bool>? copyPasteEnabled;
  /// Is File Copy feature enabled for the Bastion Host. Defaults to `false`.
  ///
  /// > **Note:** `file_copy_enabled` is only supported when `sku` is `Standard` or `Premium`.
  final pulumi.Input<bool>? fileCopyEnabled;
  /// A `ip_configuration` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<BastionHostIpConfiguration>? ipConfiguration;
  /// Is IP Connect feature enabled for the Bastion Host. Defaults to `false`.
  ///
  /// > **Note:** `ip_connect_enabled` is only supported when `sku` is `Standard` or `Premium`.
  final pulumi.Input<bool>? ipConnectEnabled;
  /// Is Kerberos authentication feature enabled for the Bastion Host. Defaults to `false`.
  ///
  /// > **Note:** `kerberos_enabled` is only supported when `sku` is `Standard` or `Premium`.
  final pulumi.Input<bool>? kerberosEnabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. Review [Azure Bastion Host FAQ](https://docs.microsoft.com/azure/bastion/bastion-faq) for supported locations.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Bastion Host. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the Bastion Host. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The number of scale units with which to provision the Bastion Host. Possible values are between `2` and `50`. Defaults to `2`.
  ///
  /// > **Note:** `scale_units` only can be changed when `sku` is `Standard` or `Premium`. `scale_units` is always `2` when `sku` is `Basic`.
  final pulumi.Input<int>? scaleUnits;
  /// Is Session Recording feature enabled for the Bastion Host. Defaults to `false`.
  ///
  /// > **Note:** `session_recording_enabled` is only supported when `sku` is `Premium`.
  final pulumi.Input<bool>? sessionRecordingEnabled;
  /// Is Shareable Link feature enabled for the Bastion Host. Defaults to `false`.
  ///
  /// > **Note:** `shareable_link_enabled` is only supported when `sku` is `Standard` or `Premium`.
  final pulumi.Input<bool>? shareableLinkEnabled;
  /// The SKU of the Bastion Host. Accepted values are `Developer`, `Basic`, `Standard` and `Premium`. Defaults to `Basic`.
  ///
  /// > **Note:** Downgrading the SKU will force a new resource to be created.
  final pulumi.Input<String>? sku;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Is Tunneling feature enabled for the Bastion Host. Defaults to `false`.
  ///
  /// > **Note:** `tunneling_enabled` is only supported when `sku` is `Standard` or `Premium`.
  final pulumi.Input<bool>? tunnelingEnabled;
  /// The ID of the Virtual Network for the Developer Bastion Host. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualNetworkId;
  /// Specifies a list of Availability Zones in which this Public Bastion Host should be located. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [BastionHostArgs].
  /// [copyPasteEnabled] Is Copy/Paste feature enabled for the Bastion Host. Defaults to `true`.
  /// [fileCopyEnabled] Is File Copy feature enabled for the Bastion Host. Defaults to `false`.
  /// [ipConfiguration] A `ip_configuration` block as defined below. Changing this forces a new resource to be created.
  /// [ipConnectEnabled] Is IP Connect feature enabled for the Bastion Host. Defaults to `false`.
  /// [kerberosEnabled] Is Kerberos authentication feature enabled for the Bastion Host. Defaults to `false`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. Review [Azure Bastion Host FAQ](https://docs.microsoft.com/azure/bastion/bastion-faq) for supported locations.
  /// [name] Specifies the name of the Bastion Host. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the Bastion Host. Changing this forces a new resource to be created.
  /// [scaleUnits] The number of scale units with which to provision the Bastion Host. Possible values are between `2` and `50`. Defaults to `2`.
  /// [sessionRecordingEnabled] Is Session Recording feature enabled for the Bastion Host. Defaults to `false`.
  /// [shareableLinkEnabled] Is Shareable Link feature enabled for the Bastion Host. Defaults to `false`.
  /// [sku] The SKU of the Bastion Host. Accepted values are `Developer`, `Basic`, `Standard` and `Premium`. Defaults to `Basic`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [tunnelingEnabled] Is Tunneling feature enabled for the Bastion Host. Defaults to `false`.
  /// [virtualNetworkId] The ID of the Virtual Network for the Developer Bastion Host. Changing this forces a new resource to be created.
  /// [zones] Specifies a list of Availability Zones in which this Public Bastion Host should be located. Changing this forces a new resource to be created.
  BastionHostArgs({
    this.copyPasteEnabled,
    this.fileCopyEnabled,
    this.ipConfiguration,
    this.ipConnectEnabled,
    this.kerberosEnabled,
    this.location,
    this.name,
    required this.resourceGroupName,
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
      'fileCopyEnabled': ?fileCopyEnabled,
      'ipConfiguration': ?pulumi.Input.mapOptionalInputValue<BastionHostIpConfiguration, Map<String, dynamic>>(ipConfiguration, (value) => value.toMap()),
      'ipConnectEnabled': ?ipConnectEnabled,
      'kerberosEnabled': ?kerberosEnabled,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
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

  factory BastionHostArgs.fromMap(Map<String, dynamic> map) {
    return BastionHostArgs(
      copyPasteEnabled: map['copyPasteEnabled'] == null ? null : (map['copyPasteEnabled']! as bool).input(),
      fileCopyEnabled: map['fileCopyEnabled'] == null ? null : (map['fileCopyEnabled']! as bool).input(),
      ipConfiguration: map['ipConfiguration'] == null ? null : (BastionHostIpConfiguration.fromMap((map['ipConfiguration']! as Map).cast<String, dynamic>())).input(),
      ipConnectEnabled: map['ipConnectEnabled'] == null ? null : (map['ipConnectEnabled']! as bool).input(),
      kerberosEnabled: map['kerberosEnabled'] == null ? null : (map['kerberosEnabled']! as bool).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      scaleUnits: map['scaleUnits'] == null ? null : (map['scaleUnits']! as int).input(),
      sessionRecordingEnabled: map['sessionRecordingEnabled'] == null ? null : (map['sessionRecordingEnabled']! as bool).input(),
      shareableLinkEnabled: map['shareableLinkEnabled'] == null ? null : (map['shareableLinkEnabled']! as bool).input(),
      sku: map['sku'] == null ? null : (map['sku']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      tunnelingEnabled: map['tunnelingEnabled'] == null ? null : (map['tunnelingEnabled']! as bool).input(),
      virtualNetworkId: map['virtualNetworkId'] == null ? null : (map['virtualNetworkId']! as String).input(),
      zones: map['zones'] == null ? null : ((map['zones']! as List).cast<String>()).input(),
    );
  }
}

