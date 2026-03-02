// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'awselastic_block_store_volume_source_patch.dart';
import 'azure_disk_volume_source_patch.dart';
import 'azure_file_persistent_volume_source_patch.dart';
import 'ceph_fspersistent_volume_source_patch.dart';
import 'cinder_persistent_volume_source_patch.dart';
import 'csipersistent_volume_source_patch.dart';
import 'fcvolume_source_patch.dart';
import 'flex_persistent_volume_source_patch.dart';
import 'flocker_volume_source_patch.dart';
import 'gcepersistent_disk_volume_source_patch.dart';
import 'glusterfs_persistent_volume_source_patch.dart';
import 'host_path_volume_source_patch.dart';
import 'iscsipersistent_volume_source_patch.dart';
import 'local_volume_source_patch.dart';
import 'nfsvolume_source_patch.dart';
import 'object_reference_patch.dart';
import 'photon_persistent_disk_volume_source_patch.dart';
import 'portworx_volume_source_patch.dart';
import 'quobyte_volume_source_patch.dart';
import 'rbdpersistent_volume_source_patch.dart';
import 'scale_iopersistent_volume_source_patch.dart';
import 'storage_ospersistent_volume_source_patch.dart';
import 'volume_node_affinity_patch.dart';
import 'vsphere_virtual_disk_volume_source_patch.dart';

