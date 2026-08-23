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
  const NfsShareArgs({
    this.allowedClients,
    this.labels,
    this.location,
    this.name,
    this.pod,
    this.project,
    this.requestedSizeGib,
    this.storageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedClients': ?pulumi.Input.mapOptionalInputValue<List<AllowedClient>, List<Map<String, dynamic>>>(allowedClients, (value) => pulumi.Input.encodeList<AllowedClient, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'pod': ?pod,
      'project': ?project,
      'requestedSizeGib': ?requestedSizeGib,
      'storageType': ?pulumi.Input.mapOptionalInputValue<NfsShareStorageType, String>(storageType, (value) => value.wireValue),
    };
  }

  factory NfsShareArgs.fromMap(Map<String, dynamic> map) {
    return NfsShareArgs(
      allowedClients: (() { final guardedValue = map['allowedClients']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AllowedClient>(guardedValue, (value) => AllowedClient.fromMap((value as Map).cast<String, dynamic>()))); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pod: (() { final guardedValue = map['pod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestedSizeGib: (() { final guardedValue = map['requestedSizeGib']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NfsShareStorageType.fromValue(guardedValue as String)); })(),
    );
  }
}
