// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_network_security_perimeter_args_doc}
/// The set of arguments for NetworkSecurityPerimeter.
/// {@endtemplate}
/// {@macro pulumi_network_network_security_perimeter_args_doc}
class NetworkSecurityPerimeterArgs {
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the network security perimeter.
  final pulumi.Input<String>? networkSecurityPerimeterName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkSecurityPerimeterArgs].
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [networkSecurityPerimeterName] The name of the network security perimeter.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] Resource tags.
  NetworkSecurityPerimeterArgs({
    this.id,
    this.location,
    this.networkSecurityPerimeterName,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'networkSecurityPerimeterName': ?networkSecurityPerimeterName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory NetworkSecurityPerimeterArgs.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityPerimeterArgs(
      id: map['id'] == null ? null : (map['id']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      networkSecurityPerimeterName: map['networkSecurityPerimeterName'] == null ? null : (map['networkSecurityPerimeterName']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