/// PersistentVolumeSpec is the specification of a persistent volume.
class PersistentVolumeSpecPatch {
  /// accessModes contains all ways the volume can be mounted. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes
  final pulumi.Input<List<String>>? accessModes;
  /// awsElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Deprecated: AWSElasticBlockStore is deprecated. All operations for the in-tree awsElasticBlockStore type are redirected to the ebs.csi.aws.com CSI driver. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore
  final pulumi.Input<AWSElasticBlockStoreVolumeSourcePatch>? awsElasticBlockStore;
  /// azureDisk represents an Azure Data Disk mount on the host and bind mount to the pod. Deprecated: AzureDisk is deprecated. All operations for the in-tree azureDisk type are redirected to the disk.csi.azure.com CSI driver.
  final pulumi.Input<AzureDiskVolumeSourcePatch>? azureDisk;
  /// azureFile represents an Azure File Service mount on the host and bind mount to the pod. Deprecated: AzureFile is deprecated. All operations for the in-tree azureFile type are redirected to the file.csi.azure.com CSI driver.
  final pulumi.Input<AzureFilePersistentVolumeSourcePatch>? azureFile;
  /// capacity is the description of the persistent volume's resources and capacity. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity
  final pulumi.Input<Map<String, String>>? capacity;
  /// cephFS represents a Ceph FS mount on the host that shares a pod's lifetime. Deprecated: CephFS is deprecated and the in-tree cephfs type is no longer supported.
  final pulumi.Input<CephFSPersistentVolumeSourcePatch>? cephfs;
  /// cinder represents a cinder volume attached and mounted on kubelets host machine. Deprecated: Cinder is deprecated. All operations for the in-tree cinder type are redirected to the cinder.csi.openstack.org CSI driver. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
  final pulumi.Input<CinderPersistentVolumeSourcePatch>? cinder;
  /// claimRef is part of a bi-directional binding between PersistentVolume and PersistentVolumeClaim. Expected to be non-nil when bound. claim.VolumeName is the authoritative bind between PV and PVC. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#binding
  final pulumi.Input<ObjectReferencePatch>? claimRef;
  /// csi represents storage that is handled by an external CSI driver.
  final pulumi.Input<CSIPersistentVolumeSourcePatch>? csi;
  /// fc represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod.
  final pulumi.Input<FCVolumeSourcePatch>? fc;
  /// flexVolume represents a generic volume resource that is provisioned/attached using an exec based plugin. Deprecated: FlexVolume is deprecated. Consider using a CSIDriver instead.
  final pulumi.Input<FlexPersistentVolumeSourcePatch>? flexVolume;
  /// flocker represents a Flocker volume attached to a kubelet's host machine and exposed to the pod for its usage. This depends on the Flocker control service being running. Deprecated: Flocker is deprecated and the in-tree flocker type is no longer supported.
  final pulumi.Input<FlockerVolumeSourcePatch>? flocker;
  /// gcePersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin. Deprecated: GCEPersistentDisk is deprecated. All operations for the in-tree gcePersistentDisk type are redirected to the pd.csi.storage.gke.io CSI driver. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
  final pulumi.Input<GCEPersistentDiskVolumeSourcePatch>? gcePersistentDisk;
  /// glusterfs represents a Glusterfs volume that is attached to a host and exposed to the pod. Provisioned by an admin. Deprecated: Glusterfs is deprecated and the in-tree glusterfs type is no longer supported. More info: https://examples.k8s.io/volumes/glusterfs/README.md
  final pulumi.Input<GlusterfsPersistentVolumeSourcePatch>? glusterfs;
  /// hostPath represents a directory on the host. Provisioned by a developer or tester. This is useful for single-node development and testing only! On-host storage is not supported in any way and WILL NOT WORK in a multi-node cluster. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
  final pulumi.Input<HostPathVolumeSourcePatch>? hostPath;
  /// iscsi represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin.
  final pulumi.Input<ISCSIPersistentVolumeSourcePatch>? iscsi;
  /// local represents directly-attached storage with node affinity
  final pulumi.Input<LocalVolumeSourcePatch>? local;
  /// mountOptions is the list of mount options, e.g. ["ro", "soft"]. Not validated - mount will simply fail if one is invalid. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options
  final pulumi.Input<List<String>>? mountOptions;
  /// nfs represents an NFS mount on the host. Provisioned by an admin. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
  final pulumi.Input<NFSVolumeSourcePatch>? nfs;
  /// nodeAffinity defines constraints that limit what nodes this volume can be accessed from. This field influences the scheduling of pods that use this volume. This field is mutable if MutablePVNodeAffinity feature gate is enabled.
  final pulumi.Input<VolumeNodeAffinityPatch>? nodeAffinity;
  /// persistentVolumeReclaimPolicy defines what happens to a persistent volume when released from its claim. Valid options are Retain (default for manually created PersistentVolumes), Delete (default for dynamically provisioned PersistentVolumes), and Recycle (deprecated). Recycle must be supported by the volume plugin underlying this PersistentVolume. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming
  final pulumi.Input<String>? persistentVolumeReclaimPolicy;
  /// photonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine. Deprecated: PhotonPersistentDisk is deprecated and the in-tree photonPersistentDisk type is no longer supported.
  final pulumi.Input<PhotonPersistentDiskVolumeSourcePatch>? photonPersistentDisk;
  /// portworxVolume represents a portworx volume attached and mounted on kubelets host machine. Deprecated: PortworxVolume is deprecated. All operations for the in-tree portworxVolume type are redirected to the pxd.portworx.com CSI driver when the CSIMigrationPortworx feature-gate is on.
  final pulumi.Input<PortworxVolumeSourcePatch>? portworxVolume;
  /// quobyte represents a Quobyte mount on the host that shares a pod's lifetime. Deprecated: Quobyte is deprecated and the in-tree quobyte type is no longer supported.
  final pulumi.Input<QuobyteVolumeSourcePatch>? quobyte;
  /// rbd represents a Rados Block Device mount on the host that shares a pod's lifetime. Deprecated: RBD is deprecated and the in-tree rbd type is no longer supported. More info: https://examples.k8s.io/volumes/rbd/README.md
  final pulumi.Input<RBDPersistentVolumeSourcePatch>? rbd;
  /// scaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes. Deprecated: ScaleIO is deprecated and the in-tree scaleIO type is no longer supported.
  final pulumi.Input<ScaleIOPersistentVolumeSourcePatch>? scaleIO;
  /// storageClassName is the name of StorageClass to which this persistent volume belongs. Empty value means that this volume does not belong to any StorageClass.
  final pulumi.Input<String>? storageClassName;
  /// storageOS represents a StorageOS volume that is attached to the kubelet's host machine and mounted into the pod. Deprecated: StorageOS is deprecated and the in-tree storageos type is no longer supported. More info: https://examples.k8s.io/volumes/storageos/README.md
  final pulumi.Input<StorageOSPersistentVolumeSourcePatch>? storageos;
  /// Name of VolumeAttributesClass to which this persistent volume belongs. Empty value is not allowed. When this field is not set, it indicates that this volume does not belong to any VolumeAttributesClass. This field is mutable and can be changed by the CSI driver after a volume has been updated successfully to a new class. For an unbound PersistentVolume, the volumeAttributesClassName will be matched with unbound PersistentVolumeClaims during the binding process.
  final pulumi.Input<String>? volumeAttributesClassName;
  /// volumeMode defines if a volume is intended to be used with a formatted filesystem or to remain in raw block state. Value of Filesystem is implied when not included in spec.
  final pulumi.Input<String>? volumeMode;
  /// vsphereVolume represents a vSphere volume attached and mounted on kubelets host machine. Deprecated: VsphereVolume is deprecated. All operations for the in-tree vsphereVolume type are redirected to the csi.vsphere.vmware.com CSI driver.
  final pulumi.Input<VsphereVirtualDiskVolumeSourcePatch>? vsphereVolume;

