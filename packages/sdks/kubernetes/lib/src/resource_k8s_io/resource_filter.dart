// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'named_resources_filter.dart';

/// ResourceFilter is a filter for resources from one particular driver.
class ResourceFilter {
  /// DriverName is the name used by the DRA driver kubelet plugin.
  final pulumi.Input<String>? driverName;
  /// NamedResources describes a resource filter using the named resources model.
  final pulumi.Input<NamedResourcesFilter>? namedResources;

  /// Creates a new [ResourceFilter].
  /// [driverName] DriverName is the name used by the DRA driver kubelet plugin.
  /// [namedResources] NamedResources describes a resource filter using the named resources model.
  ResourceFilter({
    this.driverName,
    this.namedResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'driverName': ?driverName,
      'namedResources': ?pulumi.Input.mapOptionalInputValue<NamedResourcesFilter, Map<String, dynamic>>(namedResources, (value) => value.toMap()),
    };
  }

  factory ResourceFilter.fromMap(Map<String, dynamic> map) {
    return ResourceFilter(
      driverName: map['driverName'] == null ? null : (map['driverName']! as String).input(),
      namedResources: map['namedResources'] == null ? null : (NamedResourcesFilter.fromMap((map['namedResources']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

