// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dlp_sensitivity_levels_result.dart';

/// Result data returned by getZeroTrustDlpSensitivityLevels.
class GetZeroTrustDlpSensitivityLevelsInvokeResult {
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetZeroTrustDlpSensitivityLevelsResult>? results;
  final String? sensitivityGroupId;

  /// Creates a new [GetZeroTrustDlpSensitivityLevelsInvokeResult].
  /// [accountId] Optional.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  /// [sensitivityGroupId] Optional.
  const GetZeroTrustDlpSensitivityLevelsInvokeResult({
    this.accountId,
    this.maxItems,
    this.results,
    this.sensitivityGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustDlpSensitivityLevelsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sensitivityGroupId': ?sensitivityGroupId,
    };
  }

  factory GetZeroTrustDlpSensitivityLevelsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpSensitivityLevelsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDlpSensitivityLevelsResult>(guardedValue, (value) => GetZeroTrustDlpSensitivityLevelsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      sensitivityGroupId: (() { final guardedValue = map['sensitivityGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
