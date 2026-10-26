// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'insights_account_state.dart';

/// Result data returned by getInsightsAccounts.
class GetInsightsAccountsResult {
  final List<InsightsAccountState>? accounts;

  /// Creates a new [GetInsightsAccountsResult].
  /// [accounts] Optional.
  const GetInsightsAccountsResult({
    this.accounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accounts': ?(() { final guardedValue = accounts; if (guardedValue == null) return null; return pulumi.Input.encodeList<InsightsAccountState, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetInsightsAccountsResult.fromMap(Map<String, dynamic> map) {
    return GetInsightsAccountsResult(
      accounts: (() { final guardedValue = map['accounts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<InsightsAccountState>(guardedValue, (value) => InsightsAccountState.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
