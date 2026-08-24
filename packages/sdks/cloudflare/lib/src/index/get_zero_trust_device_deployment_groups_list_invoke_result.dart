// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_device_deployment_groups_list_result.dart';

/// Result data returned by getZeroTrustDeviceDeploymentGroupsList.
class GetZeroTrustDeviceDeploymentGroupsListInvokeResult {
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetZeroTrustDeviceDeploymentGroupsListResult>? results;

  /// Creates a new [GetZeroTrustDeviceDeploymentGroupsListInvokeResult].
  /// [accountId] Optional.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  const GetZeroTrustDeviceDeploymentGroupsListInvokeResult({
    this.accountId,
    this.maxItems,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustDeviceDeploymentGroupsListResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetZeroTrustDeviceDeploymentGroupsListInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDeviceDeploymentGroupsListInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDeviceDeploymentGroupsListResult>(guardedValue, (value) => GetZeroTrustDeviceDeploymentGroupsListResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
