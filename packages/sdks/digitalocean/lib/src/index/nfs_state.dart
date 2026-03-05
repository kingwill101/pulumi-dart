// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Nfs resources.
class NfsState {
  /// The host IP of the NFS server accessible from the associated VPC.
  final pulumi.Input<String>? host;
  /// The mount path for accessing the NFS share.
  final pulumi.Input<String>? mountPath;
  /// A name for the NFS share. Must be lowercase and composed only of numbers, letters, and "-", up to a limit of 64 characters. The name must begin with a letter.
  final pulumi.Input<String>? name;
  /// The performance tier for the NFS share. Can be `standard` or `high`. Defaults to `standard`. Changing this will cause the performance tier to be switched.
  final pulumi.Input<String>? performanceTier;
  /// The region where the NFS share will be created.
  final pulumi.Input<String>? region;
  /// The size of the NFS share in GiB. Minimum size is 50 GiB.
  final pulumi.Input<int>? size;
  /// The current status of the NFS share.
  final pulumi.Input<String>? status;
  final pulumi.Input<List<String>>? tags;
  /// The ID of the VPC where the NFS share will be created.
  final pulumi.Input<String>? vpcId;
  final pulumi.Input<List<String>>? vpcIds;

  /// Creates a new [NfsState].
  /// [host] The host IP of the NFS server accessible from the associated VPC.
  /// [mountPath] The mount path for accessing the NFS share.
  /// [name] A name for the NFS share. Must be lowercase and composed only of numbers, letters, and "-", up to a limit of 64 characters. The name must begin with a letter.
  /// [performanceTier] The performance tier for the NFS share. Can be `standard` or `high`. Defaults to `standard`. Changing this will cause the performance tier to be switched.
  /// [region] The region where the NFS share will be created.
  /// [size] The size of the NFS share in GiB. Minimum size is 50 GiB.
  /// [status] The current status of the NFS share.
  /// [tags] Optional.
  /// [vpcId] The ID of the VPC where the NFS share will be created.
  /// [vpcIds] Optional.
  NfsState({
    this.host,
    this.mountPath,
    this.name,
    this.performanceTier,
    this.region,
    this.size,
    this.status,
    this.tags,
    this.vpcId,
    this.vpcIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'mountPath': ?mountPath,
      'name': ?name,
      'performanceTier': ?performanceTier,
      'region': ?region,
      'size': ?size,
      'status': ?status,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'vpcIds': ?vpcIds,
    };
  }

  factory NfsState.fromMap(Map<String, dynamic> map) {
    return NfsState(
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mountPath: (() { final guardedValue = map['mountPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      performanceTier: (() { final guardedValue = map['performanceTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcIds: (() { final guardedValue = map['vpcIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

