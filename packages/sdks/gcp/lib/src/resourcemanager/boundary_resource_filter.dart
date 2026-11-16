// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'boundary_resource_filter_tag_filter.dart';

class BoundaryResourceFilter {
  /// A tag based filter. A project must match it to be included in the
  /// Boundary.
  /// Structure is documented below.
  final pulumi.Input<BoundaryResourceFilterTagFilter> tagFilter;

  /// Creates a new [BoundaryResourceFilter].
  /// [tagFilter] A tag based filter. A project must match it to be included in the
  const BoundaryResourceFilter({
    required this.tagFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tagFilter': pulumi.Input.mapInputValue<BoundaryResourceFilterTagFilter, Map<String, dynamic>>(tagFilter, (value) => value.toMap()),
    };
  }

  factory BoundaryResourceFilter.fromMap(Map<String, dynamic> map) {
    return BoundaryResourceFilter(
      tagFilter: pulumi.Input.fromValue(BoundaryResourceFilterTagFilter.fromMap((map['tagFilter']! as Map).cast<String, dynamic>())),
    );
  }
}
