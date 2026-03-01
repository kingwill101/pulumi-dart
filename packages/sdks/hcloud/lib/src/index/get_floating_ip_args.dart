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
    pulumi.Output<int>? id,
    pulumi.Output<String>? ipAddress,
    pulumi.Output<String>? name,
    pulumi.Output<String>? selector,
    pulumi.Output<String>? withSelector,
  }) :
      id = pulumi.Input.asOptionalInput<int>(id),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      name = pulumi.Input.asOptionalInput<String>(name),
      selector = pulumi.Input.asOptionalInput<String>(selector),
      withSelector = pulumi.Input.asOptionalInput<String>(withSelector);

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
      id: map['id'] == null ? null : pulumi.Output.create<int>(map['id'] as int),
      ipAddress: map['ipAddress'] == null ? null : pulumi.Output.create<String>(map['ipAddress'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      selector: map['selector'] == null ? null : pulumi.Output.create<String>(map['selector'] as String),
      withSelector: map['withSelector'] == null ? null : pulumi.Output.create<String>(map['withSelector'] as String),
    );
  }
}

