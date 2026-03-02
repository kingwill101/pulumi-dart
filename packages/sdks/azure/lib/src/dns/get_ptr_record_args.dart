// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_get_ptr_record_get_ptr_record_args_doc}
/// Arguments for getPtrRecord.
/// {@endtemplate}
/// {@macro pulumi_dns_get_ptr_record_get_ptr_record_args_doc}
class GetPtrRecordArgs {
  /// The name of the DNS PTR Record.
  final pulumi.Input<String> name;
  /// Specifies the resource group where the DNS Zone (parent resource) exists.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the DNS Zone where the resource exists.
  final pulumi.Input<String> zoneName;

  /// Creates a new [GetPtrRecordArgs].
  /// [name] The name of the DNS PTR Record.
  /// [resourceGroupName] Specifies the resource group where the DNS Zone (parent resource) exists.
  /// [zoneName] Specifies the DNS Zone where the resource exists.
  GetPtrRecordArgs({
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

  factory GetPtrRecordArgs.fromMap(Map<String, dynamic> map) {
    return GetPtrRecordArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      zoneName: (map['zoneName'] as String).input(),
    );
  }
}

