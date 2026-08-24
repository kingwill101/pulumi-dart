// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEmailSecurityImpersonationRegistryFilter {
  /// The sorting direction.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Field to sort by.
  /// Available values: "name", "email", "createdAt".
  final pulumi.Input<String?>? order;
  /// Available values: "A1S*INTERNAL", "SNOOPY-CASB*OFFICE*365", "SNOOPY-OFFICE*365", "SNOOPY-GOOGLE_DIRECTORY".
  final pulumi.Input<String?>? provenance;
  /// Search term for filtering records. Behavior may change.
  final pulumi.Input<String?>? search;

  /// Creates a new [GetEmailSecurityImpersonationRegistryFilter].
  /// [direction] The sorting direction.
  /// [order] Field to sort by.
  /// [provenance] Available values: "A1S*INTERNAL", "SNOOPY-CASB*OFFICE*365", "SNOOPY-OFFICE*365", "SNOOPY-GOOGLE_DIRECTORY".
  /// [search] Search term for filtering records. Behavior may change.
  const GetEmailSecurityImpersonationRegistryFilter({
    this.direction,
    this.order,
    this.provenance,
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'order': ?order,
      'provenance': ?provenance,
      'search': ?search,
    };
  }

  factory GetEmailSecurityImpersonationRegistryFilter.fromMap(Map<String, dynamic> map) {
    return GetEmailSecurityImpersonationRegistryFilter(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provenance: (() { final guardedValue = map['provenance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
