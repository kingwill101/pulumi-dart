// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_workers_get_workers_args_doc}
/// Arguments for getWorkers.
/// {@endtemplate}
/// {@macro pulumi_index_get_workers_get_workers_args_doc}
class GetWorkersArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Sort direction.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? order;
  /// Property to sort results by.
  /// Available values: "deployed*on", "updated*on", "createdOn", "name".
  final pulumi.Input<String?>? orderBy;

  /// Creates a new [GetWorkersArgs].
  /// [accountId] Identifier.
  /// [maxItems] Max items to fetch, default: 1000
  /// [order] Sort direction.
  /// [orderBy] Property to sort results by.
  const GetWorkersArgs({
    this.accountId,
    this.maxItems,
    this.order,
    this.orderBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetWorkersArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkersArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
