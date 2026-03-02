// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_domainservices_replica_set_replica_set_args_doc}
/// The set of arguments for ReplicaSet.
/// {@endtemplate}
/// {@macro pulumi_domainservices_replica_set_replica_set_args_doc}
class ReplicaSetArgs {
  /// The ID of the Domain Service for which to create this Replica Set. Changing this forces a new resource to be created.
  final pulumi.Input<String> domainServiceId;
  /// The Azure location where this Replica Set should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The ID of the subnet in which to place this Replica Set. Changing this forces a new resource to be created.
  final pulumi.Input<String> subnetId;

  /// Creates a new [ReplicaSetArgs].
  /// [domainServiceId] The ID of the Domain Service for which to create this Replica Set. Changing this forces a new resource to be created.
  /// [location] The Azure location where this Replica Set should exist. Changing this forces a new resource to be created.
  /// [subnetId] The ID of the subnet in which to place this Replica Set. Changing this forces a new resource to be created.
  ReplicaSetArgs({
    required this.domainServiceId,
    this.location,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainServiceId': domainServiceId,
      'location': ?location,
      'subnetId': subnetId,
    };
  }

  factory ReplicaSetArgs.fromMap(Map<String, dynamic> map) {
    return ReplicaSetArgs(
      domainServiceId: (map['domainServiceId'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      subnetId: (map['subnetId'] as String).input(),
    );
  }
}

