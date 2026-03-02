// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MulticastDomainConnectionConfig {
  /// The VPC connection type.
  /// Possible values:
  /// NCC
  /// SAME_VPC
  final pulumi.Input<String> connectionType;
  /// The resource name of the
  /// [NCC](https://cloud.google.com/network-connectivity-center) hub.
  /// Use the following format:
  /// `projects/{project}/locations/global/hubs/{hub}`.
  final pulumi.Input<String>? nccHub;

  /// Creates a new [MulticastDomainConnectionConfig].
  /// [connectionType] The VPC connection type.
  /// [nccHub] The resource name of the
  MulticastDomainConnectionConfig({
    required this.connectionType,
    this.nccHub,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionType': connectionType,
      'nccHub': ?nccHub,
    };
  }

  factory MulticastDomainConnectionConfig.fromMap(Map<String, dynamic> map) {
    return MulticastDomainConnectionConfig(
      connectionType: (map['connectionType'] as String).input(),
      nccHub: map['nccHub'] == null ? null : (map['nccHub'] as String).input(),
    );
  }
}

