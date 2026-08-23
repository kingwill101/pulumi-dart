// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_get_ns_record_get_ns_record_args_doc}
/// Arguments for getNsRecord.
/// {@endtemplate}
/// {@macro pulumi_dns_get_ns_record_get_ns_record_args_doc}
class GetNsRecordArgs {
  /// The name of the DNS NS Record.
  final pulumi.Input<String> name;
  /// Specifies the resource group where the DNS Zone (parent resource) exists.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the DNS Zone where the resource exists.
  final pulumi.Input<String> zoneName;

  /// Creates a new [GetNsRecordArgs].
  /// [name] The name of the DNS NS Record.
  /// [resourceGroupName] Specifies the resource group where the DNS Zone (parent resource) exists.
  /// [zoneName] Specifies the DNS Zone where the resource exists.
  const GetNsRecordArgs({
    required this.name,
    required this.resourceGroupName,
    required this.zoneName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'zoneName': zoneName,
    };
  }

  factory GetNsRecordArgs.fromMap(Map<String, dynamic> map) {
    return GetNsRecordArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      zoneName: pulumi.Input.fromValue(map['zoneName'] as String),
    );
  }
}
