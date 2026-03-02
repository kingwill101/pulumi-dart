// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'awselastic_block_store_volume_source.dart';
import 'azure_disk_volume_source.dart';
import 'azure_file_persistent_volume_source.dart';
import 'ceph_fspersistent_volume_source.dart';
import 'cinder_persistent_volume_source.dart';
import 'csipersistent_volume_source.dart';
import 'fcvolume_source.dart';
import 'flex_persistent_volume_source.dart';
import 'flocker_volume_source.dart';
import 'gcepersistent_disk_volume_source.dart';
import 'glusterfs_persistent_volume_source.dart';
import 'host_path_volume_source.dart';
import 'iscsipersistent_volume_source.dart';
import 'local_volume_source.dart';
import 'nfsvolume_source.dart';
import 'object_reference.dart';
import 'photon_persistent_disk_volume_source.dart';
import 'portworx_volume_source.dart';
import 'quobyte_volume_source.dart';
import 'rbdpersistent_volume_source.dart';
import 'scale_iopersistent_volume_source.dart';
import 'storage_ospersistent_volume_source.dart';
import 'volume_node_affinity.dart';
import 'vsphere_virtual_disk_volume_source.dart';

/// PersistentVolumeSpec is the specification of a persistent volume.
class PersistentVolumeSpec {
  /// accessModes contains all ways the volume can be mounted. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes
  final pulumi.Input<List<String>>? accessModes;
  /// awsElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Deprecated: AWSElasticBlockStore is deprecated. All operations for the in-tree awsElasticBlockStore type are redirected to the ebs.csi.aws.com CSI driver. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore
  final pulumi.Input<AWSElasticBlockStoreVolumeSource>? awsElasticBlockStore;
  /// azureDisk represents an Azure Data Disk mount on the host and bind mount to the pod. Deprecated: AzureDisk is deprecated. All operations for the in-tree azureDisk type are redirected to the disk.csi.azure.com CSI driver.
  final pulumi.Input<AzureDiskVolumeSource>? azureDisk;
  /// azureFile represents an Azure File Service mount on the host and bind mount to the pod. Deprecated: AzureFile is deprecated. All operations for the in-tree azureFile type are redirected to the file.csi.azure.com CSI driver.
  final pulumi.Input<AzureFilePersistentVolumeSource>? azureFile;
  /// capacity is the description of the persistent volume's resources and capacity. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity
  final pulumi.Input<Map<String, String>>? capacity;
  /// cephFS represents a Ceph FS mount on the host that shares a pod's lifetime. Deprecated: CephFS is deprecated and the in-tree cephfs type is no longer supported.
  final pulumi.Input<CephFSPersistentVolumeSource>? cephfs;
  /// cinder represents a cinder volume attached and mounted on kubelets host machine. Deprecated: Cinder is deprecated. All operations for the in-tree cinder type are redirected to the cinder.csi.openstack.org CSI driver. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
  final pulumi.Input<CinderPersistentVolumeSource>? cinder;
  /// claimRef is part of a bi-directional binding between PersistentVolume and PersistentVolumeClaim. Expected to be non-nil when bound. claim.VolumeName is the authoritative bind between PV and PVC. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#binding
  final pulumi.Input<ObjectReference>? claimRef;
  /// csi represents storage that is handled by an external CSI driver.
  final pulumi.Input<CSIPersistentVolumeSource>? csi;
  /// fc represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod.
  final pulumi.Input<FCVolumeSource>? fc;
  /// flexVolume represents a generic volume resource that is provisioned/attached using an exec based plugin. Deprecated: FlexVolume is deprecated. Consider using a CSIDriver instead.
  final pulumi.Input<FlexPersistentVolumeSource>? flexVolume;
  /// flocker represents a Flocker volume attached to a kubelet's host machine and exposed to the pod for its usage. This depends on the Flocker control service being running. Deprecated: Flocker is deprecated and the in-tree flocker type is no longer supported.
  final pulumi.Input<FlockerVolumeSource>? flocker;
  /// gcePersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin. Deprecated: GCEPersistentDisk is deprecated. All operations for the in-tree gcePersistentDisk type are redirected to the pd.csi.storage.gke.io CSI driver. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
  final pulumi.Input<GCEPersistentDiskVolumeSource>? gcePersistentDisk;
  /// glusterfs represents a Glusterfs volume that is attached to a host and exposed to the pod. Provisioned by an admin. Deprecated: Glusterfs is deprecated and the in-tree glusterfs type is no longer supported. More info: https://examples.k8s.io/volumes/glusterfs/README.md
  final pulumi.Input<GlusterfsPersistentVolumeSource>? glusterfs;
  /// hostPath represents a directory on the host. Provisioned by a developer or tester. This is useful for single-node development and testing only! On-host storage is not supported in any way and WILL NOT WORK in a multi-node cluster. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
  final pulumi.Input<HostPathVolumeSource>? hostPath;
  /// iscsi represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin.
  final pulumi.Input<ISCSIPersistentVolumeSource>? iscsi;
  /// local represents directly-attached storage with node affinity
  final pulumi.Input<LocalVolumeSource>? local;
  /// mountOptions is the list of mount options, e.g. ["ro", "soft"]. Not validated - mount will simply fail if one is invalid. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options
  final pulumi.Input<List<String>>? mountOptions;
  /// nfs represents an NFS mount on the host. Provisioned by an admin. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
  final pulumi.Input<NFSVolumeSource>? nfs;
  /// nodeAffinity defines constraints that limit what nodes this volume can be accessed from. This field influences the scheduling of pods that use this volume. This field is mutable if MutablePVNodeAffinity feature gate is enabled.
  final pulumi.Input<VolumeNodeAffinity>? nodeAffinity;
  /// persistentVolumeReclaimPolicy defines what happens to a persistent volume when released from its claim. Valid options are Retain (default for manually created PersistentVolumes), Delete (default for dynamically provisioned PersistentVolumes), and Recycle (deprecated). Recycle must be supported by the volume plugin underlying this PersistentVolume. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming
  final pulumi.Input<String>? persistentVolumeReclaimPolicy;
  /// photonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine. Deprecated: PhotonPersistentDisk is deprecated and the in-tree photonPersistentDisk type is no longer supported.
  final pulumi.Input<PhotonPersistentDiskVolumeSource>? photonPersistentDisk;
  /// portworxVolume represents a portworx volume attached and mounted on kubelets host machine. Deprecated: PortworxVolume is deprecated. All operations for the in-tree portworxVolume type are redirected to the pxd.portworx.com CSI driver when the CSIMigrationPortworx feature-gate is on.
  final pulumi.Input<PortworxVolumeSource>? portworxVolume;
  /// quobyte represents a Quobyte mount on the host that shares a pod's lifetime. Deprecated: Quobyte is deprecated and the in-tree quobyte type is no longer supported.
  final pulumi.Input<QuobyteVolumeSource>? quobyte;
  /// rbd represents a Rados Block Device mount on the host that shares a pod's lifetime. Deprecated: RBD is deprecated and the in-tree rbd type is no longer supported. More info: https://examples.k8s.io/volumes/rbd/README.md
  final pulumi.Input<RBDPersistentVolumeSource>? rbd;
  /// scaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes. Deprecated: ScaleIO is deprecated and the in-tree scaleIO type is no longer supported.
  final pulumi.Input<ScaleIOPersistentVolumeSource>? scaleIO;
  /// storageClassName is the name of StorageClass to which this persistent volume belongs. Empty value means that this volume does not belong to any StorageClass.
  final pulumi.Input<String>? storageClassName;
  /// storageOS represents a StorageOS volume that is attached to the kubelet's host machine and mounted into the pod. Deprecated: StorageOS is deprecated and the in-tree storageos type is no longer supported. More info: https://examples.k8s.io/volumes/storageos/README.md
  final pulumi.Input<StorageOSPersistentVolumeSource>? storageos;
  /// Name of VolumeAttributesClass to which this persistent volume belongs. Empty value is not allowed. When this field is not set, it indicates that this volume does not belong to any VolumeAttributesClass. This field is mutable and can be changed by the CSI driver after a volume has been updated successfully to a new class. For an unbound PersistentVolume, the volumeAttributesClassName will be matched with unbound PersistentVolumeClaims during the binding process.
  final pulumi.Input<String>? volumeAttributesClassName;
  /// volumeMode defines if a volume is intended to be used with a formatted filesystem or to remain in raw block state. Value of Filesystem is implied when not included in spec.
  final pulumi.Input<String>? volumeMode;
  /// vsphereVolume represents a vSphere volume attached and mounted on kubelets host machine. Deprecated: VsphereVolume is deprecated. All operations for the in-tree vsphereVolume type are redirected to the csi.vsphere.vmware.com CSI driver.
  final pulumi.Input<VsphereVirtualDiskVolumeSource>? vsphereVolume;

