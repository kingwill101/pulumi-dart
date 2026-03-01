// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatedns_get_soa_record_get_soa_record_args_doc}
/// Arguments for getSoaRecord.
/// {@endtemplate}
/// {@macro pulumi_privatedns_get_soa_record_get_soa_record_args_doc}
class GetSoaRecordArgs {
  /// The name of the Private DNS SOA Record.
  final pulumi.Input<String>? name;
  /// Specifies the resource group where the Private DNS Zone (parent resource) exists.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the Private DNS Zone where the resource exists.
  final pulumi.Input<String> zoneName;

  /// Creates a new [GetSoaRecordArgs].
  /// [name] The name of the Private DNS SOA Record.
  /// [resourceGroupName] Specifies the resource group where the Private DNS Zone (parent resource) exists.
  /// [zoneName] Specifies the Private DNS Zone where the resource exists.
  GetSoaRecordArgs({
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> zoneName,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      zoneName = pulumi.Input.asInput<String>(zoneName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'zoneName': zoneName,
    };
  }

  factory GetSoaRecordArgs.fromMap(Map<String, dynamic> map) {
    return GetSoaRecordArgs(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      zoneName: pulumi.Output.create<String>(map['zoneName'] as String),
    );
  }
}

