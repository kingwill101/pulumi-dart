// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'insights_account_state.dart';

/// Result data returned by getInsightsAccounts.
class GetInsightsAccountsResult {
  final List<InsightsAccountState> accounts;

  /// Creates a new [GetInsightsAccountsResult].
  /// [accounts] Required.
  GetInsightsAccountsResult({
    required this.accounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accounts': pulumi.Input.encodeList<InsightsAccountState, Map<String, dynamic>>(accounts, (value) => value.toMap()),
    };
  }

  factory GetInsightsAccountsResult.fromMap(Map<String, dynamic> map) {
    return GetInsightsAccountsResult(
      accounts: pulumi.Input.decodeList<InsightsAccountState>(map['accounts'], (value) => InsightsAccountState.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

