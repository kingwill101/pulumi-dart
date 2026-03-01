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
    pulumi.Output<int>? id,
    pulumi.Output<String>? ipRange,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<bool>? mostRecent,
    pulumi.Output<String>? name,
    pulumi.Output<String>? withSelector,
  }) :
      id = pulumi.Input.asOptionalInput<int>(id),
      ipRange = pulumi.Input.asOptionalInput<String>(ipRange),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      mostRecent = pulumi.Input.asOptionalInput<bool>(mostRecent),
      name = pulumi.Input.asOptionalInput<String>(name),
      withSelector = pulumi.Input.asOptionalInput<String>(withSelector);

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
      id: map['id'] == null ? null : pulumi.Output.create<int>(map['id'] as int),
      ipRange: map['ipRange'] == null ? null : pulumi.Output.create<String>(map['ipRange'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      mostRecent: map['mostRecent'] == null ? null : pulumi.Output.create<bool>(map['mostRecent'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      withSelector: map['withSelector'] == null ? null : pulumi.Output.create<String>(map['withSelector'] as String),
    );
  }
}

