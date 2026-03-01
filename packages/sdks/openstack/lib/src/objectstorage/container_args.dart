// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_versioning_legacy.dart';

/// {@template pulumi_objectstorage_container_container_args_doc}
/// The set of arguments for Container.
/// {@endtemplate}
/// {@macro pulumi_objectstorage_container_container_args_doc}
class ContainerArgs {
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

  /// Creates a new [ContainerArgs].
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
  ContainerArgs({
    pulumi.Output<String>? containerRead,
    pulumi.Output<String>? containerSyncKey,
    pulumi.Output<String>? containerSyncTo,
    pulumi.Output<String>? containerWrite,
    pulumi.Output<String>? contentType,
    pulumi.Output<bool>? forceDestroy,
    pulumi.Output<Map<String, String>>? metadata,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? storageClass,
    pulumi.Output<String>? storagePolicy,
    pulumi.Output<bool>? versioning,
    pulumi.Output<ContainerVersioningLegacy>? versioningLegacy,
  }) :
      containerRead = pulumi.Input.asOptionalInput<String>(containerRead),
      containerSyncKey = pulumi.Input.asOptionalInput<String>(containerSyncKey),
      containerSyncTo = pulumi.Input.asOptionalInput<String>(containerSyncTo),
      containerWrite = pulumi.Input.asOptionalInput<String>(containerWrite),
      contentType = pulumi.Input.asOptionalInput<String>(contentType),
      forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      storageClass = pulumi.Input.asOptionalInput<String>(storageClass),
      storagePolicy = pulumi.Input.asOptionalInput<String>(storagePolicy),
      versioning = pulumi.Input.asOptionalInput<bool>(versioning),
      versioningLegacy = pulumi.Input.asOptionalInput<ContainerVersioningLegacy>(versioningLegacy);

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

  factory ContainerArgs.fromMap(Map<String, dynamic> map) {
    return ContainerArgs(
      containerRead: map['containerRead'] == null ? null : pulumi.Output.create<String>(map['containerRead'] as String),
      containerSyncKey: map['containerSyncKey'] == null ? null : pulumi.Output.create<String>(map['containerSyncKey'] as String),
      containerSyncTo: map['containerSyncTo'] == null ? null : pulumi.Output.create<String>(map['containerSyncTo'] as String),
      containerWrite: map['containerWrite'] == null ? null : pulumi.Output.create<String>(map['containerWrite'] as String),
      contentType: map['contentType'] == null ? null : pulumi.Output.create<String>(map['contentType'] as String),
      forceDestroy: map['forceDestroy'] == null ? null : pulumi.Output.create<bool>(map['forceDestroy'] as bool),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metadata'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      storageClass: map['storageClass'] == null ? null : pulumi.Output.create<String>(map['storageClass'] as String),
      storagePolicy: map['storagePolicy'] == null ? null : pulumi.Output.create<String>(map['storagePolicy'] as String),
      versioning: map['versioning'] == null ? null : pulumi.Output.create<bool>(map['versioning'] as bool),
      versioningLegacy: map['versioningLegacy'] == null ? null : pulumi.Output.create<ContainerVersioningLegacy>(ContainerVersioningLegacy.fromMap((map['versioningLegacy'] as Map).cast<String, dynamic>())),
    );
  }
}

