// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a CIDR range which can be used to assign addresses.
class PublicAdvertisedPrefixPublicDelegatedPrefixResponseComputeV1 {
  /// The IP address range of the public delegated prefix
  final pulumi.Input<String> ipRange;
  /// The name of the public delegated prefix
  final pulumi.Input<String> name;
  /// The project number of the public delegated prefix
  final pulumi.Input<String> project;
  /// The region of the public delegated prefix if it is regional. If absent, the prefix is global.
  final pulumi.Input<String> region;
  /// The status of the public delegated prefix. Possible values are: INITIALIZING: The public delegated prefix is being initialized and addresses cannot be created yet. ANNOUNCED: The public delegated prefix is active.
  final pulumi.Input<String> status;

  /// Creates a new [PublicAdvertisedPrefixPublicDelegatedPrefixResponseComputeV1].
  /// [ipRange] The IP address range of the public delegated prefix
  /// [name] The name of the public delegated prefix
  /// [project] The project number of the public delegated prefix
  /// [region] The region of the public delegated prefix if it is regional. If absent, the prefix is global.
  /// [status] The status of the public delegated prefix. Possible values are: INITIALIZING: The public delegated prefix is being initialized and addresses cannot be created yet. ANNOUNCED: The public delegated prefix is active.
  const PublicAdvertisedPrefixPublicDelegatedPrefixResponseComputeV1({
    required this.ipRange,
    required this.name,
    required this.project,
    required this.region,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipRange': ipRange,
      'name': name,
      'project': project,
      'region': region,
      'status': status,
    };
  }

  factory PublicAdvertisedPrefixPublicDelegatedPrefixResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return PublicAdvertisedPrefixPublicDelegatedPrefixResponseComputeV1(
      ipRange: pulumi.Input.fromValue(map['ipRange'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
