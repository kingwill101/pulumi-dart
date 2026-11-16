// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organizations_containing.dart';
import 'get_organizations_member.dart';
import 'get_organizations_name.dart';
import 'get_organizations_parent.dart';

/// {@template pulumi_index_get_organizations_get_organizations_args_doc}
/// Arguments for getOrganizations.
/// {@endtemplate}
/// {@macro pulumi_index_get_organizations_get_organizations_args_doc}
class GetOrganizationsArgs {
  final pulumi.Input<GetOrganizationsContaining?>? containing;
  /// Sort direction for the `orderBy` field. Defaults to `asc` when `orderBy` is
  /// specified.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Only return organizations with the specified IDs (ex. id=foo&id=bar). Send multiple elements
  /// by repeating the query value.
  final pulumi.Input<List<String>?>? ids;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  final pulumi.Input<GetOrganizationsMember?>? member;
  final pulumi.Input<GetOrganizationsName?>? name;
  /// Field to order results by. Currently supported values: `name`.
  /// When not specified, results are ordered by hierarchy.
  /// Available values: "name".
  final pulumi.Input<String?>? orderBy;
  /// The amount of items to return. Defaults to 10.
  final pulumi.Input<int?>? pageSize;
  /// An opaque token returned from the last list response that when
  /// provided will retrieve the next page.
  final pulumi.Input<String?>? pageToken;
  final pulumi.Input<GetOrganizationsParent?>? parent;

  /// Creates a new [GetOrganizationsArgs].
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
  const GetOrganizationsArgs({
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
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containing': ?pulumi.Input.mapOptionalInputValue<GetOrganizationsContaining, Map<String, dynamic>>(containing, (value) => value.toMap()),
      'direction': ?direction,
      'ids': ?ids,
      'maxItems': ?maxItems,
      'member': ?pulumi.Input.mapOptionalInputValue<GetOrganizationsMember, Map<String, dynamic>>(member, (value) => value.toMap()),
      'name': ?pulumi.Input.mapOptionalInputValue<GetOrganizationsName, Map<String, dynamic>>(name, (value) => value.toMap()),
      'orderBy': ?orderBy,
      'pageSize': ?pageSize,
      'pageToken': ?pageToken,
      'parent': ?pulumi.Input.mapOptionalInputValue<GetOrganizationsParent, Map<String, dynamic>>(parent, (value) => value.toMap()),
    };
  }

  factory GetOrganizationsArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationsArgs(
      containing: (() { final guardedValue = map['containing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetOrganizationsContaining.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      member: (() { final guardedValue = map['member']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetOrganizationsMember.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetOrganizationsName.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      pageToken: (() { final guardedValue = map['pageToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetOrganizationsParent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
