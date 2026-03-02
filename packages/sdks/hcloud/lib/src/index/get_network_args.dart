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
  GetNetworkArgs({
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
      id: map['id'] == null ? null : (map['id']! as int).input(),
      ipRange: map['ipRange'] == null ? null : (map['ipRange']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      mostRecent: map['mostRecent'] == null ? null : (map['mostRecent']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      withSelector: map['withSelector'] == null ? null : (map['withSelector']! as String).input(),
    );
  }
}

