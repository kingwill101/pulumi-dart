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
    this.id,
    this.location,
    required this.networkSecurityPerimeterName,
    this.profileName,
    required this.resourceGroupName,
    this.tags,
  });

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
      id: map['id'] == null ? null : (map['id']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      networkSecurityPerimeterName: (map['networkSecurityPerimeterName'] as String).input(),
      profileName: map['profileName'] == null ? null : (map['profileName']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

