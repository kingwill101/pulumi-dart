// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_soa_record.dart';

/// {@template pulumi_privatedns_zone_zone_args_doc}
/// The set of arguments for Zone.
/// {@endtemplate}
/// {@macro pulumi_privatedns_zone_zone_args_doc}
class ZoneArgs {
  /// The name of the Private DNS Zone. Must be a valid domain name. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** If you are going to be using the Private DNS Zone with a Private Endpoint the name of the Private DNS Zone must follow the **Private DNS Zone name** schema in the [product documentation](https://docs.microsoft.com/azure/private-link/private-endpoint-dns#virtual-network-and-on-premises-workloads-using-a-dns-forwarder) in order for the two resources to be connected successfully.
  final pulumi.Input<String>? name;

  /// Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// An `soa_record` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ZoneSoaRecord>? soaRecord;

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ZoneArgs].
  /// [name] The name of the Private DNS Zone. Must be a valid domain name. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
  /// [soaRecord] An `soa_record` block as defined below. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  ZoneArgs({
    this.name,
    required this.resourceGroupName,
    this.soaRecord,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'soaRecord':
          ?pulumi.Input.mapOptionalInputValue<
            ZoneSoaRecord,
            Map<String, dynamic>
          >(soaRecord, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory ZoneArgs.fromMap(Map<String, dynamic> map) {
    return ZoneArgs(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      soaRecord: (() {
        final guardedValue = map['soaRecord'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ZoneSoaRecord.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
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
