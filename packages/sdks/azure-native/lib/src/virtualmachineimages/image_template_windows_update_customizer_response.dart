// ignore_for_file: unused_element, unnecessary_cast


/// Installs Windows Updates. Corresponds to Packer Windows Update Provisioner (https://github.com/rgl/packer-provisioner-windows-update)
class ImageTemplateWindowsUpdateCustomizerResponse {
  /// Array of filters to select updates to apply. Omit or specify empty array to use the default (no filter). Refer to above link for examples and detailed description of this field.
  final List<String>? filters;
  /// Friendly Name to provide context on what this customization step does
  final String? name;
  /// Criteria to search updates. Omit or specify empty string to use the default (search all). Refer to above link for examples and detailed description of this field.
  final String? searchCriteria;
  /// The type of customization tool you want to use on the Image. For example, "Shell" can be shell customizer
  /// Expected value is 'WindowsUpdate'.
  final String type;
  /// Maximum number of updates to apply at a time. Omit or specify 0 to use the default (1000)
  final int? updateLimit;

  /// Creates a new [ImageTemplateWindowsUpdateCustomizerResponse].
  /// [filters] Array of filters to select updates to apply. Omit or specify empty array to use the default (no filter). Refer to above link for examples and detailed description of this field.
  /// [name] Friendly Name to provide context on what this customization step does
  /// [searchCriteria] Criteria to search updates. Omit or specify empty string to use the default (search all). Refer to above link for examples and detailed description of this field.
  /// [type] The type of customization tool you want to use on the Image. For example, "Shell" can be shell customizer
  /// [updateLimit] Maximum number of updates to apply at a time. Omit or specify 0 to use the default (1000)
  ImageTemplateWindowsUpdateCustomizerResponse({
    this.filters,
    this.name,
    this.searchCriteria,
    required this.type,
    this.updateLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters,
      'name': ?name,
      'searchCriteria': ?searchCriteria,
      'type': type,
      'updateLimit': ?updateLimit,
    };
  }

  factory ImageTemplateWindowsUpdateCustomizerResponse.fromMap(Map<String, dynamic> map) {
    return ImageTemplateWindowsUpdateCustomizerResponse(
      filters: map['filters'] == null ? null : (map['filters'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      searchCriteria: map['searchCriteria'] == null ? null : map['searchCriteria'] as String,
      type: map['type'] as String,
      updateLimit: map['updateLimit'] == null ? null : map['updateLimit'] as int,
    );
  }
}

