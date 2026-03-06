// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'awselastic_block_store_volume_source_patch.dart';
import 'azure_disk_volume_source_patch.dart';
import 'azure_file_volume_source_patch.dart';
import 'ceph_fsvolume_source_patch.dart';
import 'cinder_volume_source_patch.dart';
import 'config_map_volume_source_patch.dart';
import 'csivolume_source_patch.dart';
import 'downward_apivolume_source_patch.dart';
import 'empty_dir_volume_source_patch.dart';
import 'ephemeral_volume_source_patch.dart';
import 'fcvolume_source_patch.dart';
import 'flex_volume_source_patch.dart';
import 'flocker_volume_source_patch.dart';
import 'gcepersistent_disk_volume_source_patch.dart';
import 'git_repo_volume_source_patch.dart';
import 'glusterfs_volume_source_patch.dart';
import 'host_path_volume_source_patch.dart';
import 'image_volume_source_patch.dart';
import 'iscsivolume_source_patch.dart';
import 'nfsvolume_source_patch.dart';
import 'persistent_volume_claim_volume_source_patch.dart';
import 'photon_persistent_disk_volume_source_patch.dart';
import 'portworx_volume_source_patch.dart';
import 'projected_volume_source_patch.dart';
import 'quobyte_volume_source_patch.dart';
import 'rbdvolume_source_patch.dart';
import 'scale_iovolume_source_patch.dart';
import 'secret_volume_source_patch.dart';
import 'storage_osvolume_source_patch.dart';
import 'vsphere_virtual_disk_volume_source_patch.dart';

