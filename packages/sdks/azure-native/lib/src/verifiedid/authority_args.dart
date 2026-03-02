// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_verifiedid_authority_args_doc}
/// The set of arguments for Authority.
/// {@endtemplate}
/// {@macro pulumi_verifiedid_authority_args_doc}
class AuthorityArgs {
  /// The ID of the authority
  final pulumi.Input<String>? authorityName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AuthorityArgs].
  /// [authorityName] The ID of the authority
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  AuthorityArgs({
    this.authorityName,
    this.location,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorityName': ?authorityName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory AuthorityArgs.fromMap(Map<String, dynamic> map) {
    return AuthorityArgs(
      authorityName: map['authorityName'] == null ? null : (map['authorityName']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

