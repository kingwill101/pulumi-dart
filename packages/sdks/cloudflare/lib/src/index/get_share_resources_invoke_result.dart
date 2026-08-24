// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_share_resources_result.dart';

/// Result data returned by getShareResources.
class GetShareResourcesInvokeResult {
  /// Account identifier.
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Filter share resources by resource_type.
  /// Available values: "custom-ruleset", "gateway-policy", "gateway-destination-ip", "gateway-block-page-settings", "gateway-extended-email-matching", "idp-federation-grant".
  final String? resourceType;
  /// The items returned by the data source
  final List<GetShareResourcesResult>? results;
  /// Share identifier tag.
  final String? shareId;
  /// Filter share resources by status.
  /// Available values: "active", "deleting", "deleted".
  final String? status;

  /// Creates a new [GetShareResourcesInvokeResult].
  /// [accountId] Account identifier.
  /// [maxItems] Max items to fetch, default: 1000
  /// [resourceType] Filter share resources by resource_type.
  /// [results] The items returned by the data source
  /// [shareId] Share identifier tag.
  /// [status] Filter share resources by status.
  const GetShareResourcesInvokeResult({
    this.accountId,
    this.maxItems,
    this.resourceType,
    this.results,
    this.shareId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'resourceType': ?resourceType,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetShareResourcesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'shareId': ?shareId,
      'status': ?status,
    };
  }

  factory GetShareResourcesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetShareResourcesInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetShareResourcesResult>(guardedValue, (value) => GetShareResourcesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      shareId: (() { final guardedValue = map['shareId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
