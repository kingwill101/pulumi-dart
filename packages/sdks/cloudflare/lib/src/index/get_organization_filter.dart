// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organization_filter_containing.dart';
import 'get_organization_filter_name.dart';
import 'get_organization_filter_parent.dart';

class GetOrganizationFilter {
  final pulumi.Input<GetOrganizationFilterContaining?>? containing;
  /// Only return organizations with the specified IDs (ex. id=foo&id=bar). Send multiple elements
  /// by repeating the query value.
  final pulumi.Input<List<String>?>? ids;
  final pulumi.Input<GetOrganizationFilterName?>? name;
  /// The amount of items to return. Defaults to 10.
  final pulumi.Input<int?>? pageSize;
  /// An opaque token returned from the last list response that when
  /// provided will retrieve the next page.
  final pulumi.Input<String?>? pageToken;
  final pulumi.Input<GetOrganizationFilterParent?>? parent;

  /// Creates a new [GetOrganizationFilter].
  /// [containing] Optional.
  /// [ids] Only return organizations with the specified IDs (ex. id=foo&id=bar). Send multiple elements
  /// [name] Optional.
  /// [pageSize] The amount of items to return. Defaults to 10.
  /// [pageToken] An opaque token returned from the last list response that when
  /// [parent] Optional.
  const GetOrganizationFilter({
    this.containing,
    this.ids,
    this.name,
    this.pageSize,
    this.pageToken,
    this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containing': ?pulumi.Input.mapOptionalInputValue<GetOrganizationFilterContaining, Map<String, dynamic>>(containing, (value) => value.toMap()),
      'ids': ?ids,
      'name': ?pulumi.Input.mapOptionalInputValue<GetOrganizationFilterName, Map<String, dynamic>>(name, (value) => value.toMap()),
      'pageSize': ?pageSize,
      'pageToken': ?pageToken,
      'parent': ?pulumi.Input.mapOptionalInputValue<GetOrganizationFilterParent, Map<String, dynamic>>(parent, (value) => value.toMap()),
    };
  }

  factory GetOrganizationFilter.fromMap(Map<String, dynamic> map) {
    return GetOrganizationFilter(
      containing: (() { final guardedValue = map['containing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetOrganizationFilterContaining.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetOrganizationFilterName.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      pageToken: (() { final guardedValue = map['pageToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetOrganizationFilterParent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
