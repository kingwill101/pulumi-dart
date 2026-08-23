// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nfs_access_point_access_policy.dart';

/// Input properties used for looking up and filtering NfsAccessPoint resources.
class NfsAccessPointState {
  /// Access policy configuration for the access point. See Access Policy below.
  final pulumi.Input<NfsAccessPointAccessPolicy>? accessPolicy;
  /// The date and time when the access point was created.
  final pulumi.Input<String>? createdAt;
  /// Whether this is the default access point for the share.
  final pulumi.Input<bool>? isDefault;
  /// A name for the NFS access point.
  final pulumi.Input<String>? name;
  /// The export path for the access point.
  final pulumi.Input<String>? path;
  /// The ID of the NFS share.
  final pulumi.Input<String>? shareId;
  /// The status of the access point.
  final pulumi.Input<String>? status;
  /// The date and time when the access point was last updated.
  final pulumi.Input<String>? updatedAt;
  /// The ID of the VPC that can access this access point. The VPC must be attached to the NFS share.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [NfsAccessPointState].
  /// [accessPolicy] Access policy configuration for the access point. See Access Policy below.
  /// [createdAt] The date and time when the access point was created.
  /// [isDefault] Whether this is the default access point for the share.
  /// [name] A name for the NFS access point.
  /// [path] The export path for the access point.
  /// [shareId] The ID of the NFS share.
  /// [status] The status of the access point.
  /// [updatedAt] The date and time when the access point was last updated.
  /// [vpcId] The ID of the VPC that can access this access point. The VPC must be attached to the NFS share.
  const NfsAccessPointState({
    this.accessPolicy,
    this.createdAt,
    this.isDefault,
    this.name,
    this.path,
    this.shareId,
    this.status,
    this.updatedAt,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicy': ?pulumi.Input.mapOptionalInputValue<NfsAccessPointAccessPolicy, Map<String, dynamic>>(accessPolicy, (value) => value.toMap()),
      'createdAt': ?createdAt,
      'isDefault': ?isDefault,
      'name': ?name,
      'path': ?path,
      'shareId': ?shareId,
      'status': ?status,
      'updatedAt': ?updatedAt,
      'vpcId': ?vpcId,
    };
  }

  factory NfsAccessPointState.fromMap(Map<String, dynamic> map) {
    return NfsAccessPointState(
      accessPolicy: (() { final guardedValue = map['accessPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NfsAccessPointAccessPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isDefault: (() { final guardedValue = map['isDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shareId: (() { final guardedValue = map['shareId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
