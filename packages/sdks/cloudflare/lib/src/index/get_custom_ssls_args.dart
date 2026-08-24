// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_custom_ssls_get_custom_ssls_args_doc}
/// Arguments for getCustomSsls.
/// {@endtemplate}
/// {@macro pulumi_index_get_custom_ssls_get_custom_ssls_args_doc}
class GetCustomSslsArgs {
  /// Whether to match all search requirements or at least one (any).
  /// Available values: "any", "all".
  final pulumi.Input<String?>? match;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Status of the zone's custom SSL.
  /// Available values: "active", "expired", "deleted", "pending", "initializing".
  final pulumi.Input<String?>? status;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetCustomSslsArgs].
  /// [match] Whether to match all search requirements or at least one (any).
  /// [maxItems] Max items to fetch, default: 1000
  /// [status] Status of the zone's custom SSL.
  /// [zoneId] Identifier.
  const GetCustomSslsArgs({
    this.match,
    this.maxItems,
    this.status,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'match': ?match,
      'maxItems': ?maxItems,
      'status': ?status,
      'zoneId': ?zoneId,
    };
  }

  factory GetCustomSslsArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomSslsArgs(
      match: (() { final guardedValue = map['match']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
