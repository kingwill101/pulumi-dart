// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The public Account Merge Info model.
class AccountMergeInfoResponse {
  /// The account location of the *other* account in the merge operation.
  final pulumi.Input<String> accountLocation;
  /// The account name of the *other* account in the merge operation.
  final pulumi.Input<String> accountName;
  /// The resource group name of the *other* account in the merge operation.
  final pulumi.Input<String> accountResourceGroupName;
  /// The subscription id of the *other* account in the merge operation.
  final pulumi.Input<String> accountSubscriptionId;
  /// The deprovisioned status of the account.
  /// Only applicable for the secondary account.
  final pulumi.Input<bool> deprovisioned;
  /// The status of the merge operation.
  final pulumi.Input<String> mergeStatus;
  /// The account's type for the merge operation.
  final pulumi.Input<String> typeOfAccount;

  /// Creates a new [AccountMergeInfoResponse].
  /// [accountLocation] The account location of the *other* account in the merge operation.
  /// [accountName] The account name of the *other* account in the merge operation.
  /// [accountResourceGroupName] The resource group name of the *other* account in the merge operation.
  /// [accountSubscriptionId] The subscription id of the *other* account in the merge operation.
  /// [deprovisioned] The deprovisioned status of the account.
  /// [mergeStatus] The status of the merge operation.
  /// [typeOfAccount] The account's type for the merge operation.
  AccountMergeInfoResponse({
    required this.accountLocation,
    required this.accountName,
    required this.accountResourceGroupName,
    required this.accountSubscriptionId,
    required this.deprovisioned,
    required this.mergeStatus,
    required this.typeOfAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountLocation': accountLocation,
      'accountName': accountName,
      'accountResourceGroupName': accountResourceGroupName,
      'accountSubscriptionId': accountSubscriptionId,
      'deprovisioned': deprovisioned,
      'mergeStatus': mergeStatus,
      'typeOfAccount': typeOfAccount,
    };
  }

  factory AccountMergeInfoResponse.fromMap(Map<String, dynamic> map) {
    return AccountMergeInfoResponse(
      accountLocation: pulumi.Input.fromValue(map['accountLocation'] as String),
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      accountResourceGroupName: pulumi.Input.fromValue(map['accountResourceGroupName'] as String),
      accountSubscriptionId: pulumi.Input.fromValue(map['accountSubscriptionId'] as String),
      deprovisioned: pulumi.Input.fromValue(map['deprovisioned'] as bool),
      mergeStatus: pulumi.Input.fromValue(map['mergeStatus'] as String),
      typeOfAccount: pulumi.Input.fromValue(map['typeOfAccount'] as String),
    );
  }
}

