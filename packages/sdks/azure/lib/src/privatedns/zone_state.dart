// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_soa_record.dart';

/// Input properties used for looking up and filtering Zone resources.
class ZoneState {
  /// The maximum number of record sets that can be created in this Private DNS zone.
  final pulumi.Input<int>? maxNumberOfRecordSets;
  /// The maximum number of virtual networks that can be linked to this Private DNS zone.
  final pulumi.Input<int>? maxNumberOfVirtualNetworkLinks;
  /// The maximum number of virtual networks that can be linked to this Private DNS zone with registration enabled.
  final pulumi.Input<int>? maxNumberOfVirtualNetworkLinksWithRegistration;
  /// The name of the Private DNS Zone. Must be a valid domain name. Changing this forces a new resource to be created.
  ///
  /// > **Note:** If you are going to be using the Private DNS Zone with a Private Endpoint the name of the Private DNS Zone must follow the **Private DNS Zone name** schema in the [product documentation](https://docs.microsoft.com/azure/private-link/private-endpoint-dns#virtual-network-and-on-premises-workloads-using-a-dns-forwarder) in order for the two resources to be connected successfully.
  final pulumi.Input<String>? name;
  /// The current number of record sets in this Private DNS zone.
  final pulumi.Input<int>? numberOfRecordSets;
  /// Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// An `soa_record` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ZoneSoaRecord>? soaRecord;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ZoneState].
  /// [maxNumberOfRecordSets] The maximum number of record sets that can be created in this Private DNS zone.
  /// [maxNumberOfVirtualNetworkLinks] The maximum number of virtual networks that can be linked to this Private DNS zone.
  /// [maxNumberOfVirtualNetworkLinksWithRegistration] The maximum number of virtual networks that can be linked to this Private DNS zone with registration enabled.
  /// [name] The name of the Private DNS Zone. Must be a valid domain name. Changing this forces a new resource to be created.
  /// [numberOfRecordSets] The current number of record sets in this Private DNS zone.
  /// [resourceGroupName] Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
  /// [soaRecord] An `soa_record` block as defined below. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  ZoneState({
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
      maxNumberOfRecordSets: map['maxNumberOfRecordSets'] == null ? null : (map['maxNumberOfRecordSets'] as int).input(),
      maxNumberOfVirtualNetworkLinks: map['maxNumberOfVirtualNetworkLinks'] == null ? null : (map['maxNumberOfVirtualNetworkLinks'] as int).input(),
      maxNumberOfVirtualNetworkLinksWithRegistration: map['maxNumberOfVirtualNetworkLinksWithRegistration'] == null ? null : (map['maxNumberOfVirtualNetworkLinksWithRegistration'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      numberOfRecordSets: map['numberOfRecordSets'] == null ? null : (map['numberOfRecordSets'] as int).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      soaRecord: map['soaRecord'] == null ? null : (ZoneSoaRecord.fromMap((map['soaRecord'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

