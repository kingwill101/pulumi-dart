// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatedns_get_soa_record_get_soa_record_args_doc}
/// Arguments for getSoaRecord.
/// {@endtemplate}
/// {@macro pulumi_privatedns_get_soa_record_get_soa_record_args_doc}
class GetSoaRecordArgs {
  /// The name of the Private DNS SOA Record.
  final pulumi.Input<String?>? name;
  /// Specifies the resource group where the Private DNS Zone (parent resource) exists.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the Private DNS Zone where the resource exists.
  final pulumi.Input<String> zoneName;

  /// Creates a new [GetSoaRecordArgs].
  /// [name] The name of the Private DNS SOA Record.
  /// [resourceGroupName] Specifies the resource group where the Private DNS Zone (parent resource) exists.
  /// [zoneName] Specifies the Private DNS Zone where the resource exists.
  const GetSoaRecordArgs({
    this.name,
    required this.resourceGroupName,
    required this.zoneName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'zoneName': zoneName,
    };
  }

  factory GetSoaRecordArgs.fromMap(Map<String, dynamic> map) {
    return GetSoaRecordArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      zoneName: pulumi.Input.fromValue(map['zoneName'] as String),
    );
  }
}
