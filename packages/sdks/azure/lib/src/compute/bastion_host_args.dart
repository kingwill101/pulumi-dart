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
    pulumi.Output<bool>? copyPasteEnabled,
    pulumi.Output<bool>? fileCopyEnabled,
    pulumi.Output<BastionHostIpConfiguration>? ipConfiguration,
    pulumi.Output<bool>? ipConnectEnabled,
    pulumi.Output<bool>? kerberosEnabled,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<int>? scaleUnits,
    pulumi.Output<bool>? sessionRecordingEnabled,
    pulumi.Output<bool>? shareableLinkEnabled,
    pulumi.Output<String>? sku,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<bool>? tunnelingEnabled,
    pulumi.Output<String>? virtualNetworkId,
    pulumi.Output<List<String>>? zones,
  }) :
      copyPasteEnabled = pulumi.Input.asOptionalInput<bool>(copyPasteEnabled),
      fileCopyEnabled = pulumi.Input.asOptionalInput<bool>(fileCopyEnabled),
      ipConfiguration = pulumi.Input.asOptionalInput<BastionHostIpConfiguration>(ipConfiguration),
      ipConnectEnabled = pulumi.Input.asOptionalInput<bool>(ipConnectEnabled),
      kerberosEnabled = pulumi.Input.asOptionalInput<bool>(kerberosEnabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scaleUnits = pulumi.Input.asOptionalInput<int>(scaleUnits),
      sessionRecordingEnabled = pulumi.Input.asOptionalInput<bool>(sessionRecordingEnabled),
      shareableLinkEnabled = pulumi.Input.asOptionalInput<bool>(shareableLinkEnabled),
      sku = pulumi.Input.asOptionalInput<String>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tunnelingEnabled = pulumi.Input.asOptionalInput<bool>(tunnelingEnabled),
      virtualNetworkId = pulumi.Input.asOptionalInput<String>(virtualNetworkId),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

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
      copyPasteEnabled: map['copyPasteEnabled'] == null ? null : pulumi.Output.create<bool>(map['copyPasteEnabled'] as bool),
      fileCopyEnabled: map['fileCopyEnabled'] == null ? null : pulumi.Output.create<bool>(map['fileCopyEnabled'] as bool),
      ipConfiguration: map['ipConfiguration'] == null ? null : pulumi.Output.create<BastionHostIpConfiguration>(BastionHostIpConfiguration.fromMap((map['ipConfiguration'] as Map).cast<String, dynamic>())),
      ipConnectEnabled: map['ipConnectEnabled'] == null ? null : pulumi.Output.create<bool>(map['ipConnectEnabled'] as bool),
      kerberosEnabled: map['kerberosEnabled'] == null ? null : pulumi.Output.create<bool>(map['kerberosEnabled'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scaleUnits: map['scaleUnits'] == null ? null : pulumi.Output.create<int>(map['scaleUnits'] as int),
      sessionRecordingEnabled: map['sessionRecordingEnabled'] == null ? null : pulumi.Output.create<bool>(map['sessionRecordingEnabled'] as bool),
      shareableLinkEnabled: map['shareableLinkEnabled'] == null ? null : pulumi.Output.create<bool>(map['shareableLinkEnabled'] as bool),
      sku: map['sku'] == null ? null : pulumi.Output.create<String>(map['sku'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tunnelingEnabled: map['tunnelingEnabled'] == null ? null : pulumi.Output.create<bool>(map['tunnelingEnabled'] as bool),
      virtualNetworkId: map['virtualNetworkId'] == null ? null : pulumi.Output.create<String>(map['virtualNetworkId'] as String),
      zones: map['zones'] == null ? null : pulumi.Output.create<List<String>>((map['zones'] as List).cast<String>()),
    );
  }
}

