// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_os_nv_ram_source.dart';

class DomainOsNvRam {
  /// Sets the format type of the NVRAM storage.
  final pulumi.Input<String>? format;
  /// Specifies the non-volatile RAM configuration for the domain's NVRAM.
  final pulumi.Input<String> nvRam;
  /// Specifies the source of the backing store, determining its origin and how it is accessed.
  final pulumi.Input<DomainOsNvRamSource>? source;
  /// Defines the template configuration for the NVRAM.
  final pulumi.Input<String>? template;
  /// Specifies the format of the template for the NVRAM.
  final pulumi.Input<String>? templateFormat;

  /// Creates a new [DomainOsNvRam].
  /// [format] Sets the format type of the NVRAM storage.
  /// [nvRam] Specifies the non-volatile RAM configuration for the domain's NVRAM.
  /// [source] Specifies the source of the backing store, determining its origin and how it is accessed.
  /// [template] Defines the template configuration for the NVRAM.
  /// [templateFormat] Specifies the format of the template for the NVRAM.
  DomainOsNvRam({
    this.format,
    required this.nvRam,
    this.source,
    this.template,
    this.templateFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': ?format,
      'nvRam': nvRam,
      'source': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'template': ?template,
      'templateFormat': ?templateFormat,
    };
  }

  factory DomainOsNvRam.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRam(
      format: map['format'] == null ? null : (map['format'] as String).input(),
      nvRam: (map['nvRam'] as String).input(),
      source: map['source'] == null ? null : (DomainOsNvRamSource.fromMap((map['source'] as Map).cast<String, dynamic>())).input(),
      template: map['template'] == null ? null : (map['template'] as String).input(),
      templateFormat: map['templateFormat'] == null ? null : (map['templateFormat'] as String).input(),
    );
  }
}

