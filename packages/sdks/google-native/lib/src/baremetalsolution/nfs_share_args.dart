// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allowed_client.dart';
import 'nfs_share_storage_type.dart';

/// {@template pulumi_baremetalsolution_v2_nfs_share_args_doc}
/// The set of arguments for NfsShare.
/// {@endtemplate}
/// {@macro pulumi_baremetalsolution_v2_nfs_share_args_doc}
class NfsShareArgs {
  /// List of allowed access points.
  final pulumi.Input<List<AllowedClient>>? allowedClients;
  /// Labels as key value pairs.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Immutable. The name of the NFS share.
  final pulumi.Input<String>? name;
  /// Immutable. Pod name. Pod is an independent part of infrastructure. NFSShare can only be connected to the assets (networks, instances) allocated in the same pod.
  final pulumi.Input<String>? pod;
  final pulumi.Input<String>? project;
  /// The requested size, in GiB.
  final pulumi.Input<String>? requestedSizeGib;
  /// Immutable. The storage type of the underlying volume.
  final pulumi.Input<NfsShareStorageType>? storageType;

  /// Creates a new [NfsShareArgs].
  /// [allowedClients] List of allowed access points.
  /// [labels] Labels as key value pairs.
  /// [location] Optional.
  /// [name] Immutable. The name of the NFS share.
  /// [pod] Immutable. Pod name. Pod is an independent part of infrastructure. NFSShare can only be connected to the assets (networks, instances) allocated in the same pod.
  /// [project] Optional.
  /// [requestedSizeGib] The requested size, in GiB.
  /// [storageType] Immutable. The storage type of the underlying volume.
  NfsShareArgs({
    pulumi.Output<List<AllowedClient>>? allowedClients,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? pod,
    pulumi.Output<String>? project,
    pulumi.Output<String>? requestedSizeGib,
    pulumi.Output<NfsShareStorageType>? storageType,
  }) :
      allowedClients = pulumi.Input.asOptionalInput<List<AllowedClient>>(allowedClients),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      pod = pulumi.Input.asOptionalInput<String>(pod),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestedSizeGib = pulumi.Input.asOptionalInput<String>(requestedSizeGib),
      storageType = pulumi.Input.asOptionalInput<NfsShareStorageType>(storageType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedClients': ?pulumi.Input.mapOptionalInputValue<List<AllowedClient>, List<Map<String, dynamic>>>(allowedClients, (value) => pulumi.Input.encodeList<AllowedClient, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'pod': ?pod,
      'project': ?project,
      'requestedSizeGib': ?requestedSizeGib,
      'storageType': ?pulumi.Input.mapOptionalInputValue<NfsShareStorageType, String>(storageType, (value) => value.value),
    };
  }

  factory NfsShareArgs.fromMap(Map<String, dynamic> map) {
    return NfsShareArgs(
      allowedClients: map['allowedClients'] == null ? null : pulumi.Output.create<List<AllowedClient>>(pulumi.Input.decodeList<AllowedClient>(map['allowedClients'], (value) => AllowedClient.fromMap((value as Map).cast<String, dynamic>()))),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      pod: map['pod'] == null ? null : pulumi.Output.create<String>(map['pod'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      requestedSizeGib: map['requestedSizeGib'] == null ? null : pulumi.Output.create<String>(map['requestedSizeGib'] as String),
      storageType: map['storageType'] == null ? null : pulumi.Output.create<NfsShareStorageType>(NfsShareStorageType.fromValue(map['storageType'] as String)),
    );
  }
}

