// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network spec.
class GoogleCloudAiplatformV1beta1NetworkSpec {
  /// Whether to enable public internet access. Default false.
  final pulumi.Input<bool>? enableInternetAccess;
  /// The full name of the Google Compute Engine [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks)
  final pulumi.Input<String>? network;
  /// The name of the subnet that this instance is in. Format: `projects/{project_id_or_number}/regions/{region}/subnetworks/{subnetwork_id}`
  final pulumi.Input<String>? subnetwork;

  /// Creates a new [GoogleCloudAiplatformV1beta1NetworkSpec].
  /// [enableInternetAccess] Whether to enable public internet access. Default false.
  /// [network] The full name of the Google Compute Engine [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks)
  /// [subnetwork] The name of the subnet that this instance is in. Format: `projects/{project_id_or_number}/regions/{region}/subnetworks/{subnetwork_id}`
  GoogleCloudAiplatformV1beta1NetworkSpec({
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

  factory GoogleCloudAiplatformV1beta1NetworkSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1NetworkSpec(
      enableInternetAccess: map['enableInternetAccess'] == null ? null : (map['enableInternetAccess']! as bool).input(),
      network: map['network'] == null ? null : (map['network']! as String).input(),
      subnetwork: map['subnetwork'] == null ? null : (map['subnetwork']! as String).input(),
    );
  }
}

