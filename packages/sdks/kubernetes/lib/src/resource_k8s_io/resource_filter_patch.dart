// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'named_resources_filter_patch.dart';

/// ResourceFilter is a filter for resources from one particular driver.
class ResourceFilterPatch {
  /// DriverName is the name used by the DRA driver kubelet plugin.
  final pulumi.Input<String?>? driverName;
  /// NamedResources describes a resource filter using the named resources model.
  final pulumi.Input<NamedResourcesFilterPatch?>? namedResources;

  /// Creates a new [ResourceFilterPatch].
  /// [driverName] DriverName is the name used by the DRA driver kubelet plugin.
  /// [namedResources] NamedResources describes a resource filter using the named resources model.
  const ResourceFilterPatch({
    this.driverName,
    this.namedResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'driverName': ?driverName,
      'namedResources': ?pulumi.Input.mapOptionalInputValue<NamedResourcesFilterPatch, Map<String, dynamic>>(namedResources, (value) => value.toMap()),
    };
  }

  factory ResourceFilterPatch.fromMap(Map<String, dynamic> map) {
    return ResourceFilterPatch(
      driverName: (() { final guardedValue = map['driverName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namedResources: (() { final guardedValue = map['namedResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NamedResourcesFilterPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