/// Volume represents a named volume in a pod that may be accessed by any container in the pod.
class VolumePatch {
  /// awsElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Deprecated: AWSElasticBlockStore is deprecated. All operations for the in-tree awsElasticBlockStore type are redirected to the ebs.csi.aws.com CSI driver. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore
  final pulumi.Input<AWSElasticBlockStoreVolumeSourcePatch>? awsElasticBlockStore;
  /// azureDisk represents an Azure Data Disk mount on the host and bind mount to the pod. Deprecated: AzureDisk is deprecated. All operations for the in-tree azureDisk type are redirected to the disk.csi.azure.com CSI driver.
  final pulumi.Input<AzureDiskVolumeSourcePatch>? azureDisk;
  /// azureFile represents an Azure File Service mount on the host and bind mount to the pod. Deprecated: AzureFile is deprecated. All operations for the in-tree azureFile type are redirected to the file.csi.azure.com CSI driver.
  final pulumi.Input<AzureFileVolumeSourcePatch>? azureFile;
  /// cephFS represents a Ceph FS mount on the host that shares a pod's lifetime. Deprecated: CephFS is deprecated and the in-tree cephfs type is no longer supported.
  final pulumi.Input<CephFSVolumeSourcePatch>? cephfs;
  /// cinder represents a cinder volume attached and mounted on kubelets host machine. Deprecated: Cinder is deprecated. All operations for the in-tree cinder type are redirected to the cinder.csi.openstack.org CSI driver. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
  final pulumi.Input<CinderVolumeSourcePatch>? cinder;
  /// configMap represents a configMap that should populate this volume
  final pulumi.Input<ConfigMapVolumeSourcePatch>? configMap;
  /// csi (Container Storage Interface) represents ephemeral storage that is handled by certain external CSI drivers.
  final pulumi.Input<CSIVolumeSourcePatch>? csi;
  /// downwardAPI represents downward API about the pod that should populate this volume
  final pulumi.Input<DownwardAPIVolumeSourcePatch>? downwardAPI;
  /// emptyDir represents a temporary directory that shares a pod's lifetime. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir
  final pulumi.Input<EmptyDirVolumeSourcePatch>? emptyDir;
  /// ephemeral represents a volume that is handled by a cluster storage driver. The volume's lifecycle is tied to the pod that defines it - it will be created before the pod starts, and deleted when the pod is removed.
  ///
  /// Use this if: a) the volume is only needed while the pod runs, b) features of normal volumes like restoring from snapshot or capacity
  /// tracking are needed,
  /// c) the storage driver is specified through a storage class, and d) the storage driver supports dynamic volume provisioning through
  /// a PersistentVolumeClaim (see EphemeralVolumeSource for more
  /// information on the connection between this volume type
  /// and PersistentVolumeClaim).
  ///
  /// Use PersistentVolumeClaim or one of the vendor-specific APIs for volumes that persist for longer than the lifecycle of an individual pod.
  ///
  /// Use CSI for light-weight local ephemeral volumes if the CSI driver is meant to be used that way - see the documentation of the driver for more information.
  ///
  /// A pod can use both types of ephemeral volumes and persistent volumes at the same time.
  final pulumi.Input<EphemeralVolumeSourcePatch>? ephemeral;
  /// fc represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod.
  final pulumi.Input<FCVolumeSourcePatch>? fc;
  /// flexVolume represents a generic volume resource that is provisioned/attached using an exec based plugin. Deprecated: FlexVolume is deprecated. Consider using a CSIDriver instead.
  final pulumi.Input<FlexVolumeSourcePatch>? flexVolume;
  /// flocker represents a Flocker volume attached to a kubelet's host machine. This depends on the Flocker control service being running. Deprecated: Flocker is deprecated and the in-tree flocker type is no longer supported.
  final pulumi.Input<FlockerVolumeSourcePatch>? flocker;
  /// gcePersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Deprecated: GCEPersistentDisk is deprecated. All operations for the in-tree gcePersistentDisk type are redirected to the pd.csi.storage.gke.io CSI driver. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
  final pulumi.Input<GCEPersistentDiskVolumeSourcePatch>? gcePersistentDisk;
  /// gitRepo represents a git repository at a particular revision. Deprecated: GitRepo is deprecated. To provision a container with a git repo, mount an EmptyDir into an InitContainer that clones the repo using git, then mount the EmptyDir into the Pod's container.
  final pulumi.Input<GitRepoVolumeSourcePatch>? gitRepo;
  /// glusterfs represents a Glusterfs mount on the host that shares a pod's lifetime. Deprecated: Glusterfs is deprecated and the in-tree glusterfs type is no longer supported.
  final pulumi.Input<GlusterfsVolumeSourcePatch>? glusterfs;
  /// hostPath represents a pre-existing file or directory on the host machine that is directly exposed to the container. This is generally used for system agents or other privileged things that are allowed to see the host machine. Most containers will NOT need this. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
  final pulumi.Input<HostPathVolumeSourcePatch>? hostPath;
  /// image represents an OCI object (a container image or artifact) pulled and mounted on the kubelet's host machine. The volume is resolved at pod startup depending on which PullPolicy value is provided:
  ///
  /// - Always: the kubelet always attempts to pull the reference. Container creation will fail If the pull fails. - Never: the kubelet never pulls the reference and only uses a local image or artifact. Container creation will fail if the reference isn't present. - IfNotPresent: the kubelet pulls if the reference isn't already present on disk. Container creation will fail if the reference isn't present and the pull fails.
  ///
  /// The volume gets re-resolved if the pod gets deleted and recreated, which means that new remote content will become available on pod recreation. A failure to resolve or pull the image during pod startup will block containers from starting and may add significant latency. Failures will be retried using normal volume backoff and will be reported on the pod reason and message. The types of objects that may be mounted by this volume are defined by the container runtime implementation on a host machine and at minimum must include all valid types supported by the container image field. The OCI object gets mounted in a single directory (spec.containers[*].volumeMounts.mountPath) by merging the manifest layers in the same way as for container images. The volume will be mounted read-only (ro) and non-executable files (noexec). Sub path mounts for containers are not supported (spec.containers[*].volumeMounts.subpath) before 1.33. The field spec.securityContext.fsGroupChangePolicy has no effect on this volume type.
  final pulumi.Input<ImageVolumeSourcePatch>? image;
  /// iscsi represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes/#iscsi
  final pulumi.Input<ISCSIVolumeSourcePatch>? iscsi;
  /// name of the volume. Must be a DNS_LABEL and unique within the pod. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  final pulumi.Input<String>? name;
  /// nfs represents an NFS mount on the host that shares a pod's lifetime More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
  final pulumi.Input<NFSVolumeSourcePatch>? nfs;
  /// persistentVolumeClaimVolumeSource represents a reference to a PersistentVolumeClaim in the same namespace. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims
  final pulumi.Input<PersistentVolumeClaimVolumeSourcePatch>? persistentVolumeClaim;
  /// photonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine. Deprecated: PhotonPersistentDisk is deprecated and the in-tree photonPersistentDisk type is no longer supported.
  final pulumi.Input<PhotonPersistentDiskVolumeSourcePatch>? photonPersistentDisk;
  /// portworxVolume represents a portworx volume attached and mounted on kubelets host machine. Deprecated: PortworxVolume is deprecated. All operations for the in-tree portworxVolume type are redirected to the pxd.portworx.com CSI driver when the CSIMigrationPortworx feature-gate is on.
  final pulumi.Input<PortworxVolumeSourcePatch>? portworxVolume;
  /// projected items for all in one resources secrets, configmaps, and downward API
  final pulumi.Input<ProjectedVolumeSourcePatch>? projected;
  /// quobyte represents a Quobyte mount on the host that shares a pod's lifetime. Deprecated: Quobyte is deprecated and the in-tree quobyte type is no longer supported.
  final pulumi.Input<QuobyteVolumeSourcePatch>? quobyte;
  /// rbd represents a Rados Block Device mount on the host that shares a pod's lifetime. Deprecated: RBD is deprecated and the in-tree rbd type is no longer supported.
  final pulumi.Input<RBDVolumeSourcePatch>? rbd;
  /// scaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes. Deprecated: ScaleIO is deprecated and the in-tree scaleIO type is no longer supported.
  final pulumi.Input<ScaleIOVolumeSourcePatch>? scaleIO;
  /// secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret
  final pulumi.Input<SecretVolumeSourcePatch>? secret;
  /// storageOS represents a StorageOS volume attached and mounted on Kubernetes nodes. Deprecated: StorageOS is deprecated and the in-tree storageos type is no longer supported.
  final pulumi.Input<StorageOSVolumeSourcePatch>? storageos;
  /// vsphereVolume represents a vSphere volume attached and mounted on kubelets host machine. Deprecated: VsphereVolume is deprecated. All operations for the in-tree vsphereVolume type are redirected to the csi.vsphere.vmware.com CSI driver.
  final pulumi.Input<VsphereVirtualDiskVolumeSourcePatch>? vsphereVolume;

