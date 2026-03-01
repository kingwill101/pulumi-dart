// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatedns_get_private_record_set_args_doc}
/// Arguments for getPrivateRecordSet.
/// {@endtemplate}
/// {@macro pulumi_privatedns_get_private_record_set_args_doc}
class GetPrivateRecordSetArgs {
  /// The name of the DNS zone (without a terminating dot).
  final pulumi.Input<String> privateZoneName;
  /// The type of DNS record in this record set.
  final pulumi.Input<String> recordType;
  /// The name of the record set, relative to the name of the zone.
  final pulumi.Input<String> relativeRecordSetName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPrivateRecordSetArgs].
  /// [privateZoneName] The name of the DNS zone (without a terminating dot).
  /// [recordType] The type of DNS record in this record set.
  /// [relativeRecordSetName] The name of the record set, relative to the name of the zone.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetPrivateRecordSetArgs({
    required pulumi.Output<String> privateZoneName,
    required pulumi.Output<String> recordType,
    required pulumi.Output<String> relativeRecordSetName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      privateZoneName = pulumi.Input.asInput<String>(privateZoneName),
      recordType = pulumi.Input.asInput<String>(recordType),
      relativeRecordSetName = pulumi.Input.asInput<String>(relativeRecordSetName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateZoneName': privateZoneName,
      'recordType': recordType,
      'relativeRecordSetName': relativeRecordSetName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPrivateRecordSetArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateRecordSetArgs(
      privateZoneName: pulumi.Output.create<String>(map['privateZoneName'] as String),
      recordType: pulumi.Output.create<String>(map['recordType'] as String),
      relativeRecordSetName: pulumi.Output.create<String>(map['relativeRecordSetName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

