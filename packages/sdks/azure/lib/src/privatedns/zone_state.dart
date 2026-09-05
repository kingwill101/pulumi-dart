// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_soa_record.dart';

/// Input properties used for looking up and filtering Zone resources.
class ZoneState {
  /// The maximum number of record sets that can be created in this Private DNS zone.
  final pulumi.Input<int?>? maxNumberOfRecordSets;
  /// The maximum number of virtual networks that can be linked to this Private DNS zone.
  final pulumi.Input<int?>? maxNumberOfVirtualNetworkLinks;
  /// The maximum number of virtual networks that can be linked to this Private DNS zone with registration enabled.
  final pulumi.Input<int?>? maxNumberOfVirtualNetworkLinksWithRegistration;
  /// The name of the Private DNS Zone. Must be a valid domain name. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** If you are going to be using the Private DNS Zone with a Private Endpoint the name of the Private DNS Zone must follow the **Private DNS Zone name** schema in the [product documentation](https://docs.microsoft.com/azure/private-link/private-endpoint-dns#virtual-network-and-on-premises-workloads-using-a-dns-forwarder) in order for the two resources to be connected successfully.
  final pulumi.Input<String?>? name;
  /// The current number of record sets in this Private DNS zone.
  final pulumi.Input<int?>? numberOfRecordSets;
  /// Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// An `soaRecord` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ZoneSoaRecord?>? soaRecord;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ZoneState].
  /// [maxNumberOfRecordSets] The maximum number of record sets that can be created in this Private DNS zone.
  /// [maxNumberOfVirtualNetworkLinks] The maximum number of virtual networks that can be linked to this Private DNS zone.
  /// [maxNumberOfVirtualNetworkLinksWithRegistration] The maximum number of virtual networks that can be linked to this Private DNS zone with registration enabled.
  /// [name] The name of the Private DNS Zone. Must be a valid domain name. Changing this forces a new resource to be created.
  /// [numberOfRecordSets] The current number of record sets in this Private DNS zone.
  /// [resourceGroupName] Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
  /// [soaRecord] An `soaRecord` block as defined below. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  const ZoneState({
    this.maxNumberOfRecordSets,
    this.maxNumberOfVirtualNetworkLinks,
    this.maxNumberOfVirtualNetworkLinksWithRegistration,
    this.name,
    this.numberOfRecordSets,
    this.resourceGroupName,
    this.soaRecord,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxNumberOfRecordSets': ?maxNumberOfRecordSets,
      'maxNumberOfVirtualNetworkLinks': ?maxNumberOfVirtualNetworkLinks,
      'maxNumberOfVirtualNetworkLinksWithRegistration': ?maxNumberOfVirtualNetworkLinksWithRegistration,
      'name': ?name,
      'numberOfRecordSets': ?numberOfRecordSets,
      'resourceGroupName': ?resourceGroupName,
      'soaRecord': ?pulumi.Input.mapOptionalInputValue<ZoneSoaRecord, Map<String, dynamic>>(soaRecord, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory ZoneState.fromMap(Map<String, dynamic> map) {
    return ZoneState(
      maxNumberOfRecordSets: (() { final guardedValue = map['maxNumberOfRecordSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      maxNumberOfVirtualNetworkLinks: (() { final guardedValue = map['maxNumberOfVirtualNetworkLinks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      maxNumberOfVirtualNetworkLinksWithRegistration: (() { final guardedValue = map['maxNumberOfVirtualNetworkLinksWithRegistration']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numberOfRecordSets: (() { final guardedValue = map['numberOfRecordSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      soaRecord: (() { final guardedValue = map['soaRecord']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZoneSoaRecord.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
