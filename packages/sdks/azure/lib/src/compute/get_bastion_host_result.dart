// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bastion_host_ip_configuration.dart';

/// Result data returned by getBastionHost.
class GetBastionHostResult {
  /// Is Copy/Paste feature enabled for the Bastion Host.
  final bool copyPasteEnabled;
  /// The FQDN for the Bastion Host.
  final String dnsName;
  /// Is File Copy feature enabled for the Bastion Host.
  final bool fileCopyEnabled;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A `ip_configuration` block as defined below.
  final List<GetBastionHostIpConfiguration> ipConfigurations;
  /// Is IP Connect feature enabled for the Bastion Host.
  final bool ipConnectEnabled;
  /// The Azure Region where the Bastion Host exists.
  final String location;
  /// The name of the IP configuration.
  final String name;
  final String resourceGroupName;
  /// The number of scale units provisioned for the Bastion Host.
  final int scaleUnits;
  /// Is Session Recording feature enabled for the Bastion Host.
  final bool sessionRecordingEnabled;
  /// Is Shareable Link feature enabled for the Bastion Host.
  final bool shareableLinkEnabled;
  /// The SKU of the Bastion Host.
  final String sku;
  /// A mapping of tags assigned to the Bastion Host.
  final Map<String, String> tags;
  /// Is Tunneling feature enabled for the Bastion Host.
  final bool tunnelingEnabled;
  /// A list of Availability Zones in which this Bastion Host is located.
  final List<String> zones;

  /// Creates a new [GetBastionHostResult].
  /// [copyPasteEnabled] Is Copy/Paste feature enabled for the Bastion Host.
  /// [dnsName] The FQDN for the Bastion Host.
  /// [fileCopyEnabled] Is File Copy feature enabled for the Bastion Host.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipConfigurations] A `ip_configuration` block as defined below.
  /// [ipConnectEnabled] Is IP Connect feature enabled for the Bastion Host.
  /// [location] The Azure Region where the Bastion Host exists.
  /// [name] The name of the IP configuration.
  /// [resourceGroupName] Required.
  /// [scaleUnits] The number of scale units provisioned for the Bastion Host.
  /// [sessionRecordingEnabled] Is Session Recording feature enabled for the Bastion Host.
  /// [shareableLinkEnabled] Is Shareable Link feature enabled for the Bastion Host.
  /// [sku] The SKU of the Bastion Host.
  /// [tags] A mapping of tags assigned to the Bastion Host.
  /// [tunnelingEnabled] Is Tunneling feature enabled for the Bastion Host.
  /// [zones] A list of Availability Zones in which this Bastion Host is located.
  const GetBastionHostResult({
    required this.copyPasteEnabled,
    required this.dnsName,
    required this.fileCopyEnabled,
    required this.id,
    required this.ipConfigurations,
    required this.ipConnectEnabled,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.scaleUnits,
    required this.sessionRecordingEnabled,
    required this.shareableLinkEnabled,
    required this.sku,
    required this.tags,
    required this.tunnelingEnabled,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyPasteEnabled': copyPasteEnabled,
      'dnsName': dnsName,
      'fileCopyEnabled': fileCopyEnabled,
      'id': id,
      'ipConfigurations': pulumi.Input.encodeList<GetBastionHostIpConfiguration, Map<String, dynamic>>(ipConfigurations, (value) => value.toMap()),
      'ipConnectEnabled': ipConnectEnabled,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'scaleUnits': scaleUnits,
      'sessionRecordingEnabled': sessionRecordingEnabled,
      'shareableLinkEnabled': shareableLinkEnabled,
      'sku': sku,
      'tags': tags,
      'tunnelingEnabled': tunnelingEnabled,
      'zones': zones,
    };
  }

  factory GetBastionHostResult.fromMap(Map<String, dynamic> map) {
    return GetBastionHostResult(
      copyPasteEnabled: map['copyPasteEnabled'] as bool,
      dnsName: map['dnsName'] as String,
      fileCopyEnabled: map['fileCopyEnabled'] as bool,
      id: map['id'] as String,
      ipConfigurations: pulumi.Input.decodeList<GetBastionHostIpConfiguration>(map['ipConfigurations']!, (value) => GetBastionHostIpConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      ipConnectEnabled: map['ipConnectEnabled'] as bool,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      scaleUnits: map['scaleUnits'] as int,
      sessionRecordingEnabled: map['sessionRecordingEnabled'] as bool,
      shareableLinkEnabled: map['shareableLinkEnabled'] as bool,
      sku: map['sku'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      tunnelingEnabled: map['tunnelingEnabled'] as bool,
      zones: (map['zones'] as List).cast<String>(),
    );
  }
}