  /// Creates a new [PersistentVolumeSpec].
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
  PersistentVolumeSpec({
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
      'awsElasticBlockStore': ?pulumi.Input.mapOptionalInputValue<AWSElasticBlockStoreVolumeSource, Map<String, dynamic>>(awsElasticBlockStore, (value) => value.toMap()),
      'azureDisk': ?pulumi.Input.mapOptionalInputValue<AzureDiskVolumeSource, Map<String, dynamic>>(azureDisk, (value) => value.toMap()),
      'azureFile': ?pulumi.Input.mapOptionalInputValue<AzureFilePersistentVolumeSource, Map<String, dynamic>>(azureFile, (value) => value.toMap()),
      'capacity': ?capacity,
      'cephfs': ?pulumi.Input.mapOptionalInputValue<CephFSPersistentVolumeSource, Map<String, dynamic>>(cephfs, (value) => value.toMap()),
      'cinder': ?pulumi.Input.mapOptionalInputValue<CinderPersistentVolumeSource, Map<String, dynamic>>(cinder, (value) => value.toMap()),
      'claimRef': ?pulumi.Input.mapOptionalInputValue<ObjectReference, Map<String, dynamic>>(claimRef, (value) => value.toMap()),
      'csi': ?pulumi.Input.mapOptionalInputValue<CSIPersistentVolumeSource, Map<String, dynamic>>(csi, (value) => value.toMap()),
      'fc': ?pulumi.Input.mapOptionalInputValue<FCVolumeSource, Map<String, dynamic>>(fc, (value) => value.toMap()),
      'flexVolume': ?pulumi.Input.mapOptionalInputValue<FlexPersistentVolumeSource, Map<String, dynamic>>(flexVolume, (value) => value.toMap()),
      'flocker': ?pulumi.Input.mapOptionalInputValue<FlockerVolumeSource, Map<String, dynamic>>(flocker, (value) => value.toMap()),
      'gcePersistentDisk': ?pulumi.Input.mapOptionalInputValue<GCEPersistentDiskVolumeSource, Map<String, dynamic>>(gcePersistentDisk, (value) => value.toMap()),
      'glusterfs': ?pulumi.Input.mapOptionalInputValue<GlusterfsPersistentVolumeSource, Map<String, dynamic>>(glusterfs, (value) => value.toMap()),
      'hostPath': ?pulumi.Input.mapOptionalInputValue<HostPathVolumeSource, Map<String, dynamic>>(hostPath, (value) => value.toMap()),
      'iscsi': ?pulumi.Input.mapOptionalInputValue<ISCSIPersistentVolumeSource, Map<String, dynamic>>(iscsi, (value) => value.toMap()),
      'local': ?pulumi.Input.mapOptionalInputValue<LocalVolumeSource, Map<String, dynamic>>(local, (value) => value.toMap()),
      'mountOptions': ?mountOptions,
      'nfs': ?pulumi.Input.mapOptionalInputValue<NFSVolumeSource, Map<String, dynamic>>(nfs, (value) => value.toMap()),
      'nodeAffinity': ?pulumi.Input.mapOptionalInputValue<VolumeNodeAffinity, Map<String, dynamic>>(nodeAffinity, (value) => value.toMap()),
      'persistentVolumeReclaimPolicy': ?persistentVolumeReclaimPolicy,
      'photonPersistentDisk': ?pulumi.Input.mapOptionalInputValue<PhotonPersistentDiskVolumeSource, Map<String, dynamic>>(photonPersistentDisk, (value) => value.toMap()),
      'portworxVolume': ?pulumi.Input.mapOptionalInputValue<PortworxVolumeSource, Map<String, dynamic>>(portworxVolume, (value) => value.toMap()),
      'quobyte': ?pulumi.Input.mapOptionalInputValue<QuobyteVolumeSource, Map<String, dynamic>>(quobyte, (value) => value.toMap()),
      'rbd': ?pulumi.Input.mapOptionalInputValue<RBDPersistentVolumeSource, Map<String, dynamic>>(rbd, (value) => value.toMap()),
      'scaleIO': ?pulumi.Input.mapOptionalInputValue<ScaleIOPersistentVolumeSource, Map<String, dynamic>>(scaleIO, (value) => value.toMap()),
      'storageClassName': ?storageClassName,
      'storageos': ?pulumi.Input.mapOptionalInputValue<StorageOSPersistentVolumeSource, Map<String, dynamic>>(storageos, (value) => value.toMap()),
      'volumeAttributesClassName': ?volumeAttributesClassName,
      'volumeMode': ?volumeMode,
      'vsphereVolume': ?pulumi.Input.mapOptionalInputValue<VsphereVirtualDiskVolumeSource, Map<String, dynamic>>(vsphereVolume, (value) => value.toMap()),
    };
  }

