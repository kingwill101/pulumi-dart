// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_locks_filter.dart';
import 'get_locks_lock.dart';

/// Result data returned by getLocks.
class GetLocksResult {
  final List<GetLocksFilter>? filters;
  /// The unique ID of the Lock.
  final String id;
  /// A list of Linode Locks that match the filter criteria.
  final List<GetLocksLock> locks;
  final String? order;
  final String? orderBy;

  /// Creates a new [GetLocksResult].
  /// [filters] Optional.
  /// [id] The unique ID of the Lock.
  /// [locks] A list of Linode Locks that match the filter criteria.
  /// [order] Optional.
  /// [orderBy] Optional.
  GetLocksResult({
    this.filters,
    required this.id,
    required this.locks,
    this.order,
    this.orderBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLocksFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'locks': pulumi.Input.encodeList<GetLocksLock, Map<String, dynamic>>(locks, (value) => value.toMap()),
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetLocksResult.fromMap(Map<String, dynamic> map) {
    return GetLocksResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLocksFilter>(guardedValue, (value) => GetLocksFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      locks: pulumi.Input.decodeList<GetLocksLock>(map['locks']!, (value) => GetLocksLock.fromMap((value as Map).cast<String, dynamic>())),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