  /// Creates a new [PersistentVolumeSpecPatch].
  /// [accessModes] accessModes contains all ways the volume can be mounted. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes
  /// [awsElasticBlockStore] awsElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Deprecated: AWSElasticBlockStore is deprecated. All operations for the in-tree awsElasticBlockStore type are redirected to the ebs.csi.aws.com CSI driver. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore
  /// [azureDisk] azureDisk represents an Azure Data Disk mount on the host and bind mount to the pod. Deprecated: AzureDisk is deprecated. All operations for the in-tree azureDisk type are redirected to the disk.csi.azure.com CSI driver.
  /// [azureFile] azureFile represents an Azure File Service mount on the host and bind mount to the pod. Deprecated: AzureFile is deprecated. All operations for the in-tree azureFile type are redirected to the file.csi.azure.com CSI driver.
  /// [capacity] capacity is the description of the persistent volume's resources and capacity. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity
  /// [cephfs] cephFS represents a Ceph FS mount on the host that shares a pod's lifetime. Deprecated: CephFS is deprecated and the in-tree cephfs type is no longer supported.
  /// [cinder] cinder represents a cinder volume attached and mounted on kubelets host machine. Deprecated: Cinder is deprecated. All operations for the in-tree cinder type are redirected to the cinder.csi.openstack.org CSI driver. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
  /// [claimRef] claimRef is part of a bi-directional binding between PersistentVolume and PersistentVolumeClaim. Expected to be non-nil when bound. claim.VolumeName is the authoritative bind between PV and PVC. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#binding
  /// [csi] csi represents storage that is handled by an external CSI driver.
  /// [fc] fc represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod.
  /// [flexVolume] flexVolume represents a generic volume resource that is provisioned/attached using an exec based plugin. Deprecated: FlexVolume is deprecated. Consider using a CSIDriver instead.
  /// [flocker] flocker represents a Flocker volume attached to a kubelet's host machine and exposed to the pod for its usage. This depends on the Flocker control service being running. Deprecated: Flocker is deprecated and the in-tree flocker type is no longer supported.
  /// [gcePersistentDisk] gcePersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin. Deprecated: GCEPersistentDisk is deprecated. All operations for the in-tree gcePersistentDisk type are redirected to the pd.csi.storage.gke.io CSI driver. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
  /// [glusterfs] glusterfs represents a Glusterfs volume that is attached to a host and exposed to the pod. Provisioned by an admin. Deprecated: Glusterfs is deprecated and the in-tree glusterfs type is no longer supported. More info: https://examples.k8s.io/volumes/glusterfs/README.md
  /// [hostPath] hostPath represents a directory on the host. Provisioned by a developer or tester. This is useful for single-node development and testing only! On-host storage is not supported in any way and WILL NOT WORK in a multi-node cluster. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
  /// [iscsi] iscsi represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin.
  /// [local] local represents directly-attached storage with node affinity
  /// [mountOptions] mountOptions is the list of mount options, e.g. ["ro", "soft"]. Not validated - mount will simply fail if one is invalid. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options
  /// [nfs] nfs represents an NFS mount on the host. Provisioned by an admin. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
  /// [nodeAffinity] nodeAffinity defines constraints that limit what nodes this volume can be accessed from. This field influences the scheduling of pods that use this volume. This field is mutable if MutablePVNodeAffinity feature gate is enabled.
  /// [persistentVolumeReclaimPolicy] persistentVolumeReclaimPolicy defines what happens to a persistent volume when released from its claim. Valid options are Retain (default for manually created PersistentVolumes), Delete (default for dynamically provisioned PersistentVolumes), and Recycle (deprecated). Recycle must be supported by the volume plugin underlying this PersistentVolume. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming
  /// [photonPersistentDisk] photonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine. Deprecated: PhotonPersistentDisk is deprecated and the in-tree photonPersistentDisk type is no longer supported.
  /// [portworxVolume] portworxVolume represents a portworx volume attached and mounted on kubelets host machine. Deprecated: PortworxVolume is deprecated. All operations for the in-tree portworxVolume type are redirected to the pxd.portworx.com CSI driver when the CSIMigrationPortworx feature-gate is on.
  /// [quobyte] quobyte represents a Quobyte mount on the host that shares a pod's lifetime. Deprecated: Quobyte is deprecated and the in-tree quobyte type is no longer supported.
  /// [rbd] rbd represents a Rados Block Device mount on the host that shares a pod's lifetime. Deprecated: RBD is deprecated and the in-tree rbd type is no longer supported. More info: https://examples.k8s.io/volumes/rbd/README.md
  /// [scaleIO] scaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes. Deprecated: ScaleIO is deprecated and the in-tree scaleIO type is no longer supported.
  /// [storageClassName] storageClassName is the name of StorageClass to which this persistent volume belongs. Empty value means that this volume does not belong to any StorageClass.
  /// [storageos] storageOS represents a StorageOS volume that is attached to the kubelet's host machine and mounted into the pod. Deprecated: StorageOS is deprecated and the in-tree storageos type is no longer supported. More info: https://examples.k8s.io/volumes/storageos/README.md
  /// [volumeAttributesClassName] Name of VolumeAttributesClass to which this persistent volume belongs. Empty value is not allowed. When this field is not set, it indicates that this volume does not belong to any VolumeAttributesClass. This field is mutable and can be changed by the CSI driver after a volume has been updated successfully to a new class. For an unbound PersistentVolume, the volumeAttributesClassName will be matched with unbound PersistentVolumeClaims during the binding process.
  /// [volumeMode] volumeMode defines if a volume is intended to be used with a formatted filesystem or to remain in raw block state. Value of Filesystem is implied when not included in spec.
  /// [vsphereVolume] vsphereVolume represents a vSphere volume attached and mounted on kubelets host machine. Deprecated: VsphereVolume is deprecated. All operations for the in-tree vsphereVolume type are redirected to the csi.vsphere.vmware.com CSI driver.
  PersistentVolumeSpecPatch({
    this.accessModes,
    this.awsElasticBlockStore,
    this.azureDisk,
    this.azureFile,
    this.capacity,
    this.cephfs,
    this.cinder,
    this.claimRef,
    this.csi,
    this.fc,
    this.flexVolume,
    this.flocker,
    this.gcePersistentDisk,
    this.glusterfs,
    this.hostPath,
    this.iscsi,
    this.local,
    this.mountOptions,
    this.nfs,
    this.nodeAffinity,
    this.persistentVolumeReclaimPolicy,
    this.photonPersistentDisk,
    this.portworxVolume,
    this.quobyte,
    this.rbd,
    this.scaleIO,
    this.storageClassName,
    this.storageos,
    this.volumeAttributesClassName,
    this.volumeMode,
    this.vsphereVolume,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessModes': ?accessModes,
      'awsElasticBlockStore': ?pulumi.Input.mapOptionalInputValue<AWSElasticBlockStoreVolumeSourcePatch, Map<String, dynamic>>(awsElasticBlockStore, (value) => value.toMap()),
      'azureDisk': ?pulumi.Input.mapOptionalInputValue<AzureDiskVolumeSourcePatch, Map<String, dynamic>>(azureDisk, (value) => value.toMap()),
      'azureFile': ?pulumi.Input.mapOptionalInputValue<AzureFilePersistentVolumeSourcePatch, Map<String, dynamic>>(azureFile, (value) => value.toMap()),
      'capacity': ?capacity,
      'cephfs': ?pulumi.Input.mapOptionalInputValue<CephFSPersistentVolumeSourcePatch, Map<String, dynamic>>(cephfs, (value) => value.toMap()),
      'cinder': ?pulumi.Input.mapOptionalInputValue<CinderPersistentVolumeSourcePatch, Map<String, dynamic>>(cinder, (value) => value.toMap()),
      'claimRef': ?pulumi.Input.mapOptionalInputValue<ObjectReferencePatch, Map<String, dynamic>>(claimRef, (value) => value.toMap()),
      'csi': ?pulumi.Input.mapOptionalInputValue<CSIPersistentVolumeSourcePatch, Map<String, dynamic>>(csi, (value) => value.toMap()),
      'fc': ?pulumi.Input.mapOptionalInputValue<FCVolumeSourcePatch, Map<String, dynamic>>(fc, (value) => value.toMap()),
      'flexVolume': ?pulumi.Input.mapOptionalInputValue<FlexPersistentVolumeSourcePatch, Map<String, dynamic>>(flexVolume, (value) => value.toMap()),
      'flocker': ?pulumi.Input.mapOptionalInputValue<FlockerVolumeSourcePatch, Map<String, dynamic>>(flocker, (value) => value.toMap()),
      'gcePersistentDisk': ?pulumi.Input.mapOptionalInputValue<GCEPersistentDiskVolumeSourcePatch, Map<String, dynamic>>(gcePersistentDisk, (value) => value.toMap()),
      'glusterfs': ?pulumi.Input.mapOptionalInputValue<GlusterfsPersistentVolumeSourcePatch, Map<String, dynamic>>(glusterfs, (value) => value.toMap()),
      'hostPath': ?pulumi.Input.mapOptionalInputValue<HostPathVolumeSourcePatch, Map<String, dynamic>>(hostPath, (value) => value.toMap()),
      'iscsi': ?pulumi.Input.mapOptionalInputValue<ISCSIPersistentVolumeSourcePatch, Map<String, dynamic>>(iscsi, (value) => value.toMap()),
      'local': ?pulumi.Input.mapOptionalInputValue<LocalVolumeSourcePatch, Map<String, dynamic>>(local, (value) => value.toMap()),
      'mountOptions': ?mountOptions,
      'nfs': ?pulumi.Input.mapOptionalInputValue<NFSVolumeSourcePatch, Map<String, dynamic>>(nfs, (value) => value.toMap()),
      'nodeAffinity': ?pulumi.Input.mapOptionalInputValue<VolumeNodeAffinityPatch, Map<String, dynamic>>(nodeAffinity, (value) => value.toMap()),
      'persistentVolumeReclaimPolicy': ?persistentVolumeReclaimPolicy,
      'photonPersistentDisk': ?pulumi.Input.mapOptionalInputValue<PhotonPersistentDiskVolumeSourcePatch, Map<String, dynamic>>(photonPersistentDisk, (value) => value.toMap()),
      'portworxVolume': ?pulumi.Input.mapOptionalInputValue<PortworxVolumeSourcePatch, Map<String, dynamic>>(portworxVolume, (value) => value.toMap()),
      'quobyte': ?pulumi.Input.mapOptionalInputValue<QuobyteVolumeSourcePatch, Map<String, dynamic>>(quobyte, (value) => value.toMap()),
      'rbd': ?pulumi.Input.mapOptionalInputValue<RBDPersistentVolumeSourcePatch, Map<String, dynamic>>(rbd, (value) => value.toMap()),
      'scaleIO': ?pulumi.Input.mapOptionalInputValue<ScaleIOPersistentVolumeSourcePatch, Map<String, dynamic>>(scaleIO, (value) => value.toMap()),
      'storageClassName': ?storageClassName,
      'storageos': ?pulumi.Input.mapOptionalInputValue<StorageOSPersistentVolumeSourcePatch, Map<String, dynamic>>(storageos, (value) => value.toMap()),
      'volumeAttributesClassName': ?volumeAttributesClassName,
      'volumeMode': ?volumeMode,
      'vsphereVolume': ?pulumi.Input.mapOptionalInputValue<VsphereVirtualDiskVolumeSourcePatch, Map<String, dynamic>>(vsphereVolume, (value) => value.toMap()),
    };
  }

