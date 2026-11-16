// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organizations_containing.dart';
import 'get_organizations_member.dart';
import 'get_organizations_name.dart';
import 'get_organizations_parent.dart';
import 'get_organizations_result.dart';

/// Result data returned by getOrganizations.
class GetOrganizationsInvokeResult {
  final GetOrganizationsContaining? containing;
  /// Sort direction for the `orderBy` field. Defaults to `asc` when `orderBy` is
  /// specified.
  /// Available values: "asc", "desc".
  final String? direction;
  /// Only return organizations with the specified IDs (ex. id=foo&id=bar). Send multiple elements
  /// by repeating the query value.
  final List<String>? ids;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  final GetOrganizationsMember? member;
  final GetOrganizationsName? name;
  /// Field to order results by. Currently supported values: `name`.
  /// When not specified, results are ordered by hierarchy.
  /// Available values: "name".
  final String? orderBy;
  /// The amount of items to return. Defaults to 10.
  final int? pageSize;
  /// An opaque token returned from the last list response that when
  /// provided will retrieve the next page.
  final String? pageToken;
  final GetOrganizationsParent? parent;
  final List<GetOrganizationsResult>? results;

  /// Creates a new [GetOrganizationsInvokeResult].
  /// [containing] Optional.
  /// [direction] Sort direction for the `orderBy` field. Defaults to `asc` when `orderBy` is
  /// [ids] Only return organizations with the specified IDs (ex. id=foo&id=bar). Send multiple elements
  /// [maxItems] Max items to fetch, default: 1000
  /// [member] Optional.
  /// [name] Optional.
  /// [orderBy] Field to order results by. Currently supported values: `name`.
  /// [pageSize] The amount of items to return. Defaults to 10.
  /// [pageToken] An opaque token returned from the last list response that when
  /// [parent] Optional.
  /// [results] Optional.
  const GetOrganizationsInvokeResult({
    this.containing,
    this.direction,
    this.ids,
    this.maxItems,
    this.member,
    this.name,
    this.orderBy,
    this.pageSize,
    this.pageToken,
    this.parent,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containing': ?containing?.toMap(),
      'direction': ?direction,
      'ids': ?ids,
      'maxItems': ?maxItems,
      'member': ?member?.toMap(),
      'name': ?name?.toMap(),
      'orderBy': ?orderBy,
      'pageSize': ?pageSize,
      'pageToken': ?pageToken,
      'parent': ?parent?.toMap(),
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetOrganizationsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetOrganizationsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationsInvokeResult(
      containing: (() { final guardedValue = map['containing']; if (guardedValue == null) return null; return GetOrganizationsContaining.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      member: (() { final guardedValue = map['member']; if (guardedValue == null) return null; return GetOrganizationsMember.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return GetOrganizationsName.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      pageToken: (() { final guardedValue = map['pageToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return GetOrganizationsParent.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetOrganizationsResult>(guardedValue, (value) => GetOrganizationsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
