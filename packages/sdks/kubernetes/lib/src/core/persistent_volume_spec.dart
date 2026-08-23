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
  /// portworxVolume represents a portworx volume attached and mounted on kubelets host machine. Deprecated: PortworxVolume is deprecated. All operations for the in-tree portworxVolume type are redirected to the pxd.portworx.com CSI driver.
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
  /// [portworxVolume] portworxVolume represents a portworx volume attached and mounted on kubelets host machine. Deprecated: PortworxVolume is deprecated. All operations for the in-tree portworxVolume type are redirected to the pxd.portworx.com CSI driver.
  /// [quobyte] quobyte represents a Quobyte mount on the host that shares a pod's lifetime. Deprecated: Quobyte is deprecated and the in-tree quobyte type is no longer supported.
  /// [rbd] rbd represents a Rados Block Device mount on the host that shares a pod's lifetime. Deprecated: RBD is deprecated and the in-tree rbd type is no longer supported. More info: https://examples.k8s.io/volumes/rbd/README.md
  /// [scaleIO] scaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes. Deprecated: ScaleIO is deprecated and the in-tree scaleIO type is no longer supported.
  /// [storageClassName] storageClassName is the name of StorageClass to which this persistent volume belongs. Empty value means that this volume does not belong to any StorageClass.
  /// [storageos] storageOS represents a StorageOS volume that is attached to the kubelet's host machine and mounted into the pod. Deprecated: StorageOS is deprecated and the in-tree storageos type is no longer supported. More info: https://examples.k8s.io/volumes/storageos/README.md
  /// [volumeAttributesClassName] Name of VolumeAttributesClass to which this persistent volume belongs. Empty value is not allowed. When this field is not set, it indicates that this volume does not belong to any VolumeAttributesClass. This field is mutable and can be changed by the CSI driver after a volume has been updated successfully to a new class. For an unbound PersistentVolume, the volumeAttributesClassName will be matched with unbound PersistentVolumeClaims during the binding process.
  /// [volumeMode] volumeMode defines if a volume is intended to be used with a formatted filesystem or to remain in raw block state. Value of Filesystem is implied when not included in spec.
  /// [vsphereVolume] vsphereVolume represents a vSphere volume attached and mounted on kubelets host machine. Deprecated: VsphereVolume is deprecated. All operations for the in-tree vsphereVolume type are redirected to the csi.vsphere.vmware.com CSI driver.
  const PersistentVolumeSpec({
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
      accessModes: (() { final guardedValue = map['accessModes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      awsElasticBlockStore: (() { final guardedValue = map['awsElasticBlockStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AWSElasticBlockStoreVolumeSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureDisk: (() { final guardedValue = map['azureDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureDiskVolumeSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureFile: (() { final guardedValue = map['azureFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureFilePersistentVolumeSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      cephfs: (() { final guardedValue = map['cephfs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CephFSPersistentVolumeSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cinder: (() { final guardedValue = map['cinder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CinderPersistentVolumeSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      claimRef: (() { final guardedValue = map['claimRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      csi: (() { final guardedValue = map['csi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CSIPersistentVolumeSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fc: (() { final guardedValue = map['fc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FCVolumeSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      flexVolume: (() { final guardedValue = map['flexVolume']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlexPersistentVolumeSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      flocker: (() { final guardedValue = map['flocker']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlockerVolumeSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gcePersistentDisk: (() { final guardedValue = map['gcePersistentDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GCEPersistentDiskVolumeSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      glusterfs: (() { final guardedValue = map['glusterfs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GlusterfsPersistentVolumeSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostPath: (() { final guardedValue = map['hostPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HostPathVolumeSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      iscsi: (() { final guardedValue = map['iscsi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ISCSIPersistentVolumeSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      local: (() { final guardedValue = map['local']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LocalVolumeSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mountOptions: (() { final guardedValue = map['mountOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nfs: (() { final guardedValue = map['nfs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NFSVolumeSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodeAffinity: (() { final guardedValue = map['nodeAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeNodeAffinity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      persistentVolumeReclaimPolicy: (() { final guardedValue = map['persistentVolumeReclaimPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      photonPersistentDisk: (() { final guardedValue = map['photonPersistentDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PhotonPersistentDiskVolumeSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      portworxVolume: (() { final guardedValue = map['portworxVolume']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PortworxVolumeSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      quobyte: (() { final guardedValue = map['quobyte']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QuobyteVolumeSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rbd: (() { final guardedValue = map['rbd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RBDPersistentVolumeSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scaleIO: (() { final guardedValue = map['scaleIO']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScaleIOPersistentVolumeSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageClassName: (() { final guardedValue = map['storageClassName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageos: (() { final guardedValue = map['storageos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageOSPersistentVolumeSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      volumeAttributesClassName: (() { final guardedValue = map['volumeAttributesClassName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeMode: (() { final guardedValue = map['volumeMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vsphereVolume: (() { final guardedValue = map['vsphereVolume']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VsphereVirtualDiskVolumeSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
