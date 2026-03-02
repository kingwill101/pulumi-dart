// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesMemorydevSource {
  /// Configures the alignment size for the memory device's source, specifying how it should align in memory.
  final pulumi.Input<double>? alignSize;
  /// Sets the unit of measurement for the alignment size of the memory device's source.
  final pulumi.Input<String>? alignSizeUnit;
  /// Configures the node mask for the memory device's source, determining which memory nodes are accessible.
  final pulumi.Input<String>? nodeMask;
  /// Sets the page size for the memory device's source, configuring how memory is divided into pages.
  final pulumi.Input<double>? pageSize;
  /// Specifies the unit for the page size of the memory device's source.
  final pulumi.Input<String>? pageSizeUnit;
  /// Configures the path for the backing storage of the memory device's source.
  final pulumi.Input<String>? path;
  /// Sets the PMEM (Persistent Memory) configuration for the memory device source, indicating if it should use persistent memory.
  final pulumi.Input<bool>? pmem;

  /// Creates a new [DomainDevicesMemorydevSource].
  /// [alignSize] Configures the alignment size for the memory device's source, specifying how it should align in memory.
  /// [alignSizeUnit] Sets the unit of measurement for the alignment size of the memory device's source.
  /// [nodeMask] Configures the node mask for the memory device's source, determining which memory nodes are accessible.
  /// [pageSize] Sets the page size for the memory device's source, configuring how memory is divided into pages.
  /// [pageSizeUnit] Specifies the unit for the page size of the memory device's source.
  /// [path] Configures the path for the backing storage of the memory device's source.
  /// [pmem] Sets the PMEM (Persistent Memory) configuration for the memory device source, indicating if it should use persistent memory.
  DomainDevicesMemorydevSource({
    this.alignSize,
    this.alignSizeUnit,
    this.nodeMask,
    this.pageSize,
    this.pageSizeUnit,
    this.path,
    this.pmem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alignSize': ?alignSize,
      'alignSizeUnit': ?alignSizeUnit,
      'nodeMask': ?nodeMask,
      'pageSize': ?pageSize,
      'pageSizeUnit': ?pageSizeUnit,
      'path': ?path,
      'pmem': ?pmem,
    };
  }

  factory DomainDevicesMemorydevSource.fromMap(Map<String, dynamic> map) {
    return DomainDevicesMemorydevSource(
      alignSize: map['alignSize'] == null ? null : (map['alignSize'] as double).input(),
      alignSizeUnit: map['alignSizeUnit'] == null ? null : (map['alignSizeUnit'] as String).input(),
      nodeMask: map['nodeMask'] == null ? null : (map['nodeMask'] as String).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize'] as double).input(),
      pageSizeUnit: map['pageSizeUnit'] == null ? null : (map['pageSizeUnit'] as String).input(),
      path: map['path'] == null ? null : (map['path'] as String).input(),
      pmem: map['pmem'] == null ? null : (map['pmem'] as bool).input(),
    );
  }
}

