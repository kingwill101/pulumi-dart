// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'awselastic_block_store_volume_source.dart';
import 'azure_disk_volume_source.dart';
import 'azure_file_volume_source.dart';
import 'ceph_fsvolume_source.dart';
import 'cinder_volume_source.dart';
import 'config_map_volume_source.dart';
import 'csivolume_source.dart';
import 'downward_apivolume_source.dart';
import 'empty_dir_volume_source.dart';
import 'ephemeral_volume_source.dart';
import 'fcvolume_source.dart';
import 'flex_volume_source.dart';
import 'flocker_volume_source.dart';
import 'gcepersistent_disk_volume_source.dart';
import 'git_repo_volume_source.dart';
import 'glusterfs_volume_source.dart';
import 'host_path_volume_source.dart';
import 'image_volume_source.dart';
import 'iscsivolume_source.dart';
import 'nfsvolume_source.dart';
import 'persistent_volume_claim_volume_source.dart';
import 'photon_persistent_disk_volume_source.dart';
import 'portworx_volume_source.dart';
import 'projected_volume_source.dart';
import 'quobyte_volume_source.dart';
import 'rbdvolume_source.dart';
import 'scale_iovolume_source.dart';
import 'secret_volume_source.dart';
import 'storage_osvolume_source.dart';
import 'vsphere_virtual_disk_volume_source.dart';

