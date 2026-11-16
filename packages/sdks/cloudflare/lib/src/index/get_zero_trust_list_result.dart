// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_list_filter.dart';
import 'get_zero_trust_list_item.dart';

/// Result data returned by getZeroTrustList.
class GetZeroTrustListResult {
  final String? accountId;
  final String? createdAt;
  final String? description;
  final GetZeroTrustListFilter? filter;
  final String? id;
  final List<GetZeroTrustListItem>? items;
  final double? listCount;
  final String? listId;
  final String? name;
  final String? type;
  final String? updatedAt;

  /// Creates a new [GetZeroTrustListResult].
  /// [accountId] Optional.
  /// [createdAt] Optional.
  /// [description] Optional.
  /// [filter] Optional.
  /// [id] Optional.
  /// [items] Optional.
  /// [listCount] Optional.
  /// [listId] Optional.
  /// [name] Optional.
  /// [type] Optional.
  /// [updatedAt] Optional.
  const GetZeroTrustListResult({
    this.accountId,
    this.createdAt,
    this.description,
    this.filter,
    this.id,
    this.items,
    this.listCount,
    this.listId,
    this.name,
    this.type,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'description': ?description,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'items': ?(() { final guardedValue = items; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustListItem, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'listCount': ?listCount,
      'listId': ?listId,
      'name': ?name,
      'type': ?type,
      'updatedAt': ?updatedAt,
    };
  }

  factory GetZeroTrustListResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustListResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetZeroTrustListFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustListItem>(guardedValue, (value) => GetZeroTrustListItem.fromMap((value as Map).cast<String, dynamic>())); })(),
      listCount: (() { final guardedValue = map['listCount']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      listId: (() { final guardedValue = map['listId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
