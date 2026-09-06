// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Installs Windows Updates. Corresponds to Packer Windows Update Provisioner (https://github.com/rgl/packer-provisioner-windows-update)
class ImageTemplateWindowsUpdateCustomizer {
  /// Array of filters to select updates to apply. Omit or specify empty array to use the default (no filter). Refer to above link for examples and detailed description of this field.
  final pulumi.Input<List<String>?>? filters;
  /// Friendly Name to provide context on what this customization step does
  final pulumi.Input<String?>? name;
  /// Criteria to search updates. Omit or specify empty string to use the default (search all). Refer to above link for examples and detailed description of this field.
  final pulumi.Input<String?>? searchCriteria;
  /// The type of customization tool you want to use on the Image. For example, "Shell" can be shell customizer
  /// Expected value is 'WindowsUpdate'.
  final pulumi.Input<String> type;
  /// Maximum number of updates to apply at a time. Omit or specify 0 to use the default (1000)
  final pulumi.Input<int?>? updateLimit;

  /// Creates a new [ImageTemplateWindowsUpdateCustomizer].
  /// [filters] Array of filters to select updates to apply. Omit or specify empty array to use the default (no filter). Refer to above link for examples and detailed description of this field.
  /// [name] Friendly Name to provide context on what this customization step does
  /// [searchCriteria] Criteria to search updates. Omit or specify empty string to use the default (search all). Refer to above link for examples and detailed description of this field.
  /// [type] The type of customization tool you want to use on the Image. For example, "Shell" can be shell customizer
  /// [updateLimit] Maximum number of updates to apply at a time. Omit or specify 0 to use the default (1000)
  ImageTemplateWindowsUpdateCustomizer({
    this.filters,
    this.name,
    this.searchCriteria,
    required this.type,
    pulumi.Input<int?>? updateLimit,
  }) : updateLimit = updateLimit ?? pulumi.Input.fromValue(0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters,
      'name': ?name,
      'searchCriteria': ?searchCriteria,
      'type': type,
      'updateLimit': ?updateLimit,
    };
  }

  factory ImageTemplateWindowsUpdateCustomizer.fromMap(Map<String, dynamic> map) {
    return ImageTemplateWindowsUpdateCustomizer(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      searchCriteria: (() { final guardedValue = map['searchCriteria']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      updateLimit: (() { final guardedValue = map['updateLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
