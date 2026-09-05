// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsVirtualMachineGalleryApplication {
  /// Specifies whether the version will be automatically updated for the VM when a new Gallery Application version is available in PIR/SIG. Defaults to `false`.
  final pulumi.Input<bool?>? automaticUpgradeEnabled;
  /// Specifies the URI to an Azure Blob that will replace the default configuration for the package if provided.
  final pulumi.Input<String?>? configurationBlobUri;
  /// Specifies the order in which the packages have to be installed. Possible values are between `0` and `2147483647`. Defaults to `0`.
  final pulumi.Input<int?>? order;
  /// Specifies a passthrough value for more generic context. This field can be any valid `string` value.
  final pulumi.Input<String?>? tag;
  /// Specifies whether any failure for any operation in the VmApplication will fail the deployment of the VM. Defaults to `false`.
  final pulumi.Input<bool?>? treatFailureAsDeploymentFailureEnabled;
  /// Specifies the Gallery Application Version resource ID.
  final pulumi.Input<String> versionId;

  /// Creates a new [WindowsVirtualMachineGalleryApplication].
  /// [automaticUpgradeEnabled] Specifies whether the version will be automatically updated for the VM when a new Gallery Application version is available in PIR/SIG. Defaults to `false`.
  /// [configurationBlobUri] Specifies the URI to an Azure Blob that will replace the default configuration for the package if provided.
  /// [order] Specifies the order in which the packages have to be installed. Possible values are between `0` and `2147483647`. Defaults to `0`.
  /// [tag] Specifies a passthrough value for more generic context. This field can be any valid `string` value.
  /// [treatFailureAsDeploymentFailureEnabled] Specifies whether any failure for any operation in the VmApplication will fail the deployment of the VM. Defaults to `false`.
  /// [versionId] Specifies the Gallery Application Version resource ID.
  const WindowsVirtualMachineGalleryApplication({
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
      automaticUpgradeEnabled: (() { final guardedValue = map['automaticUpgradeEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      configurationBlobUri: (() { final guardedValue = map['configurationBlobUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      treatFailureAsDeploymentFailureEnabled: (() { final guardedValue = map['treatFailureAsDeploymentFailureEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      versionId: pulumi.Input.fromValue(map['versionId'] as String),
    );
  }
}
