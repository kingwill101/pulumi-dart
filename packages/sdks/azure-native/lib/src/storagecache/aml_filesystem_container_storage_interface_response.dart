// ignore_for_file: unused_element, unnecessary_cast


/// AML file system container storage interface information
class AmlFilesystemContainerStorageInterfaceResponse {
  /// Recommended AKS Persistent Volume for the CSI driver, in Base64 encoded YAML
  final String persistentVolume;
  /// Recommended AKS Persistent Volume Claim for the CSI driver, in Base64 encoded YAML
  final String persistentVolumeClaim;
  /// Recommended AKS Storage Class for the CSI driver, in Base64 encoded YAML
  final String storageClass;

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

  factory AmlFilesystemContainerStorageInterfaceResponse.fromMap(Map<String, dynamic> map) {
    return AmlFilesystemContainerStorageInterfaceResponse(
      persistentVolume: map['persistentVolume'] as String,
      persistentVolumeClaim: map['persistentVolumeClaim'] as String,
      storageClass: map['storageClass'] as String,
    );
  }
}

