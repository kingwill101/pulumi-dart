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
    pulumi.Output<String>? host,
    pulumi.Output<String>? mountPath,
    pulumi.Output<String>? name,
    pulumi.Output<String>? performanceTier,
    pulumi.Output<String>? region,
    pulumi.Output<int>? size,
    pulumi.Output<String>? status,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<String>? vpcId,
    pulumi.Output<List<String>>? vpcIds,
  }) :
      host = pulumi.Input.asOptionalInput<String>(host),
      mountPath = pulumi.Input.asOptionalInput<String>(mountPath),
      name = pulumi.Input.asOptionalInput<String>(name),
      performanceTier = pulumi.Input.asOptionalInput<String>(performanceTier),
      region = pulumi.Input.asOptionalInput<String>(region),
      size = pulumi.Input.asOptionalInput<int>(size),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vpcIds = pulumi.Input.asOptionalInput<List<String>>(vpcIds);

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
      host: map['host'] == null ? null : pulumi.Output.create<String>(map['host'] as String),
      mountPath: map['mountPath'] == null ? null : pulumi.Output.create<String>(map['mountPath'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      performanceTier: map['performanceTier'] == null ? null : pulumi.Output.create<String>(map['performanceTier'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      size: map['size'] == null ? null : pulumi.Output.create<int>(map['size'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vpcIds: map['vpcIds'] == null ? null : pulumi.Output.create<List<String>>((map['vpcIds'] as List).cast<String>()),
    );
  }
}

