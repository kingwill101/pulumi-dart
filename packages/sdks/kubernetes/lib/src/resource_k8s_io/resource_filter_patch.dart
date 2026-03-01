// ignore_for_file: unused_element, unnecessary_cast

import 'named_resources_filter_patch.dart';

/// ResourceFilter is a filter for resources from one particular driver.
class ResourceFilterPatch {
  /// DriverName is the name used by the DRA driver kubelet plugin.
  final String? driverName;
  /// NamedResources describes a resource filter using the named resources model.
  final NamedResourcesFilterPatch? namedResources;

  /// Creates a new [ResourceFilterPatch].
  /// [driverName] DriverName is the name used by the DRA driver kubelet plugin.
  /// [namedResources] NamedResources describes a resource filter using the named resources model.
  ResourceFilterPatch({
    this.driverName,
    this.namedResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'driverName': ?driverName,
      'namedResources': ?namedResources == null ? null : namedResources!.toMap(),
    };
  }

  factory ResourceFilterPatch.fromMap(Map<String, dynamic> map) {
    return ResourceFilterPatch(
      driverName: map['driverName'] == null ? null : map['driverName'] as String,
      namedResources: map['namedResources'] == null ? null : NamedResourcesFilterPatch.fromMap((map['namedResources'] as Map).cast<String, dynamic>()),
    );
  }
}

