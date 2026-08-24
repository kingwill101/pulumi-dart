// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_snippet_list_get_snippet_list_args_doc}
/// Arguments for getSnippetList.
/// {@endtemplate}
/// {@macro pulumi_index_get_snippet_list_get_snippet_list_args_doc}
class GetSnippetListArgs {
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Use this field to specify the unique ID of the zone.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetSnippetListArgs].
  /// [maxItems] Max items to fetch, default: 1000
  /// [zoneId] Use this field to specify the unique ID of the zone.
  const GetSnippetListArgs({
    this.maxItems,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxItems': ?maxItems,
      'zoneId': ?zoneId,
    };
  }

  factory GetSnippetListArgs.fromMap(Map<String, dynamic> map) {
    return GetSnippetListArgs(
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
