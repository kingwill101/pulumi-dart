// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_get_srv_record_get_srv_record_args_doc}
/// Arguments for getSrvRecord.
/// {@endtemplate}
/// {@macro pulumi_dns_get_srv_record_get_srv_record_args_doc}
class GetSrvRecordArgs {
  /// The name of the DNS SRV Record.
  final pulumi.Input<String> name;
  /// Specifies the resource group where the DNS Zone (parent resource) exists.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the DNS Zone where the resource exists.
  final pulumi.Input<String> zoneName;

  /// Creates a new [GetSrvRecordArgs].
  /// [name] The name of the DNS SRV Record.
  /// [resourceGroupName] Specifies the resource group where the DNS Zone (parent resource) exists.
  /// [zoneName] Specifies the DNS Zone where the resource exists.
  GetSrvRecordArgs({
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

  factory GetSrvRecordArgs.fromMap(Map<String, dynamic> map) {
    return GetSrvRecordArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      zoneName: pulumi.Output.create<String>(map['zoneName'] as String),
    );
  }
}

