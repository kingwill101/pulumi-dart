// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainFeaturesHpt {
  /// Configures the maximum page size supported by the hypervisor for the HPT feature.
  final pulumi.Input<String>? maxPageSize;
  /// Sets the unit for the maximum page size configured for the HPT feature.
  final pulumi.Input<String>? maxPageSizeUnit;
  /// Controls whether the resizing of physical pages for the HPT feature is allowed.
  final pulumi.Input<String>? resizing;

  /// Creates a new [DomainFeaturesHpt].
  /// [maxPageSize] Configures the maximum page size supported by the hypervisor for the HPT feature.
  /// [maxPageSizeUnit] Sets the unit for the maximum page size configured for the HPT feature.
  /// [resizing] Controls whether the resizing of physical pages for the HPT feature is allowed.
  DomainFeaturesHpt({
    this.maxPageSize,
    this.maxPageSizeUnit,
    this.resizing,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxPageSize': ?maxPageSize,
      'maxPageSizeUnit': ?maxPageSizeUnit,
      'resizing': ?resizing,
    };
  }

  factory DomainFeaturesHpt.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesHpt(
      maxPageSize: map['maxPageSize'] == null ? null : (map['maxPageSize'] as String).input(),
      maxPageSizeUnit: map['maxPageSizeUnit'] == null ? null : (map['maxPageSizeUnit'] as String).input(),
      resizing: map['resizing'] == null ? null : (map['resizing'] as String).input(),
    );
  }
}

