// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assignment_dynamic_scope_filter_tag.dart';

class AssignmentDynamicScopeFilter {
  /// Specifies a list of locations to scope the query to.
  final pulumi.Input<List<String>>? locations;
  /// Specifies a list of allowed operating systems. Possible values are `Linux` and `Windows`.
  final pulumi.Input<List<String>>? osTypes;
  /// Specifies a list of allowed resource groups.
  final pulumi.Input<List<String>>? resourceGroups;
  /// Specifies a list of allowed resources. Possible values are `Microsoft.Compute/virtualMachines` and `Microsoft.HybridCompute/machines`.
  final pulumi.Input<List<String>>? resourceTypes;
  /// Filter VMs by `Any` or `All` specified tags. Defaults to `Any`.
  final pulumi.Input<String>? tagFilter;
  /// One or more `tags` blocks as defined below.
  final pulumi.Input<List<AssignmentDynamicScopeFilterTag>>? tags;

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
      'tags': ?pulumi.Input.mapOptionalInputValue<List<AssignmentDynamicScopeFilterTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<AssignmentDynamicScopeFilterTag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AssignmentDynamicScopeFilter.fromMap(Map<String, dynamic> map) {
    return AssignmentDynamicScopeFilter(
      locations: map['locations'] == null ? null : ((map['locations'] as List).cast<String>()).input(),
      osTypes: map['osTypes'] == null ? null : ((map['osTypes'] as List).cast<String>()).input(),
      resourceGroups: map['resourceGroups'] == null ? null : ((map['resourceGroups'] as List).cast<String>()).input(),
      resourceTypes: map['resourceTypes'] == null ? null : ((map['resourceTypes'] as List).cast<String>()).input(),
      tagFilter: map['tagFilter'] == null ? null : (map['tagFilter'] as String).input(),
      tags: map['tags'] == null ? null : (pulumi.Input.decodeList<AssignmentDynamicScopeFilterTag>(map['tags'], (value) => AssignmentDynamicScopeFilterTag.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