  factory PersistentVolumeSpec.fromMap(Map<String, dynamic> map) {
    return PersistentVolumeSpec(
      accessModes: map['accessModes'] == null ? null : ((map['accessModes']! as List).cast<String>()).input(),
      awsElasticBlockStore: map['awsElasticBlockStore'] == null ? null : (AWSElasticBlockStoreVolumeSource.fromMap((map['awsElasticBlockStore']! as Map).cast<String, dynamic>())).input(),
      azureDisk: map['azureDisk'] == null ? null : (AzureDiskVolumeSource.fromMap((map['azureDisk']! as Map).cast<String, dynamic>())).input(),
      azureFile: map['azureFile'] == null ? null : (AzureFilePersistentVolumeSource.fromMap((map['azureFile']! as Map).cast<String, dynamic>())).input(),
      capacity: map['capacity'] == null ? null : ((map['capacity']! as Map).cast<String, String>()).input(),
      cephfs: map['cephfs'] == null ? null : (CephFSPersistentVolumeSource.fromMap((map['cephfs']! as Map).cast<String, dynamic>())).input(),
      cinder: map['cinder'] == null ? null : (CinderPersistentVolumeSource.fromMap((map['cinder']! as Map).cast<String, dynamic>())).input(),
      claimRef: map['claimRef'] == null ? null : (ObjectReference.fromMap((map['claimRef']! as Map).cast<String, dynamic>())).input(),
      csi: map['csi'] == null ? null : (CSIPersistentVolumeSource.fromMap((map['csi']! as Map).cast<String, dynamic>())).input(),
      fc: map['fc'] == null ? null : (FCVolumeSource.fromMap((map['fc']! as Map).cast<String, dynamic>())).input(),
      flexVolume: map['flexVolume'] == null ? null : (FlexPersistentVolumeSource.fromMap((map['flexVolume']! as Map).cast<String, dynamic>())).input(),
      flocker: map['flocker'] == null ? null : (FlockerVolumeSource.fromMap((map['flocker']! as Map).cast<String, dynamic>())).input(),
      gcePersistentDisk: map['gcePersistentDisk'] == null ? null : (GCEPersistentDiskVolumeSource.fromMap((map['gcePersistentDisk']! as Map).cast<String, dynamic>())).input(),
      glusterfs: map['glusterfs'] == null ? null : (GlusterfsPersistentVolumeSource.fromMap((map['glusterfs']! as Map).cast<String, dynamic>())).input(),
      hostPath: map['hostPath'] == null ? null : (HostPathVolumeSource.fromMap((map['hostPath']! as Map).cast<String, dynamic>())).input(),
      iscsi: map['iscsi'] == null ? null : (ISCSIPersistentVolumeSource.fromMap((map['iscsi']! as Map).cast<String, dynamic>())).input(),
      local: map['local'] == null ? null : (LocalVolumeSource.fromMap((map['local']! as Map).cast<String, dynamic>())).input(),
      mountOptions: map['mountOptions'] == null ? null : ((map['mountOptions']! as List).cast<String>()).input(),
      nfs: map['nfs'] == null ? null : (NFSVolumeSource.fromMap((map['nfs']! as Map).cast<String, dynamic>())).input(),
      nodeAffinity: map['nodeAffinity'] == null ? null : (VolumeNodeAffinity.fromMap((map['nodeAffinity']! as Map).cast<String, dynamic>())).input(),
      persistentVolumeReclaimPolicy: map['persistentVolumeReclaimPolicy'] == null ? null : (map['persistentVolumeReclaimPolicy']! as String).input(),
      photonPersistentDisk: map['photonPersistentDisk'] == null ? null : (PhotonPersistentDiskVolumeSource.fromMap((map['photonPersistentDisk']! as Map).cast<String, dynamic>())).input(),
      portworxVolume: map['portworxVolume'] == null ? null : (PortworxVolumeSource.fromMap((map['portworxVolume']! as Map).cast<String, dynamic>())).input(),
      quobyte: map['quobyte'] == null ? null : (QuobyteVolumeSource.fromMap((map['quobyte']! as Map).cast<String, dynamic>())).input(),
      rbd: map['rbd'] == null ? null : (RBDPersistentVolumeSource.fromMap((map['rbd']! as Map).cast<String, dynamic>())).input(),
      scaleIO: map['scaleIO'] == null ? null : (ScaleIOPersistentVolumeSource.fromMap((map['scaleIO']! as Map).cast<String, dynamic>())).input(),
      storageClassName: map['storageClassName'] == null ? null : (map['storageClassName']! as String).input(),
      storageos: map['storageos'] == null ? null : (StorageOSPersistentVolumeSource.fromMap((map['storageos']! as Map).cast<String, dynamic>())).input(),
      volumeAttributesClassName: map['volumeAttributesClassName'] == null ? null : (map['volumeAttributesClassName']! as String).input(),
      volumeMode: map['volumeMode'] == null ? null : (map['volumeMode']! as String).input(),
      vsphereVolume: map['vsphereVolume'] == null ? null : (VsphereVirtualDiskVolumeSource.fromMap((map['vsphereVolume']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