  factory PersistentVolumeSpecPatch.fromMap(Map<String, dynamic> map) {
    return PersistentVolumeSpecPatch(
      accessModes: map['accessModes'] == null ? null : ((map['accessModes'] as List).cast<String>()).input(),
      awsElasticBlockStore: map['awsElasticBlockStore'] == null ? null : (AWSElasticBlockStoreVolumeSourcePatch.fromMap((map['awsElasticBlockStore'] as Map).cast<String, dynamic>())).input(),
      azureDisk: map['azureDisk'] == null ? null : (AzureDiskVolumeSourcePatch.fromMap((map['azureDisk'] as Map).cast<String, dynamic>())).input(),
      azureFile: map['azureFile'] == null ? null : (AzureFilePersistentVolumeSourcePatch.fromMap((map['azureFile'] as Map).cast<String, dynamic>())).input(),
      capacity: map['capacity'] == null ? null : ((map['capacity'] as Map).cast<String, String>()).input(),
      cephfs: map['cephfs'] == null ? null : (CephFSPersistentVolumeSourcePatch.fromMap((map['cephfs'] as Map).cast<String, dynamic>())).input(),
      cinder: map['cinder'] == null ? null : (CinderPersistentVolumeSourcePatch.fromMap((map['cinder'] as Map).cast<String, dynamic>())).input(),
      claimRef: map['claimRef'] == null ? null : (ObjectReferencePatch.fromMap((map['claimRef'] as Map).cast<String, dynamic>())).input(),
      csi: map['csi'] == null ? null : (CSIPersistentVolumeSourcePatch.fromMap((map['csi'] as Map).cast<String, dynamic>())).input(),
      fc: map['fc'] == null ? null : (FCVolumeSourcePatch.fromMap((map['fc'] as Map).cast<String, dynamic>())).input(),
      flexVolume: map['flexVolume'] == null ? null : (FlexPersistentVolumeSourcePatch.fromMap((map['flexVolume'] as Map).cast<String, dynamic>())).input(),
      flocker: map['flocker'] == null ? null : (FlockerVolumeSourcePatch.fromMap((map['flocker'] as Map).cast<String, dynamic>())).input(),
      gcePersistentDisk: map['gcePersistentDisk'] == null ? null : (GCEPersistentDiskVolumeSourcePatch.fromMap((map['gcePersistentDisk'] as Map).cast<String, dynamic>())).input(),
      glusterfs: map['glusterfs'] == null ? null : (GlusterfsPersistentVolumeSourcePatch.fromMap((map['glusterfs'] as Map).cast<String, dynamic>())).input(),
      hostPath: map['hostPath'] == null ? null : (HostPathVolumeSourcePatch.fromMap((map['hostPath'] as Map).cast<String, dynamic>())).input(),
      iscsi: map['iscsi'] == null ? null : (ISCSIPersistentVolumeSourcePatch.fromMap((map['iscsi'] as Map).cast<String, dynamic>())).input(),
      local: map['local'] == null ? null : (LocalVolumeSourcePatch.fromMap((map['local'] as Map).cast<String, dynamic>())).input(),
      mountOptions: map['mountOptions'] == null ? null : ((map['mountOptions'] as List).cast<String>()).input(),
      nfs: map['nfs'] == null ? null : (NFSVolumeSourcePatch.fromMap((map['nfs'] as Map).cast<String, dynamic>())).input(),
      nodeAffinity: map['nodeAffinity'] == null ? null : (VolumeNodeAffinityPatch.fromMap((map['nodeAffinity'] as Map).cast<String, dynamic>())).input(),
      persistentVolumeReclaimPolicy: map['persistentVolumeReclaimPolicy'] == null ? null : (map['persistentVolumeReclaimPolicy'] as String).input(),
      photonPersistentDisk: map['photonPersistentDisk'] == null ? null : (PhotonPersistentDiskVolumeSourcePatch.fromMap((map['photonPersistentDisk'] as Map).cast<String, dynamic>())).input(),
      portworxVolume: map['portworxVolume'] == null ? null : (PortworxVolumeSourcePatch.fromMap((map['portworxVolume'] as Map).cast<String, dynamic>())).input(),
      quobyte: map['quobyte'] == null ? null : (QuobyteVolumeSourcePatch.fromMap((map['quobyte'] as Map).cast<String, dynamic>())).input(),
      rbd: map['rbd'] == null ? null : (RBDPersistentVolumeSourcePatch.fromMap((map['rbd'] as Map).cast<String, dynamic>())).input(),
      scaleIO: map['scaleIO'] == null ? null : (ScaleIOPersistentVolumeSourcePatch.fromMap((map['scaleIO'] as Map).cast<String, dynamic>())).input(),
      storageClassName: map['storageClassName'] == null ? null : (map['storageClassName'] as String).input(),
      storageos: map['storageos'] == null ? null : (StorageOSPersistentVolumeSourcePatch.fromMap((map['storageos'] as Map).cast<String, dynamic>())).input(),
      volumeAttributesClassName: map['volumeAttributesClassName'] == null ? null : (map['volumeAttributesClassName'] as String).input(),
      volumeMode: map['volumeMode'] == null ? null : (map['volumeMode'] as String).input(),
      vsphereVolume: map['vsphereVolume'] == null ? null : (VsphereVirtualDiskVolumeSourcePatch.fromMap((map['vsphereVolume'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

