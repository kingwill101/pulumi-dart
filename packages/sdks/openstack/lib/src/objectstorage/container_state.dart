// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_versioning_legacy.dart';

/// Input properties used for looking up and filtering Container resources.
class ContainerState {
  /// Sets an access control list (ACL) that grants
  /// read access. This header can contain a comma-delimited list of users that can
  /// read the container (allows the GET method for all objects in the container).
  /// Changing this updates the access control list read access.
  final pulumi.Input<String>? containerRead;
  /// The secret key for container
  /// synchronization. Changing this updates container synchronization.
  final pulumi.Input<String>? containerSyncKey;
  /// The destination for container
  /// synchronization. Changing this updates container synchronization.
  final pulumi.Input<String>? containerSyncTo;
  /// Sets an ACL that grants write access. Changing
  /// this updates the access control list write access.
  final pulumi.Input<String>? containerWrite;
  /// The MIME type for the container. Changing this
  /// updates the MIME type.
  final pulumi.Input<String>? contentType;
  /// A boolean that indicates all
  /// objects should be deleted from the container so that the container can be
  /// destroyed without error. These objects are not recoverable.
  final pulumi.Input<bool>? forceDestroy;
  /// Custom key/value pairs to associate with the
  /// container. Changing this updates the existing container metadata.
  final pulumi.Input<Map<String, String>>? metadata;
  /// A unique name for the container. Changing this creates a
  /// new container.
  final pulumi.Input<String>? name;
  /// The region in which to create the container. If
  /// omitted, the `region` argument of the provider is used. Changing this creates
  /// a new container.
  final pulumi.Input<String>? region;
  /// The storage class to be used for the container.
  /// Changing this creates a new container. This option is only available in Ceph
  /// RGW Swift API implementation.
  final pulumi.Input<String>? storageClass;
  /// The storage policy to be used for the
  /// container. Changing this creates a new container.
  final pulumi.Input<String>? storagePolicy;
  /// A boolean that can enable or disable object
  /// versioning. The default value is `false`. To use this feature, your Swift
  /// version must be 2.24 or higher (as described in the [OpenStack Swift Ussuri
  /// release
  /// notes](https://docs.openstack.org/releasenotes/swift/ussuri.html#relnotes-2-24-0-stable-ussuri)),
  /// and a cloud administrator must have set the `allow_object_versioning = true`
  /// configuration option in Swift. If you cannot set this versioning type, you
  /// may want to consider using `versioning_legacy` instead.
  final pulumi.Input<bool>? versioning;
  /// Enable legacy object versioning. The
  /// structure is described below.
  final pulumi.Input<ContainerVersioningLegacy>? versioningLegacy;

  /// Creates a new [ContainerState].
  /// [containerRead] Sets an access control list (ACL) that grants
  /// [containerSyncKey] The secret key for container
  /// [containerSyncTo] The destination for container
  /// [containerWrite] Sets an ACL that grants write access. Changing
  /// [contentType] The MIME type for the container. Changing this
  /// [forceDestroy] A boolean that indicates all
  /// [metadata] Custom key/value pairs to associate with the
  /// [name] A unique name for the container. Changing this creates a
  /// [region] The region in which to create the container. If
  /// [storageClass] The storage class to be used for the container.
  /// [storagePolicy] The storage policy to be used for the
  /// [versioning] A boolean that can enable or disable object
  /// [versioningLegacy] Enable legacy object versioning. The
  ContainerState({
    this.containerRead,
    this.containerSyncKey,
    this.containerSyncTo,
    this.containerWrite,
    this.contentType,
    this.forceDestroy,
    this.metadata,
    this.name,
    this.region,
    this.storageClass,
    this.storagePolicy,
    this.versioning,
    this.versioningLegacy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerRead': ?containerRead,
      'containerSyncKey': ?containerSyncKey,
      'containerSyncTo': ?containerSyncTo,
      'containerWrite': ?containerWrite,
      'contentType': ?contentType,
      'forceDestroy': ?forceDestroy,
      'metadata': ?metadata,
      'name': ?name,
      'region': ?region,
      'storageClass': ?storageClass,
      'storagePolicy': ?storagePolicy,
      'versioning': ?versioning,
      'versioningLegacy': ?pulumi.Input.mapOptionalInputValue<ContainerVersioningLegacy, Map<String, dynamic>>(versioningLegacy, (value) => value.toMap()),
    };
  }

  factory ContainerState.fromMap(Map<String, dynamic> map) {
    return ContainerState(
      containerRead: map['containerRead'] == null ? null : (map['containerRead']! as String).input(),
      containerSyncKey: map['containerSyncKey'] == null ? null : (map['containerSyncKey']! as String).input(),
      containerSyncTo: map['containerSyncTo'] == null ? null : (map['containerSyncTo']! as String).input(),
      containerWrite: map['containerWrite'] == null ? null : (map['containerWrite']! as String).input(),
      contentType: map['contentType'] == null ? null : (map['contentType']! as String).input(),
      forceDestroy: map['forceDestroy'] == null ? null : (map['forceDestroy']! as bool).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata']! as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      storageClass: map['storageClass'] == null ? null : (map['storageClass']! as String).input(),
      storagePolicy: map['storagePolicy'] == null ? null : (map['storagePolicy']! as String).input(),
      versioning: map['versioning'] == null ? null : (map['versioning']! as bool).input(),
      versioningLegacy: map['versioningLegacy'] == null ? null : (ContainerVersioningLegacy.fromMap((map['versioningLegacy']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

