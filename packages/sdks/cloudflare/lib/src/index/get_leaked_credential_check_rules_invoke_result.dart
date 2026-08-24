// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_leaked_credential_check_rules_result.dart';

/// Result data returned by getLeakedCredentialCheckRules.
class GetLeakedCredentialCheckRulesInvokeResult {
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetLeakedCredentialCheckRulesResult>? results;
  /// Defines an identifier.
  final String? zoneId;

  /// Creates a new [GetLeakedCredentialCheckRulesInvokeResult].
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  /// [zoneId] Defines an identifier.
  const GetLeakedCredentialCheckRulesInvokeResult({
    this.maxItems,
    this.results,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLeakedCredentialCheckRulesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'zoneId': ?zoneId,
    };
  }

  factory GetLeakedCredentialCheckRulesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetLeakedCredentialCheckRulesInvokeResult(
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLeakedCredentialCheckRulesResult>(guardedValue, (value) => GetLeakedCredentialCheckRulesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
