// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_workers_scripts_get_workers_scripts_args_doc}
/// Arguments for getWorkersScripts.
/// {@endtemplate}
/// {@macro pulumi_index_get_workers_scripts_get_workers_scripts_args_doc}
class GetWorkersScriptsArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Filter scripts by tags. Format: comma-separated list of tag:allowed pairs where allowed is 'yes' or 'no'.
  final pulumi.Input<String?>? tags;

  /// Creates a new [GetWorkersScriptsArgs].
  /// [accountId] Identifier.
  /// [maxItems] Max items to fetch, default: 1000
  /// [tags] Filter scripts by tags. Format: comma-separated list of tag:allowed pairs where allowed is 'yes' or 'no'.
  const GetWorkersScriptsArgs({
    this.accountId,
    this.maxItems,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'tags': ?tags,
    };
  }

  factory GetWorkersScriptsArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkersScriptsArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