/// Volume represents a named volume in a pod that may be accessed by any container in the pod.
class Volume {
  /// awsElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Deprecated: AWSElasticBlockStore is deprecated. All operations for the in-tree awsElasticBlockStore type are redirected to the ebs.csi.aws.com CSI driver. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore
  final pulumi.Input<AWSElasticBlockStoreVolumeSource>? awsElasticBlockStore;
  /// azureDisk represents an Azure Data Disk mount on the host and bind mount to the pod. Deprecated: AzureDisk is deprecated. All operations for the in-tree azureDisk type are redirected to the disk.csi.azure.com CSI driver.
  final pulumi.Input<AzureDiskVolumeSource>? azureDisk;
  /// azureFile represents an Azure File Service mount on the host and bind mount to the pod. Deprecated: AzureFile is deprecated. All operations for the in-tree azureFile type are redirected to the file.csi.azure.com CSI driver.
  final pulumi.Input<AzureFileVolumeSource>? azureFile;
  /// cephFS represents a Ceph FS mount on the host that shares a pod's lifetime. Deprecated: CephFS is deprecated and the in-tree cephfs type is no longer supported.
  final pulumi.Input<CephFSVolumeSource>? cephfs;
  /// cinder represents a cinder volume attached and mounted on kubelets host machine. Deprecated: Cinder is deprecated. All operations for the in-tree cinder type are redirected to the cinder.csi.openstack.org CSI driver. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
  final pulumi.Input<CinderVolumeSource>? cinder;
  /// configMap represents a configMap that should populate this volume
  final pulumi.Input<ConfigMapVolumeSource>? configMap;
  /// csi (Container Storage Interface) represents ephemeral storage that is handled by certain external CSI drivers.
  final pulumi.Input<CSIVolumeSource>? csi;
  /// downwardAPI represents downward API about the pod that should populate this volume
  final pulumi.Input<DownwardAPIVolumeSource>? downwardAPI;
  /// emptyDir represents a temporary directory that shares a pod's lifetime. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir
  final pulumi.Input<EmptyDirVolumeSource>? emptyDir;
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
  final pulumi.Input<EphemeralVolumeSource>? ephemeral;
  /// fc represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod.
  final pulumi.Input<FCVolumeSource>? fc;
  /// flexVolume represents a generic volume resource that is provisioned/attached using an exec based plugin. Deprecated: FlexVolume is deprecated. Consider using a CSIDriver instead.
  final pulumi.Input<FlexVolumeSource>? flexVolume;
  /// flocker represents a Flocker volume attached to a kubelet's host machine. This depends on the Flocker control service being running. Deprecated: Flocker is deprecated and the in-tree flocker type is no longer supported.
  final pulumi.Input<FlockerVolumeSource>? flocker;
  /// gcePersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Deprecated: GCEPersistentDisk is deprecated. All operations for the in-tree gcePersistentDisk type are redirected to the pd.csi.storage.gke.io CSI driver. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
  final pulumi.Input<GCEPersistentDiskVolumeSource>? gcePersistentDisk;
  /// gitRepo represents a git repository at a particular revision. Deprecated: GitRepo is deprecated. To provision a container with a git repo, mount an EmptyDir into an InitContainer that clones the repo using git, then mount the EmptyDir into the Pod's container.
  final pulumi.Input<GitRepoVolumeSource>? gitRepo;
  /// glusterfs represents a Glusterfs mount on the host that shares a pod's lifetime. Deprecated: Glusterfs is deprecated and the in-tree glusterfs type is no longer supported.
  final pulumi.Input<GlusterfsVolumeSource>? glusterfs;
  /// hostPath represents a pre-existing file or directory on the host machine that is directly exposed to the container. This is generally used for system agents or other privileged things that are allowed to see the host machine. Most containers will NOT need this. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
  final pulumi.Input<HostPathVolumeSource>? hostPath;
  /// image represents an OCI object (a container image or artifact) pulled and mounted on the kubelet's host machine. The volume is resolved at pod startup depending on which PullPolicy value is provided:
  ///
  /// - Always: the kubelet always attempts to pull the reference. Container creation will fail If the pull fails. - Never: the kubelet never pulls the reference and only uses a local image or artifact. Container creation will fail if the reference isn't present. - IfNotPresent: the kubelet pulls if the reference isn't already present on disk. Container creation will fail if the reference isn't present and the pull fails.
  ///
  /// The volume gets re-resolved if the pod gets deleted and recreated, which means that new remote content will become available on pod recreation. A failure to resolve or pull the image during pod startup will block containers from starting and may add significant latency. Failures will be retried using normal volume backoff and will be reported on the pod reason and message. The types of objects that may be mounted by this volume are defined by the container runtime implementation on a host machine and at minimum must include all valid types supported by the container image field. The OCI object gets mounted in a single directory (spec.containers[*].volumeMounts.mountPath) by merging the manifest layers in the same way as for container images. The volume will be mounted read-only (ro) and non-executable files (noexec). Sub path mounts for containers are not supported (spec.containers[*].volumeMounts.subpath) before 1.33. The field spec.securityContext.fsGroupChangePolicy has no effect on this volume type.
  final pulumi.Input<ImageVolumeSource>? image;
  /// iscsi represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes/#iscsi
  final pulumi.Input<ISCSIVolumeSource>? iscsi;
  /// name of the volume. Must be a DNS_LABEL and unique within the pod. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  final pulumi.Input<String> name;
  /// nfs represents an NFS mount on the host that shares a pod's lifetime More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
  final pulumi.Input<NFSVolumeSource>? nfs;
  /// persistentVolumeClaimVolumeSource represents a reference to a PersistentVolumeClaim in the same namespace. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims
  final pulumi.Input<PersistentVolumeClaimVolumeSource>? persistentVolumeClaim;
  /// photonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine. Deprecated: PhotonPersistentDisk is deprecated and the in-tree photonPersistentDisk type is no longer supported.
  final pulumi.Input<PhotonPersistentDiskVolumeSource>? photonPersistentDisk;
  /// portworxVolume represents a portworx volume attached and mounted on kubelets host machine. Deprecated: PortworxVolume is deprecated. All operations for the in-tree portworxVolume type are redirected to the pxd.portworx.com CSI driver when the CSIMigrationPortworx feature-gate is on.
  final pulumi.Input<PortworxVolumeSource>? portworxVolume;
  /// projected items for all in one resources secrets, configmaps, and downward API
  final pulumi.Input<ProjectedVolumeSource>? projected;
  /// quobyte represents a Quobyte mount on the host that shares a pod's lifetime. Deprecated: Quobyte is deprecated and the in-tree quobyte type is no longer supported.
  final pulumi.Input<QuobyteVolumeSource>? quobyte;
  /// rbd represents a Rados Block Device mount on the host that shares a pod's lifetime. Deprecated: RBD is deprecated and the in-tree rbd type is no longer supported.
  final pulumi.Input<RBDVolumeSource>? rbd;
  /// scaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes. Deprecated: ScaleIO is deprecated and the in-tree scaleIO type is no longer supported.
  final pulumi.Input<ScaleIOVolumeSource>? scaleIO;
  /// secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret
  final pulumi.Input<SecretVolumeSource>? secret;
  /// storageOS represents a StorageOS volume attached and mounted on Kubernetes nodes. Deprecated: StorageOS is deprecated and the in-tree storageos type is no longer supported.
  final pulumi.Input<StorageOSVolumeSource>? storageos;
  /// vsphereVolume represents a vSphere volume attached and mounted on kubelets host machine. Deprecated: VsphereVolume is deprecated. All operations for the in-tree vsphereVolume type are redirected to the csi.vsphere.vmware.com CSI driver.
  final pulumi.Input<VsphereVirtualDiskVolumeSource>? vsphereVolume;

