// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_d1_databases_get_d1_databases_args_doc}
/// Arguments for getD1Databases.
/// {@endtemplate}
/// {@macro pulumi_index_get_d1_databases_get_d1_databases_args_doc}
class GetD1DatabasesArgs {
  /// Account identifier tag.
  final pulumi.Input<String?>? accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// a database name to search for.
  final pulumi.Input<String?>? name;

  /// Creates a new [GetD1DatabasesArgs].
  /// [accountId] Account identifier tag.
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] a database name to search for.
  const GetD1DatabasesArgs({
    this.accountId,
    this.maxItems,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'name': ?name,
    };
  }

  factory GetD1DatabasesArgs.fromMap(Map<String, dynamic> map) {
    return GetD1DatabasesArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
