// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_spectrum_applications_result.dart';

/// Result data returned by getSpectrumApplications.
class GetSpectrumApplicationsInvokeResult {
  /// Sets the direction by which results are ordered.
  /// Available values: "asc", "desc".
  final String? direction;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Application field by which results are ordered.
  /// Available values: "protocol", "app*id", "created*on", "modifiedOn", "dns".
  final String? order;
  /// The items returned by the data source
  final List<GetSpectrumApplicationsResult>? results;
  /// Zone identifier.
  final String? zoneId;

  /// Creates a new [GetSpectrumApplicationsInvokeResult].
  /// [direction] Sets the direction by which results are ordered.
  /// [maxItems] Max items to fetch, default: 1000
  /// [order] Application field by which results are ordered.
  /// [results] The items returned by the data source
  /// [zoneId] Zone identifier.
  const GetSpectrumApplicationsInvokeResult({
    this.direction,
    this.maxItems,
    this.order,
    this.results,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'maxItems': ?maxItems,
      'order': ?order,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSpectrumApplicationsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'zoneId': ?zoneId,
    };
  }

  factory GetSpectrumApplicationsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetSpectrumApplicationsInvokeResult(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSpectrumApplicationsResult>(guardedValue, (value) => GetSpectrumApplicationsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
