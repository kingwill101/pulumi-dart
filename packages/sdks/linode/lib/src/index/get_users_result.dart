// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_users_filter.dart';
import 'get_users_user.dart';

/// Result data returned by getUsers.
class GetUsersResult {
  final List<GetUsersFilter>? filters;

  /// The ID of entity this grant applies to.
  final String id;
  final String? order;
  final String? orderBy;
  final List<GetUsersUser> users;

  /// Creates a new [GetUsersResult].
  /// [filters] Optional.
  /// [id] The ID of entity this grant applies to.
  /// [order] Optional.
  /// [orderBy] Optional.
  /// [users] Required.
  GetUsersResult({
    this.filters,
    required this.id,
    this.order,
    this.orderBy,
    required this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() {
        final guardedValue = filters;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<GetUsersFilter, Map<String, dynamic>>(
          guardedValue,
          (value) => value.toMap(),
        );
      })(),
      'id': id,
      'order': ?order,
      'orderBy': ?orderBy,
      'users': pulumi.Input.encodeList<GetUsersUser, Map<String, dynamic>>(
        users,
        (value) => value.toMap(),
      ),
    };
  }

  factory GetUsersResult.fromMap(Map<String, dynamic> map) {
    return GetUsersResult(
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<GetUsersFilter>(
          guardedValue,
          (value) =>
              GetUsersFilter.fromMap((value as Map).cast<String, dynamic>()),
        );
      })(),
      id: map['id'] as String,
      order: (() {
        final guardedValue = map['order'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      orderBy: (() {
        final guardedValue = map['orderBy'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      users: pulumi.Input.decodeList<GetUsersUser>(
        map['users']!,
        (value) => GetUsersUser.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