  /// Creates a new [Volume].
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
  Volume({
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
    required this.name,
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
      'awsElasticBlockStore': ?pulumi.Input.mapOptionalInputValue<AWSElasticBlockStoreVolumeSource, Map<String, dynamic>>(awsElasticBlockStore, (value) => value.toMap()),
      'azureDisk': ?pulumi.Input.mapOptionalInputValue<AzureDiskVolumeSource, Map<String, dynamic>>(azureDisk, (value) => value.toMap()),
      'azureFile': ?pulumi.Input.mapOptionalInputValue<AzureFileVolumeSource, Map<String, dynamic>>(azureFile, (value) => value.toMap()),
      'cephfs': ?pulumi.Input.mapOptionalInputValue<CephFSVolumeSource, Map<String, dynamic>>(cephfs, (value) => value.toMap()),
      'cinder': ?pulumi.Input.mapOptionalInputValue<CinderVolumeSource, Map<String, dynamic>>(cinder, (value) => value.toMap()),
      'configMap': ?pulumi.Input.mapOptionalInputValue<ConfigMapVolumeSource, Map<String, dynamic>>(configMap, (value) => value.toMap()),
      'csi': ?pulumi.Input.mapOptionalInputValue<CSIVolumeSource, Map<String, dynamic>>(csi, (value) => value.toMap()),
      'downwardAPI': ?pulumi.Input.mapOptionalInputValue<DownwardAPIVolumeSource, Map<String, dynamic>>(downwardAPI, (value) => value.toMap()),
      'emptyDir': ?pulumi.Input.mapOptionalInputValue<EmptyDirVolumeSource, Map<String, dynamic>>(emptyDir, (value) => value.toMap()),
      'ephemeral': ?pulumi.Input.mapOptionalInputValue<EphemeralVolumeSource, Map<String, dynamic>>(ephemeral, (value) => value.toMap()),
      'fc': ?pulumi.Input.mapOptionalInputValue<FCVolumeSource, Map<String, dynamic>>(fc, (value) => value.toMap()),
      'flexVolume': ?pulumi.Input.mapOptionalInputValue<FlexVolumeSource, Map<String, dynamic>>(flexVolume, (value) => value.toMap()),
      'flocker': ?pulumi.Input.mapOptionalInputValue<FlockerVolumeSource, Map<String, dynamic>>(flocker, (value) => value.toMap()),
      'gcePersistentDisk': ?pulumi.Input.mapOptionalInputValue<GCEPersistentDiskVolumeSource, Map<String, dynamic>>(gcePersistentDisk, (value) => value.toMap()),
      'gitRepo': ?pulumi.Input.mapOptionalInputValue<GitRepoVolumeSource, Map<String, dynamic>>(gitRepo, (value) => value.toMap()),
      'glusterfs': ?pulumi.Input.mapOptionalInputValue<GlusterfsVolumeSource, Map<String, dynamic>>(glusterfs, (value) => value.toMap()),
      'hostPath': ?pulumi.Input.mapOptionalInputValue<HostPathVolumeSource, Map<String, dynamic>>(hostPath, (value) => value.toMap()),
      'image': ?pulumi.Input.mapOptionalInputValue<ImageVolumeSource, Map<String, dynamic>>(image, (value) => value.toMap()),
      'iscsi': ?pulumi.Input.mapOptionalInputValue<ISCSIVolumeSource, Map<String, dynamic>>(iscsi, (value) => value.toMap()),
      'name': name,
      'nfs': ?pulumi.Input.mapOptionalInputValue<NFSVolumeSource, Map<String, dynamic>>(nfs, (value) => value.toMap()),
      'persistentVolumeClaim': ?pulumi.Input.mapOptionalInputValue<PersistentVolumeClaimVolumeSource, Map<String, dynamic>>(persistentVolumeClaim, (value) => value.toMap()),
      'photonPersistentDisk': ?pulumi.Input.mapOptionalInputValue<PhotonPersistentDiskVolumeSource, Map<String, dynamic>>(photonPersistentDisk, (value) => value.toMap()),
      'portworxVolume': ?pulumi.Input.mapOptionalInputValue<PortworxVolumeSource, Map<String, dynamic>>(portworxVolume, (value) => value.toMap()),
      'projected': ?pulumi.Input.mapOptionalInputValue<ProjectedVolumeSource, Map<String, dynamic>>(projected, (value) => value.toMap()),
      'quobyte': ?pulumi.Input.mapOptionalInputValue<QuobyteVolumeSource, Map<String, dynamic>>(quobyte, (value) => value.toMap()),
      'rbd': ?pulumi.Input.mapOptionalInputValue<RBDVolumeSource, Map<String, dynamic>>(rbd, (value) => value.toMap()),
      'scaleIO': ?pulumi.Input.mapOptionalInputValue<ScaleIOVolumeSource, Map<String, dynamic>>(scaleIO, (value) => value.toMap()),
      'secret': ?pulumi.Input.mapOptionalInputValue<SecretVolumeSource, Map<String, dynamic>>(secret, (value) => value.toMap()),
      'storageos': ?pulumi.Input.mapOptionalInputValue<StorageOSVolumeSource, Map<String, dynamic>>(storageos, (value) => value.toMap()),
      'vsphereVolume': ?pulumi.Input.mapOptionalInputValue<VsphereVirtualDiskVolumeSource, Map<String, dynamic>>(vsphereVolume, (value) => value.toMap()),
    };
  }

