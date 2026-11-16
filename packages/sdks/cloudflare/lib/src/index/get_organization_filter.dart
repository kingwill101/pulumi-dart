// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organization_filter_containing.dart';
import 'get_organization_filter_member.dart';
import 'get_organization_filter_name.dart';
import 'get_organization_filter_parent.dart';

class GetOrganizationFilter {
  final pulumi.Input<GetOrganizationFilterContaining?>? containing;
  /// Sort direction for the `orderBy` field. Defaults to `asc` when `orderBy` is
  /// specified.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Only return organizations with the specified IDs (ex. id=foo&id=bar). Send multiple elements
  /// by repeating the query value.
  final pulumi.Input<List<String>?>? ids;
  final pulumi.Input<GetOrganizationFilterMember?>? member;
  final pulumi.Input<GetOrganizationFilterName?>? name;
  /// Field to order results by. Currently supported values: `name`.
  /// When not specified, results are ordered by hierarchy.
  /// Available values: "name".
  final pulumi.Input<String?>? orderBy;
  /// The amount of items to return. Defaults to 10.
  final pulumi.Input<int?>? pageSize;
  /// An opaque token returned from the last list response that when
  /// provided will retrieve the next page.
  final pulumi.Input<String?>? pageToken;
  final pulumi.Input<GetOrganizationFilterParent?>? parent;

  /// Creates a new [GetOrganizationFilter].
  /// [containing] Optional.
  /// [direction] Sort direction for the `orderBy` field. Defaults to `asc` when `orderBy` is
  /// [ids] Only return organizations with the specified IDs (ex. id=foo&id=bar). Send multiple elements
  /// [member] Optional.
  /// [name] Optional.
  /// [orderBy] Field to order results by. Currently supported values: `name`.
  /// [pageSize] The amount of items to return. Defaults to 10.
  /// [pageToken] An opaque token returned from the last list response that when
  /// [parent] Optional.
  const GetOrganizationFilter({
    this.containing,
    this.direction,
    this.ids,
    this.member,
    this.name,
    this.orderBy,
    this.pageSize,
    this.pageToken,
    this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containing': ?pulumi.Input.mapOptionalInputValue<GetOrganizationFilterContaining, Map<String, dynamic>>(containing, (value) => value.toMap()),
      'direction': ?direction,
      'ids': ?ids,
      'member': ?pulumi.Input.mapOptionalInputValue<GetOrganizationFilterMember, Map<String, dynamic>>(member, (value) => value.toMap()),
      'name': ?pulumi.Input.mapOptionalInputValue<GetOrganizationFilterName, Map<String, dynamic>>(name, (value) => value.toMap()),
      'orderBy': ?orderBy,
      'pageSize': ?pageSize,
      'pageToken': ?pageToken,
      'parent': ?pulumi.Input.mapOptionalInputValue<GetOrganizationFilterParent, Map<String, dynamic>>(parent, (value) => value.toMap()),
    };
  }

  factory GetOrganizationFilter.fromMap(Map<String, dynamic> map) {
    return GetOrganizationFilter(
      containing: (() { final guardedValue = map['containing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetOrganizationFilterContaining.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      member: (() { final guardedValue = map['member']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetOrganizationFilterMember.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetOrganizationFilterName.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      pageToken: (() { final guardedValue = map['pageToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetOrganizationFilterParent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
