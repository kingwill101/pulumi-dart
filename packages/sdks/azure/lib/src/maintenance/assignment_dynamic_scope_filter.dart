// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assignment_dynamic_scope_filter_tag.dart';

class AssignmentDynamicScopeFilter {
  /// Specifies a list of locations to scope the query to.
  final List<String>? locations;
  /// Specifies a list of allowed operating systems. Possible values are `Linux` and `Windows`.
  final List<String>? osTypes;
  /// Specifies a list of allowed resource groups.
  final List<String>? resourceGroups;
  /// Specifies a list of allowed resources. Possible values are `Microsoft.Compute/virtualMachines` and `Microsoft.HybridCompute/machines`.
  final List<String>? resourceTypes;
  /// Filter VMs by `Any` or `All` specified tags. Defaults to `Any`.
  final String? tagFilter;
  /// One or more `tags` blocks as defined below.
  final List<AssignmentDynamicScopeFilterTag>? tags;

  /// Creates a new [AssignmentDynamicScopeFilter].
  /// [locations] Specifies a list of locations to scope the query to.
  /// [osTypes] Specifies a list of allowed operating systems. Possible values are `Linux` and `Windows`.
  /// [resourceGroups] Specifies a list of allowed resource groups.
  /// [resourceTypes] Specifies a list of allowed resources. Possible values are `Microsoft.Compute/virtualMachines` and `Microsoft.HybridCompute/machines`.
  /// [tagFilter] Filter VMs by `Any` or `All` specified tags. Defaults to `Any`.
  /// [tags] One or more `tags` blocks as defined below.
  AssignmentDynamicScopeFilter({
    this.locations,
    this.osTypes,
    this.resourceGroups,
    this.resourceTypes,
    this.tagFilter,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': ?locations,
      'osTypes': ?osTypes,
      'resourceGroups': ?resourceGroups,
      'resourceTypes': ?resourceTypes,
      'tagFilter': ?tagFilter,
      'tags': ?tags == null ? null : pulumi.Input.encodeList<AssignmentDynamicScopeFilterTag, Map<String, dynamic>>(tags!, (value) => value.toMap()),
    };
  }

  factory AssignmentDynamicScopeFilter.fromMap(Map<String, dynamic> map) {
    return AssignmentDynamicScopeFilter(
      locations: map['locations'] == null ? null : (map['locations'] as List).cast<String>(),
      osTypes: map['osTypes'] == null ? null : (map['osTypes'] as List).cast<String>(),
      resourceGroups: map['resourceGroups'] == null ? null : (map['resourceGroups'] as List).cast<String>(),
      resourceTypes: map['resourceTypes'] == null ? null : (map['resourceTypes'] as List).cast<String>(),
      tagFilter: map['tagFilter'] == null ? null : map['tagFilter'] as String,
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<AssignmentDynamicScopeFilterTag>(map['tags'], (value) => AssignmentDynamicScopeFilterTag.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

