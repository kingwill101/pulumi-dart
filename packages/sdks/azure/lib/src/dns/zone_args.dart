// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_soa_record.dart';

/// {@template pulumi_dns_zone_zone_args_doc}
/// The set of arguments for Zone.
/// {@endtemplate}
/// {@macro pulumi_dns_zone_zone_args_doc}
class ZoneArgs {
  /// The name of the DNS Zone. Must be a valid domain name. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `soa_record` block as defined below.
  final pulumi.Input<ZoneSoaRecord>? soaRecord;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ZoneArgs].
  /// [name] The name of the DNS Zone. Must be a valid domain name. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
  /// [soaRecord] A `soa_record` block as defined below.
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
      'soaRecord': ?pulumi.Input.mapOptionalInputValue<ZoneSoaRecord, Map<String, dynamic>>(soaRecord, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory ZoneArgs.fromMap(Map<String, dynamic> map) {
    return ZoneArgs(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      soaRecord: map['soaRecord'] == null ? null : (ZoneSoaRecord.fromMap((map['soaRecord'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

