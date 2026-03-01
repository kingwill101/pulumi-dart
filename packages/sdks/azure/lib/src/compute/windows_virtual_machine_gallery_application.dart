// ignore_for_file: unused_element, unnecessary_cast


class WindowsVirtualMachineGalleryApplication {
  /// Specifies whether the version will be automatically updated for the VM when a new Gallery Application version is available in PIR/SIG. Defaults to `false`.
  final bool? automaticUpgradeEnabled;
  /// Specifies the URI to an Azure Blob that will replace the default configuration for the package if provided.
  final String? configurationBlobUri;
  /// Specifies the order in which the packages have to be installed. Possible values are between `0` and `2147483647`. Defaults to `0`.
  final int? order;
  /// Specifies a passthrough value for more generic context. This field can be any valid `string` value.
  final String? tag;
  /// Specifies whether any failure for any operation in the VmApplication will fail the deployment of the VM. Defaults to `false`.
  final bool? treatFailureAsDeploymentFailureEnabled;
  /// Specifies the Gallery Application Version resource ID.
  final String versionId;

  /// Creates a new [WindowsVirtualMachineGalleryApplication].
  /// [automaticUpgradeEnabled] Specifies whether the version will be automatically updated for the VM when a new Gallery Application version is available in PIR/SIG. Defaults to `false`.
  /// [configurationBlobUri] Specifies the URI to an Azure Blob that will replace the default configuration for the package if provided.
  /// [order] Specifies the order in which the packages have to be installed. Possible values are between `0` and `2147483647`. Defaults to `0`.
  /// [tag] Specifies a passthrough value for more generic context. This field can be any valid `string` value.
  /// [treatFailureAsDeploymentFailureEnabled] Specifies whether any failure for any operation in the VmApplication will fail the deployment of the VM. Defaults to `false`.
  /// [versionId] Specifies the Gallery Application Version resource ID.
  WindowsVirtualMachineGalleryApplication({
    this.automaticUpgradeEnabled,
    this.configurationBlobUri,
    this.order,
    this.tag,
    this.treatFailureAsDeploymentFailureEnabled,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticUpgradeEnabled': ?automaticUpgradeEnabled,
      'configurationBlobUri': ?configurationBlobUri,
      'order': ?order,
      'tag': ?tag,
      'treatFailureAsDeploymentFailureEnabled': ?treatFailureAsDeploymentFailureEnabled,
      'versionId': versionId,
    };
  }

  factory WindowsVirtualMachineGalleryApplication.fromMap(Map<String, dynamic> map) {
    return WindowsVirtualMachineGalleryApplication(
      automaticUpgradeEnabled: map['automaticUpgradeEnabled'] == null ? null : map['automaticUpgradeEnabled'] as bool,
      configurationBlobUri: map['configurationBlobUri'] == null ? null : map['configurationBlobUri'] as String,
      order: map['order'] == null ? null : map['order'] as int,
      tag: map['tag'] == null ? null : map['tag'] as String,
      treatFailureAsDeploymentFailureEnabled: map['treatFailureAsDeploymentFailureEnabled'] == null ? null : map['treatFailureAsDeploymentFailureEnabled'] as bool,
      versionId: map['versionId'] as String,
    );
  }
}

