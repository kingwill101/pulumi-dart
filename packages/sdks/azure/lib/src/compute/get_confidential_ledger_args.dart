// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_confidential_ledger_get_confidential_ledger_args_doc}
/// Arguments for getConfidentialLedger.
/// {@endtemplate}
/// {@macro pulumi_compute_get_confidential_ledger_get_confidential_ledger_args_doc}
class GetConfidentialLedgerArgs {
  /// Specifies the name of this Confidential Ledger.
  final pulumi.Input<String> name;
  /// Specifies the name of the Resource Group where this Confidential Ledger exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetConfidentialLedgerArgs].
  /// [name] Specifies the name of this Confidential Ledger.
  /// [resourceGroupName] Specifies the name of the Resource Group where this Confidential Ledger exists.
  const GetConfidentialLedgerArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetConfidentialLedgerArgs.fromMap(Map<String, dynamic> map) {
    return GetConfidentialLedgerArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