  /// Creates a new [VolumePatch].
  /// [awsElasticBlockStore] awsElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Deprecated: AWSElasticBlockStore is deprecated. All operations for the in-tree awsElasticBlockStore type are redirected to the ebs.csi.aws.com CSI driver. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore
  /// [azureDisk] azureDisk represents an Azure Data Disk mount on the host and bind mount to the pod. Deprecated: AzureDisk is deprecated. All operations for the in-tree azureDisk type are redirected to the disk.csi.azure.com CSI driver.
  /// [azureFile] azureFile represents an Azure File Service mount on the host and bind mount to the pod. Deprecated: AzureFile is deprecated. All operations for the in-tree azureFile type are redirected to the file.csi.azure.com CSI driver.
  /// [cephfs] cephFS represents a Ceph FS mount on the host that shares a pod's lifetime. Deprecated: CephFS is deprecated and the in-tree cephfs type is no longer supported.
  /// [cinder] cinder represents a cinder volume attached and mounted on kubelets host machine. Deprecated: Cinder is deprecated. All operations for the in-tree cinder type are redirected to the cinder.csi.openstack.org CSI driver. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
  /// [configMap] configMap represents a configMap that should populate this volume
  /// [csi] csi (Container Storage Interface) represents ephemeral storage that is handled by certain external CSI drivers.
  /// [downwardAPI] downwardAPI represents downward API about the pod that should populate this volume
  /// [emptyDir] emptyDir represents a temporary directory that shares a pod's lifetime. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir
  /// [ephemeral] ephemeral represents a volume that is handled by a cluster storage driver. The volume's lifecycle is tied to the pod that defines it - it will be created before the pod starts, and deleted when the pod is removed.
  /// [fc] fc represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod.
  /// [flexVolume] flexVolume represents a generic volume resource that is provisioned/attached using an exec based plugin. Deprecated: FlexVolume is deprecated. Consider using a CSIDriver instead.
  /// [flocker] flocker represents a Flocker volume attached to a kubelet's host machine. This depends on the Flocker control service being running. Deprecated: Flocker is deprecated and the in-tree flocker type is no longer supported.
  /// [gcePersistentDisk] gcePersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Deprecated: GCEPersistentDisk is deprecated. All operations for the in-tree gcePersistentDisk type are redirected to the pd.csi.storage.gke.io CSI driver. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
  /// [gitRepo] gitRepo represents a git repository at a particular revision. Deprecated: GitRepo is deprecated. To provision a container with a git repo, mount an EmptyDir into an InitContainer that clones the repo using git, then mount the EmptyDir into the Pod's container.
  /// [glusterfs] glusterfs represents a Glusterfs mount on the host that shares a pod's lifetime. Deprecated: Glusterfs is deprecated and the in-tree glusterfs type is no longer supported.
  /// [hostPath] hostPath represents a pre-existing file or directory on the host machine that is directly exposed to the container. This is generally used for system agents or other privileged things that are allowed to see the host machine. Most containers will NOT need this. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
  /// [image] image represents an OCI object (a container image or artifact) pulled and mounted on the kubelet's host machine. The volume is resolved at pod startup depending on which PullPolicy value is provided:
  /// [iscsi] iscsi represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes/#iscsi
  /// [name] name of the volume. Must be a DNS_LABEL and unique within the pod. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  /// [nfs] nfs represents an NFS mount on the host that shares a pod's lifetime More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
  /// [persistentVolumeClaim] persistentVolumeClaimVolumeSource represents a reference to a PersistentVolumeClaim in the same namespace. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims
  /// [photonPersistentDisk] photonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine. Deprecated: PhotonPersistentDisk is deprecated and the in-tree photonPersistentDisk type is no longer supported.
  /// [portworxVolume] portworxVolume represents a portworx volume attached and mounted on kubelets host machine. Deprecated: PortworxVolume is deprecated. All operations for the in-tree portworxVolume type are redirected to the pxd.portworx.com CSI driver when the CSIMigrationPortworx feature-gate is on.
  /// [projected] projected items for all in one resources secrets, configmaps, and downward API
  /// [quobyte] quobyte represents a Quobyte mount on the host that shares a pod's lifetime. Deprecated: Quobyte is deprecated and the in-tree quobyte type is no longer supported.
  /// [rbd] rbd represents a Rados Block Device mount on the host that shares a pod's lifetime. Deprecated: RBD is deprecated and the in-tree rbd type is no longer supported.
  /// [scaleIO] scaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes. Deprecated: ScaleIO is deprecated and the in-tree scaleIO type is no longer supported.
  /// [secret] secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret
  /// [storageos] storageOS represents a StorageOS volume attached and mounted on Kubernetes nodes. Deprecated: StorageOS is deprecated and the in-tree storageos type is no longer supported.
  /// [vsphereVolume] vsphereVolume represents a vSphere volume attached and mounted on kubelets host machine. Deprecated: VsphereVolume is deprecated. All operations for the in-tree vsphereVolume type are redirected to the csi.vsphere.vmware.com CSI driver.
  const VolumePatch({
    this.awsElasticBlockStore,
    this.azureDisk,
    this.azureFile,
    this.cephfs,
    this.cinder,
    this.configMap,
    this.csi,
    this.downwardAPI,
    this.emptyDir,
    this.ephemeral,
    this.fc,
    this.flexVolume,
    this.flocker,
    this.gcePersistentDisk,
    this.gitRepo,
    this.glusterfs,
    this.hostPath,
    this.image,
    this.iscsi,
    this.name,
    this.nfs,
    this.persistentVolumeClaim,
    this.photonPersistentDisk,
    this.portworxVolume,
    this.projected,
    this.quobyte,
    this.rbd,
    this.scaleIO,
    this.secret,
    this.storageos,
    this.vsphereVolume,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsElasticBlockStore': ?pulumi.Input.mapOptionalInputValue<AWSElasticBlockStoreVolumeSourcePatch, Map<String, dynamic>>(awsElasticBlockStore, (value) => value.toMap()),
      'azureDisk': ?pulumi.Input.mapOptionalInputValue<AzureDiskVolumeSourcePatch, Map<String, dynamic>>(azureDisk, (value) => value.toMap()),
      'azureFile': ?pulumi.Input.mapOptionalInputValue<AzureFileVolumeSourcePatch, Map<String, dynamic>>(azureFile, (value) => value.toMap()),
      'cephfs': ?pulumi.Input.mapOptionalInputValue<CephFSVolumeSourcePatch, Map<String, dynamic>>(cephfs, (value) => value.toMap()),
      'cinder': ?pulumi.Input.mapOptionalInputValue<CinderVolumeSourcePatch, Map<String, dynamic>>(cinder, (value) => value.toMap()),
      'configMap': ?pulumi.Input.mapOptionalInputValue<ConfigMapVolumeSourcePatch, Map<String, dynamic>>(configMap, (value) => value.toMap()),
      'csi': ?pulumi.Input.mapOptionalInputValue<CSIVolumeSourcePatch, Map<String, dynamic>>(csi, (value) => value.toMap()),
      'downwardAPI': ?pulumi.Input.mapOptionalInputValue<DownwardAPIVolumeSourcePatch, Map<String, dynamic>>(downwardAPI, (value) => value.toMap()),
      'emptyDir': ?pulumi.Input.mapOptionalInputValue<EmptyDirVolumeSourcePatch, Map<String, dynamic>>(emptyDir, (value) => value.toMap()),
      'ephemeral': ?pulumi.Input.mapOptionalInputValue<EphemeralVolumeSourcePatch, Map<String, dynamic>>(ephemeral, (value) => value.toMap()),
      'fc': ?pulumi.Input.mapOptionalInputValue<FCVolumeSourcePatch, Map<String, dynamic>>(fc, (value) => value.toMap()),
      'flexVolume': ?pulumi.Input.mapOptionalInputValue<FlexVolumeSourcePatch, Map<String, dynamic>>(flexVolume, (value) => value.toMap()),
      'flocker': ?pulumi.Input.mapOptionalInputValue<FlockerVolumeSourcePatch, Map<String, dynamic>>(flocker, (value) => value.toMap()),
      'gcePersistentDisk': ?pulumi.Input.mapOptionalInputValue<GCEPersistentDiskVolumeSourcePatch, Map<String, dynamic>>(gcePersistentDisk, (value) => value.toMap()),
      'gitRepo': ?pulumi.Input.mapOptionalInputValue<GitRepoVolumeSourcePatch, Map<String, dynamic>>(gitRepo, (value) => value.toMap()),
      'glusterfs': ?pulumi.Input.mapOptionalInputValue<GlusterfsVolumeSourcePatch, Map<String, dynamic>>(glusterfs, (value) => value.toMap()),
      'hostPath': ?pulumi.Input.mapOptionalInputValue<HostPathVolumeSourcePatch, Map<String, dynamic>>(hostPath, (value) => value.toMap()),
      'image': ?pulumi.Input.mapOptionalInputValue<ImageVolumeSourcePatch, Map<String, dynamic>>(image, (value) => value.toMap()),
      'iscsi': ?pulumi.Input.mapOptionalInputValue<ISCSIVolumeSourcePatch, Map<String, dynamic>>(iscsi, (value) => value.toMap()),
      'name': ?name,
      'nfs': ?pulumi.Input.mapOptionalInputValue<NFSVolumeSourcePatch, Map<String, dynamic>>(nfs, (value) => value.toMap()),
      'persistentVolumeClaim': ?pulumi.Input.mapOptionalInputValue<PersistentVolumeClaimVolumeSourcePatch, Map<String, dynamic>>(persistentVolumeClaim, (value) => value.toMap()),
      'photonPersistentDisk': ?pulumi.Input.mapOptionalInputValue<PhotonPersistentDiskVolumeSourcePatch, Map<String, dynamic>>(photonPersistentDisk, (value) => value.toMap()),
      'portworxVolume': ?pulumi.Input.mapOptionalInputValue<PortworxVolumeSourcePatch, Map<String, dynamic>>(portworxVolume, (value) => value.toMap()),
      'projected': ?pulumi.Input.mapOptionalInputValue<ProjectedVolumeSourcePatch, Map<String, dynamic>>(projected, (value) => value.toMap()),
      'quobyte': ?pulumi.Input.mapOptionalInputValue<QuobyteVolumeSourcePatch, Map<String, dynamic>>(quobyte, (value) => value.toMap()),
      'rbd': ?pulumi.Input.mapOptionalInputValue<RBDVolumeSourcePatch, Map<String, dynamic>>(rbd, (value) => value.toMap()),
      'scaleIO': ?pulumi.Input.mapOptionalInputValue<ScaleIOVolumeSourcePatch, Map<String, dynamic>>(scaleIO, (value) => value.toMap()),
      'secret': ?pulumi.Input.mapOptionalInputValue<SecretVolumeSourcePatch, Map<String, dynamic>>(secret, (value) => value.toMap()),
      'storageos': ?pulumi.Input.mapOptionalInputValue<StorageOSVolumeSourcePatch, Map<String, dynamic>>(storageos, (value) => value.toMap()),
      'vsphereVolume': ?pulumi.Input.mapOptionalInputValue<VsphereVirtualDiskVolumeSourcePatch, Map<String, dynamic>>(vsphereVolume, (value) => value.toMap()),
    };
  }

