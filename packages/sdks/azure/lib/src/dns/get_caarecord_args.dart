// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_get_caarecord_get_caarecord_args_doc}
/// Arguments for getCAARecord.
/// {@endtemplate}
/// {@macro pulumi_dns_get_caarecord_get_caarecord_args_doc}
class GetCAARecordArgs {
  /// The name of the DNS CAA Record.
  final pulumi.Input<String> name;
  /// Specifies the resource group where the DNS Zone (parent resource) exists.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the DNS Zone where the resource exists.
  final pulumi.Input<String> zoneName;

  /// Creates a new [GetCAARecordArgs].
  /// [name] The name of the DNS CAA Record.
  /// [resourceGroupName] Specifies the resource group where the DNS Zone (parent resource) exists.
  /// [zoneName] Specifies the DNS Zone where the resource exists.
  GetCAARecordArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> zoneName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      zoneName = pulumi.Input.asInput<String>(zoneName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'zoneName': zoneName,
    };
  }

  factory GetCAARecordArgs.fromMap(Map<String, dynamic> map) {
    return GetCAARecordArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      zoneName: pulumi.Output.create<String>(map['zoneName'] as String),
    );
  }
}

