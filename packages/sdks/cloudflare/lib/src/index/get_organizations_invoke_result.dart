// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organizations_containing.dart';
import 'get_organizations_name.dart';
import 'get_organizations_parent.dart';
import 'get_organizations_result.dart';

/// Result data returned by getOrganizations.
class GetOrganizationsInvokeResult {
  final GetOrganizationsContaining? containing;
  /// Only return organizations with the specified IDs (ex. id=foo&id=bar). Send multiple elements
  /// by repeating the query value.
  final List<String>? ids;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  final GetOrganizationsName? name;
  /// The amount of items to return. Defaults to 10.
  final int? pageSize;
  /// An opaque token returned from the last list response that when
  /// provided will retrieve the next page.
  final String? pageToken;
  final GetOrganizationsParent? parent;
  final List<GetOrganizationsResult>? results;

  /// Creates a new [GetOrganizationsInvokeResult].
  /// [containing] Optional.
  /// [ids] Only return organizations with the specified IDs (ex. id=foo&id=bar). Send multiple elements
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] Optional.
  /// [pageSize] The amount of items to return. Defaults to 10.
  /// [pageToken] An opaque token returned from the last list response that when
  /// [parent] Optional.
  /// [results] Optional.
  const GetOrganizationsInvokeResult({
    this.containing,
    this.ids,
    this.maxItems,
    this.name,
    this.pageSize,
    this.pageToken,
    this.parent,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containing': ?containing?.toMap(),
      'ids': ?ids,
      'maxItems': ?maxItems,
      'name': ?name?.toMap(),
      'pageSize': ?pageSize,
      'pageToken': ?pageToken,
      'parent': ?parent?.toMap(),
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetOrganizationsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetOrganizationsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationsInvokeResult(
      containing: (() { final guardedValue = map['containing']; if (guardedValue == null) return null; return GetOrganizationsContaining.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return GetOrganizationsName.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      pageToken: (() { final guardedValue = map['pageToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return GetOrganizationsParent.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetOrganizationsResult>(guardedValue, (value) => GetOrganizationsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
