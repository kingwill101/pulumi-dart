// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_get_mx_record_get_mx_record_args_doc}
/// Arguments for getMxRecord.
/// {@endtemplate}
/// {@macro pulumi_dns_get_mx_record_get_mx_record_args_doc}
class GetMxRecordArgs {
  /// The name of the DNS MX Record.
  final pulumi.Input<String>? name;

  /// Specifies the resource group where the DNS Zone (parent resource) exists.
  final pulumi.Input<String> resourceGroupName;

  /// Specifies the DNS Zone where the resource exists.
  final pulumi.Input<String> zoneName;

  /// Creates a new [GetMxRecordArgs].
  /// [name] The name of the DNS MX Record.
  /// [resourceGroupName] Specifies the resource group where the DNS Zone (parent resource) exists.
  /// [zoneName] Specifies the DNS Zone where the resource exists.
  GetMxRecordArgs({
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

  factory GetMxRecordArgs.fromMap(Map<String, dynamic> map) {
    return GetMxRecordArgs(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      zoneName: pulumi.Input.fromValue(map['zoneName'] as String),
    );
  }
}