  factory VolumePatch.fromMap(Map<String, dynamic> map) {
    return VolumePatch(
      awsElasticBlockStore: (() { final guardedValue = map['awsElasticBlockStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AWSElasticBlockStoreVolumeSourcePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureDisk: (() { final guardedValue = map['azureDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureDiskVolumeSourcePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureFile: (() { final guardedValue = map['azureFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureFileVolumeSourcePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cephfs: (() { final guardedValue = map['cephfs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CephFSVolumeSourcePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cinder: (() { final guardedValue = map['cinder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CinderVolumeSourcePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      configMap: (() { final guardedValue = map['configMap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigMapVolumeSourcePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      csi: (() { final guardedValue = map['csi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CSIVolumeSourcePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      downwardAPI: (() { final guardedValue = map['downwardAPI']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DownwardAPIVolumeSourcePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      emptyDir: (() { final guardedValue = map['emptyDir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EmptyDirVolumeSourcePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ephemeral: (() { final guardedValue = map['ephemeral']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EphemeralVolumeSourcePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fc: (() { final guardedValue = map['fc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FCVolumeSourcePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      flexVolume: (() { final guardedValue = map['flexVolume']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlexVolumeSourcePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      flocker: (() { final guardedValue = map['flocker']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlockerVolumeSourcePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gcePersistentDisk: (() { final guardedValue = map['gcePersistentDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GCEPersistentDiskVolumeSourcePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gitRepo: (() { final guardedValue = map['gitRepo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GitRepoVolumeSourcePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      glusterfs: (() { final guardedValue = map['glusterfs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GlusterfsVolumeSourcePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostPath: (() { final guardedValue = map['hostPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HostPathVolumeSourcePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageVolumeSourcePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      iscsi: (() { final guardedValue = map['iscsi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ISCSIVolumeSourcePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nfs: (() { final guardedValue = map['nfs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NFSVolumeSourcePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      persistentVolumeClaim: (() { final guardedValue = map['persistentVolumeClaim']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PersistentVolumeClaimVolumeSourcePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      photonPersistentDisk: (() { final guardedValue = map['photonPersistentDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PhotonPersistentDiskVolumeSourcePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      portworxVolume: (() { final guardedValue = map['portworxVolume']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PortworxVolumeSourcePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      projected: (() { final guardedValue = map['projected']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectedVolumeSourcePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      quobyte: (() { final guardedValue = map['quobyte']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QuobyteVolumeSourcePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rbd: (() { final guardedValue = map['rbd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RBDVolumeSourcePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scaleIO: (() { final guardedValue = map['scaleIO']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScaleIOVolumeSourcePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecretVolumeSourcePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageos: (() { final guardedValue = map['storageos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageOSVolumeSourcePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vsphereVolume: (() { final guardedValue = map['vsphereVolume']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VsphereVirtualDiskVolumeSourcePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