  factory Volume.fromMap(Map<String, dynamic> map) {
    return Volume(
      awsElasticBlockStore: map['awsElasticBlockStore'] == null ? null : (AWSElasticBlockStoreVolumeSource.fromMap((map['awsElasticBlockStore'] as Map).cast<String, dynamic>())).input(),
      azureDisk: map['azureDisk'] == null ? null : (AzureDiskVolumeSource.fromMap((map['azureDisk'] as Map).cast<String, dynamic>())).input(),
      azureFile: map['azureFile'] == null ? null : (AzureFileVolumeSource.fromMap((map['azureFile'] as Map).cast<String, dynamic>())).input(),
      cephfs: map['cephfs'] == null ? null : (CephFSVolumeSource.fromMap((map['cephfs'] as Map).cast<String, dynamic>())).input(),
      cinder: map['cinder'] == null ? null : (CinderVolumeSource.fromMap((map['cinder'] as Map).cast<String, dynamic>())).input(),
      configMap: map['configMap'] == null ? null : (ConfigMapVolumeSource.fromMap((map['configMap'] as Map).cast<String, dynamic>())).input(),
      csi: map['csi'] == null ? null : (CSIVolumeSource.fromMap((map['csi'] as Map).cast<String, dynamic>())).input(),
      downwardAPI: map['downwardAPI'] == null ? null : (DownwardAPIVolumeSource.fromMap((map['downwardAPI'] as Map).cast<String, dynamic>())).input(),
      emptyDir: map['emptyDir'] == null ? null : (EmptyDirVolumeSource.fromMap((map['emptyDir'] as Map).cast<String, dynamic>())).input(),
      ephemeral: map['ephemeral'] == null ? null : (EphemeralVolumeSource.fromMap((map['ephemeral'] as Map).cast<String, dynamic>())).input(),
      fc: map['fc'] == null ? null : (FCVolumeSource.fromMap((map['fc'] as Map).cast<String, dynamic>())).input(),
      flexVolume: map['flexVolume'] == null ? null : (FlexVolumeSource.fromMap((map['flexVolume'] as Map).cast<String, dynamic>())).input(),
      flocker: map['flocker'] == null ? null : (FlockerVolumeSource.fromMap((map['flocker'] as Map).cast<String, dynamic>())).input(),
      gcePersistentDisk: map['gcePersistentDisk'] == null ? null : (GCEPersistentDiskVolumeSource.fromMap((map['gcePersistentDisk'] as Map).cast<String, dynamic>())).input(),
      gitRepo: map['gitRepo'] == null ? null : (GitRepoVolumeSource.fromMap((map['gitRepo'] as Map).cast<String, dynamic>())).input(),
      glusterfs: map['glusterfs'] == null ? null : (GlusterfsVolumeSource.fromMap((map['glusterfs'] as Map).cast<String, dynamic>())).input(),
      hostPath: map['hostPath'] == null ? null : (HostPathVolumeSource.fromMap((map['hostPath'] as Map).cast<String, dynamic>())).input(),
      image: map['image'] == null ? null : (ImageVolumeSource.fromMap((map['image'] as Map).cast<String, dynamic>())).input(),
      iscsi: map['iscsi'] == null ? null : (ISCSIVolumeSource.fromMap((map['iscsi'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      nfs: map['nfs'] == null ? null : (NFSVolumeSource.fromMap((map['nfs'] as Map).cast<String, dynamic>())).input(),
      persistentVolumeClaim: map['persistentVolumeClaim'] == null ? null : (PersistentVolumeClaimVolumeSource.fromMap((map['persistentVolumeClaim'] as Map).cast<String, dynamic>())).input(),
      photonPersistentDisk: map['photonPersistentDisk'] == null ? null : (PhotonPersistentDiskVolumeSource.fromMap((map['photonPersistentDisk'] as Map).cast<String, dynamic>())).input(),
      portworxVolume: map['portworxVolume'] == null ? null : (PortworxVolumeSource.fromMap((map['portworxVolume'] as Map).cast<String, dynamic>())).input(),
      projected: map['projected'] == null ? null : (ProjectedVolumeSource.fromMap((map['projected'] as Map).cast<String, dynamic>())).input(),
      quobyte: map['quobyte'] == null ? null : (QuobyteVolumeSource.fromMap((map['quobyte'] as Map).cast<String, dynamic>())).input(),
      rbd: map['rbd'] == null ? null : (RBDVolumeSource.fromMap((map['rbd'] as Map).cast<String, dynamic>())).input(),
      scaleIO: map['scaleIO'] == null ? null : (ScaleIOVolumeSource.fromMap((map['scaleIO'] as Map).cast<String, dynamic>())).input(),
      secret: map['secret'] == null ? null : (SecretVolumeSource.fromMap((map['secret'] as Map).cast<String, dynamic>())).input(),
      storageos: map['storageos'] == null ? null : (StorageOSVolumeSource.fromMap((map['storageos'] as Map).cast<String, dynamic>())).input(),
      vsphereVolume: map['vsphereVolume'] == null ? null : (VsphereVirtualDiskVolumeSource.fromMap((map['vsphereVolume'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

