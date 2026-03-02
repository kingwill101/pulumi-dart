// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NotebookExecutionCustomEnvironmentSpecNetworkSpec {
  /// Enable public internet access for the runtime.
  final pulumi.Input<bool>? enableInternetAccess;
  /// The name of the VPC that this runtime is in.
  final pulumi.Input<String>? network;
  /// The name of the subnetwork that this runtime is in.
  final pulumi.Input<String>? subnetwork;

  /// Creates a new [NotebookExecutionCustomEnvironmentSpecNetworkSpec].
  /// [enableInternetAccess] Enable public internet access for the runtime.
  /// [network] The name of the VPC that this runtime is in.
  /// [subnetwork] The name of the subnetwork that this runtime is in.
  NotebookExecutionCustomEnvironmentSpecNetworkSpec({
    this.enableInternetAccess,
    this.network,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableInternetAccess': ?enableInternetAccess,
      'network': ?network,
      'subnetwork': ?subnetwork,
    };
  }

  factory NotebookExecutionCustomEnvironmentSpecNetworkSpec.fromMap(Map<String, dynamic> map) {
    return NotebookExecutionCustomEnvironmentSpecNetworkSpec(
      enableInternetAccess: map['enableInternetAccess'] == null ? null : (map['enableInternetAccess']! as bool).input(),
      network: map['network'] == null ? null : (map['network']! as String).input(),
      subnetwork: map['subnetwork'] == null ? null : (map['subnetwork']! as String).input(),
    );
  }
}

