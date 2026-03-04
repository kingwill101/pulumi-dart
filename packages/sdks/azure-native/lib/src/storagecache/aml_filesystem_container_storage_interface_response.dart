// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AML file system container storage interface information
class AmlFilesystemContainerStorageInterfaceResponse {
  /// Recommended AKS Persistent Volume for the CSI driver, in Base64 encoded YAML
  final pulumi.Input<String> persistentVolume;

  /// Recommended AKS Persistent Volume Claim for the CSI driver, in Base64 encoded YAML
  final pulumi.Input<String> persistentVolumeClaim;

  /// Recommended AKS Storage Class for the CSI driver, in Base64 encoded YAML
  final pulumi.Input<String> storageClass;

  /// Creates a new [AmlFilesystemContainerStorageInterfaceResponse].
  /// [persistentVolume] Recommended AKS Persistent Volume for the CSI driver, in Base64 encoded YAML
  /// [persistentVolumeClaim] Recommended AKS Persistent Volume Claim for the CSI driver, in Base64 encoded YAML
  /// [storageClass] Recommended AKS Storage Class for the CSI driver, in Base64 encoded YAML
  AmlFilesystemContainerStorageInterfaceResponse({
    required this.persistentVolume,
    required this.persistentVolumeClaim,
    required this.storageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'persistentVolume': persistentVolume,
      'persistentVolumeClaim': persistentVolumeClaim,
      'storageClass': storageClass,
    };
  }

  factory AmlFilesystemContainerStorageInterfaceResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return AmlFilesystemContainerStorageInterfaceResponse(
      persistentVolume: pulumi.Input.fromValue(
        map['persistentVolume'] as String,
      ),
      persistentVolumeClaim: pulumi.Input.fromValue(
        map['persistentVolumeClaim'] as String,
      ),
      storageClass: pulumi.Input.fromValue(map['storageClass'] as String),
    );
  }
}
