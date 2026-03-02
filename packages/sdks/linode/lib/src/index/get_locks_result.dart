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
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetLocksFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'locks': pulumi.Input.encodeList<GetLocksLock, Map<String, dynamic>>(locks, (value) => value.toMap()),
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetLocksResult.fromMap(Map<String, dynamic> map) {
    return GetLocksResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetLocksFilter>(map['filters']!, (value) => GetLocksFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      locks: pulumi.Input.decodeList<GetLocksLock>(map['locks'], (value) => GetLocksLock.fromMap((value as Map).cast<String, dynamic>())),
      order: map['order'] == null ? null : map['order']! as String,
      orderBy: map['orderBy'] == null ? null : map['orderBy']! as String,
    );
  }
}

