// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bastion_host_ip_configuration.dart';

/// Result data returned by getBastionHost.
class GetBastionHostResult {
  /// Is Copy/Paste feature enabled for the Bastion Host.
  final bool? copyPasteEnabled;
  /// The FQDN for the Bastion Host.
  final String? dnsName;
  /// Is File Copy feature enabled for the Bastion Host.
  final bool? fileCopyEnabled;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A `ipConfiguration` block as defined below.
  final List<GetBastionHostIpConfiguration>? ipConfigurations;
  /// Is IP Connect feature enabled for the Bastion Host.
  final bool? ipConnectEnabled;
  /// The Azure Region where the Bastion Host exists.
  final String? location;
  /// The name of the IP configuration.
  final String? name;
  /// Whether Private-Only deployment is enabled for the Bastion Host.
  final bool? privateOnlyEnabled;
  final String? resourceGroupName;
  /// The number of scale units provisioned for the Bastion Host.
  final int? scaleUnits;
  /// Is Session Recording feature enabled for the Bastion Host.
  final bool? sessionRecordingEnabled;
  /// Is Shareable Link feature enabled for the Bastion Host.
  final bool? shareableLinkEnabled;
  /// The SKU of the Bastion Host.
  final String? sku;
  /// A mapping of tags assigned to the Bastion Host.
  final Map<String, String>? tags;
  /// Is Tunneling feature enabled for the Bastion Host.
  final bool? tunnelingEnabled;
  /// A list of Availability Zones in which this Bastion Host is located.
  final List<String>? zones;

  /// Creates a new [GetBastionHostResult].
  /// [copyPasteEnabled] Is Copy/Paste feature enabled for the Bastion Host.
  /// [dnsName] The FQDN for the Bastion Host.
  /// [fileCopyEnabled] Is File Copy feature enabled for the Bastion Host.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipConfigurations] A `ipConfiguration` block as defined below.
  /// [ipConnectEnabled] Is IP Connect feature enabled for the Bastion Host.
  /// [location] The Azure Region where the Bastion Host exists.
  /// [name] The name of the IP configuration.
  /// [privateOnlyEnabled] Whether Private-Only deployment is enabled for the Bastion Host.
  /// [resourceGroupName] Optional.
  /// [scaleUnits] The number of scale units provisioned for the Bastion Host.
  /// [sessionRecordingEnabled] Is Session Recording feature enabled for the Bastion Host.
  /// [shareableLinkEnabled] Is Shareable Link feature enabled for the Bastion Host.
  /// [sku] The SKU of the Bastion Host.
  /// [tags] A mapping of tags assigned to the Bastion Host.
  /// [tunnelingEnabled] Is Tunneling feature enabled for the Bastion Host.
  /// [zones] A list of Availability Zones in which this Bastion Host is located.
  const GetBastionHostResult({
    this.copyPasteEnabled,
    this.dnsName,
    this.fileCopyEnabled,
    this.id,
    this.ipConfigurations,
    this.ipConnectEnabled,
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
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyPasteEnabled': ?copyPasteEnabled,
      'dnsName': ?dnsName,
      'fileCopyEnabled': ?fileCopyEnabled,
      'id': ?id,
      'ipConfigurations': ?(() { final guardedValue = ipConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBastionHostIpConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ipConnectEnabled': ?ipConnectEnabled,
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
      'zones': ?zones,
    };
  }

  factory GetBastionHostResult.fromMap(Map<String, dynamic> map) {
    return GetBastionHostResult(
      copyPasteEnabled: (() { final guardedValue = map['copyPasteEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fileCopyEnabled: (() { final guardedValue = map['fileCopyEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipConfigurations: (() { final guardedValue = map['ipConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBastionHostIpConfiguration>(guardedValue, (value) => GetBastionHostIpConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      ipConnectEnabled: (() { final guardedValue = map['ipConnectEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateOnlyEnabled: (() { final guardedValue = map['privateOnlyEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scaleUnits: (() { final guardedValue = map['scaleUnits']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      sessionRecordingEnabled: (() { final guardedValue = map['sessionRecordingEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      shareableLinkEnabled: (() { final guardedValue = map['shareableLinkEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tunnelingEnabled: (() { final guardedValue = map['tunnelingEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
