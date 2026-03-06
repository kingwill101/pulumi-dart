// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_network_get_network_args_doc}
/// Arguments for getNetwork.
/// {@endtemplate}
/// {@macro pulumi_index_get_network_get_network_args_doc}
class GetNetworkArgs {
  /// ID of the Network.
  final pulumi.Input<int>? id;
  /// IPv4 prefix of the Network.
  final pulumi.Input<String>? ipRange;
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<bool>? mostRecent;
  /// Name of the Network.
  final pulumi.Input<String>? name;
  /// Label Selector. For more information about possible values, visit the [Hetzner Cloud Documentation](https://docs.hetzner.cloud/reference/cloud#label-selector).
  final pulumi.Input<String>? withSelector;

  /// Creates a new [GetNetworkArgs].
  /// [id] ID of the Network.
  /// [ipRange] IPv4 prefix of the Network.
  /// [labels] Optional.
  /// [mostRecent] Optional.
  /// [name] Name of the Network.
  /// [withSelector] Label Selector. For more information about possible values, visit the [Hetzner Cloud Documentation](https://docs.hetzner.cloud/reference/cloud#label-selector).
  const GetNetworkArgs({
    this.id,
    this.ipRange,
    this.labels,
    this.mostRecent,
    this.name,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'ipRange': ?ipRange,
      'labels': ?labels,
      'mostRecent': ?mostRecent,
      'name': ?name,
      'withSelector': ?withSelector,
    };
  }

  factory GetNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkArgs(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ipRange: (() { final guardedValue = map['ipRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

