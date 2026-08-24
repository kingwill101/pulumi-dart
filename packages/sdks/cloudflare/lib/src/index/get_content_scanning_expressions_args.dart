// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_content_scanning_expressions_get_content_scanning_expressions_args_doc}
/// Arguments for getContentScanningExpressions.
/// {@endtemplate}
/// {@macro pulumi_index_get_content_scanning_expressions_get_content_scanning_expressions_args_doc}
class GetContentScanningExpressionsArgs {
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Defines an identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetContentScanningExpressionsArgs].
  /// [maxItems] Max items to fetch, default: 1000
  /// [zoneId] Defines an identifier.
  const GetContentScanningExpressionsArgs({
    this.maxItems,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxItems': ?maxItems,
      'zoneId': ?zoneId,
    };
  }

  factory GetContentScanningExpressionsArgs.fromMap(Map<String, dynamic> map) {
    return GetContentScanningExpressionsArgs(
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
