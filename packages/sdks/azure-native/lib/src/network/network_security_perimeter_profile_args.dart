// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_network_security_perimeter_profile_args_doc}
/// The set of arguments for NetworkSecurityPerimeterProfile.
/// {@endtemplate}
/// {@macro pulumi_network_network_security_perimeter_profile_args_doc}
class NetworkSecurityPerimeterProfileArgs {
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the network security perimeter.
  final pulumi.Input<String> networkSecurityPerimeterName;
  /// The name of the NSP profile.
  final pulumi.Input<String>? profileName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkSecurityPerimeterProfileArgs].
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [networkSecurityPerimeterName] The name of the network security perimeter.
  /// [profileName] The name of the NSP profile.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] Resource tags.
  NetworkSecurityPerimeterProfileArgs({
    pulumi.Output<String>? id,
    pulumi.Output<String>? location,
    required pulumi.Output<String> networkSecurityPerimeterName,
    pulumi.Output<String>? profileName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      id = pulumi.Input.asOptionalInput<String>(id),
      location = pulumi.Input.asOptionalInput<String>(location),
      networkSecurityPerimeterName = pulumi.Input.asInput<String>(networkSecurityPerimeterName),
      profileName = pulumi.Input.asOptionalInput<String>(profileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'networkSecurityPerimeterName': networkSecurityPerimeterName,
      'profileName': ?profileName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory NetworkSecurityPerimeterProfileArgs.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityPerimeterProfileArgs(
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      networkSecurityPerimeterName: pulumi.Output.create<String>(map['networkSecurityPerimeterName'] as String),
      profileName: map['profileName'] == null ? null : pulumi.Output.create<String>(map['profileName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

