// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_floating_ip_get_floating_ip_args_doc}
/// Arguments for getFloatingIp.
/// {@endtemplate}
/// {@macro pulumi_index_get_floating_ip_get_floating_ip_args_doc}
class GetFloatingIpArgs {
  /// ID of the Floating IP.
  final pulumi.Input<int>? id;
  /// IP address of the Floating IP.
  final pulumi.Input<String>? ipAddress;
  /// Name of the Floating IP.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? selector;
  /// [Label selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  final pulumi.Input<String>? withSelector;

  /// Creates a new [GetFloatingIpArgs].
  /// [id] ID of the Floating IP.
  /// [ipAddress] IP address of the Floating IP.
  /// [name] Name of the Floating IP.
  /// [selector] Optional.
  /// [withSelector] [Label selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  GetFloatingIpArgs({
    this.id,
    this.ipAddress,
    this.name,
    this.selector,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'ipAddress': ?ipAddress,
      'name': ?name,
      'selector': ?selector,
      'withSelector': ?withSelector,
    };
  }

  factory GetFloatingIpArgs.fromMap(Map<String, dynamic> map) {
    return GetFloatingIpArgs(
      id: map['id'] == null ? null : (map['id']! as int).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      selector: map['selector'] == null ? null : (map['selector']! as String).input(),
      withSelector: map['withSelector'] == null ? null : (map['withSelector']! as String).input(),
    );
  }
}

