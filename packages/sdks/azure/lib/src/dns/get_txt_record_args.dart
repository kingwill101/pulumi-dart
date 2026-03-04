// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_get_txt_record_get_txt_record_args_doc}
/// Arguments for getTxtRecord.
/// {@endtemplate}
/// {@macro pulumi_dns_get_txt_record_get_txt_record_args_doc}
class GetTxtRecordArgs {
  /// The name of the DNS TXT Record.
  final pulumi.Input<String> name;

  /// Specifies the resource group where the DNS Zone (parent resource) exists.
  final pulumi.Input<String> resourceGroupName;

  /// Specifies the DNS Zone where the resource exists.
  final pulumi.Input<String> zoneName;

  /// Creates a new [GetTxtRecordArgs].
  /// [name] The name of the DNS TXT Record.
  /// [resourceGroupName] Specifies the resource group where the DNS Zone (parent resource) exists.
  /// [zoneName] Specifies the DNS Zone where the resource exists.
  GetTxtRecordArgs({
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

  factory GetTxtRecordArgs.fromMap(Map<String, dynamic> map) {
    return GetTxtRecordArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      zoneName: pulumi.Input.fromValue(map['zoneName'] as String),
    );
  }
}
