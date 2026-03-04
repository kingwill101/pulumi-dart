// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gce_instance_filter.dart';

/// Message describing resource filters
class ResourceFilter {
  /// Filter compute engine resource
  final pulumi.Input<GceInstanceFilter>? gceInstanceFilter;

  /// The label used for filter resource
  final pulumi.Input<Map<String, String>>? inclusionLabels;

  /// The id pattern for filter resource
  final pulumi.Input<List<String>>? resourceIdPatterns;

  /// The scopes of evaluation resource
  final pulumi.Input<List<String>>? scopes;

  /// Creates a new [ResourceFilter].
  /// [gceInstanceFilter] Filter compute engine resource
  /// [inclusionLabels] The label used for filter resource
  /// [resourceIdPatterns] The id pattern for filter resource
  /// [scopes] The scopes of evaluation resource
  ResourceFilter({
    this.gceInstanceFilter,
    this.inclusionLabels,
    this.resourceIdPatterns,
    this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gceInstanceFilter':
          ?pulumi.Input.mapOptionalInputValue<
            GceInstanceFilter,
            Map<String, dynamic>
          >(gceInstanceFilter, (value) => value.toMap()),
      'inclusionLabels': ?inclusionLabels,
      'resourceIdPatterns': ?resourceIdPatterns,
      'scopes': ?scopes,
    };
  }

  factory ResourceFilter.fromMap(Map<String, dynamic> map) {
    return ResourceFilter(
      gceInstanceFilter: (() {
        final guardedValue = map['gceInstanceFilter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GceInstanceFilter.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      inclusionLabels: (() {
        final guardedValue = map['inclusionLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      resourceIdPatterns: (() {
        final guardedValue = map['resourceIdPatterns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      scopes: (() {
        final guardedValue = map['scopes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
