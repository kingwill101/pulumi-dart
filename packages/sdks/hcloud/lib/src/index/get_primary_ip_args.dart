// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_primary_ip_get_primary_ip_args_doc}
/// Arguments for getPrimaryIp.
/// {@endtemplate}
/// {@macro pulumi_index_get_primary_ip_get_primary_ip_args_doc}
class GetPrimaryIpArgs {
  /// (int) ID of the assigned resource.
  final pulumi.Input<int>? assigneeId;
  /// ID of the Primary IP.
  final pulumi.Input<int>? id;
  /// IP address of the Primary IP.
  final pulumi.Input<String>? ipAddress;
  /// Name of the Primary IP.
  final pulumi.Input<String>? name;
  /// [Label selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  final pulumi.Input<String>? withSelector;

  /// Creates a new [GetPrimaryIpArgs].
  /// [assigneeId] (int) ID of the assigned resource.
  /// [id] ID of the Primary IP.
  /// [ipAddress] IP address of the Primary IP.
  /// [name] Name of the Primary IP.
  /// [withSelector] [Label selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  GetPrimaryIpArgs({
    this.assigneeId,
    this.id,
    this.ipAddress,
    this.name,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assigneeId': ?assigneeId,
      'id': ?id,
      'ipAddress': ?ipAddress,
      'name': ?name,
      'withSelector': ?withSelector,
    };
  }

  factory GetPrimaryIpArgs.fromMap(Map<String, dynamic> map) {
    return GetPrimaryIpArgs(
      assigneeId: (() { final guardedValue = map['assigneeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

