// ignore_for_file: unused_element, unnecessary_cast


class LinuxVirtualMachineScaleSetGalleryApplication {
  /// Specifies the URI to an Azure Blob that will replace the default configuration for the package if provided. Changing this forces a new resource to be created.
  final String? configurationBlobUri;
  /// Specifies the order in which the packages have to be installed. Possible values are between `0` and `2147483647`. Defaults to `0`. Changing this forces a new resource to be created.
  final int? order;
  /// Specifies a passthrough value for more generic context. This field can be any valid `string` value. Changing this forces a new resource to be created.
  final String? tag;
  /// Specifies the Gallery Application Version resource ID. Changing this forces a new resource to be created.
  final String versionId;

  /// Creates a new [LinuxVirtualMachineScaleSetGalleryApplication].
  /// [configurationBlobUri] Specifies the URI to an Azure Blob that will replace the default configuration for the package if provided. Changing this forces a new resource to be created.
  /// [order] Specifies the order in which the packages have to be installed. Possible values are between `0` and `2147483647`. Defaults to `0`. Changing this forces a new resource to be created.
  /// [tag] Specifies a passthrough value for more generic context. This field can be any valid `string` value. Changing this forces a new resource to be created.
  /// [versionId] Specifies the Gallery Application Version resource ID. Changing this forces a new resource to be created.
  LinuxVirtualMachineScaleSetGalleryApplication({
    this.configurationBlobUri,
    this.order,
    this.tag,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationBlobUri': ?configurationBlobUri,
      'order': ?order,
      'tag': ?tag,
      'versionId': versionId,
    };
  }

  factory LinuxVirtualMachineScaleSetGalleryApplication.fromMap(Map<String, dynamic> map) {
    return LinuxVirtualMachineScaleSetGalleryApplication(
      configurationBlobUri: map['configurationBlobUri'] == null ? null : map['configurationBlobUri'] as String,
      order: map['order'] == null ? null : map['order'] as int,
      tag: map['tag'] == null ? null : map['tag'] as String,
      versionId: map['versionId'] as String,
    );
  }
}

