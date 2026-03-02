// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_certificateauthority_get_authority_get_authority_args_doc}
/// Arguments for getAuthority.
/// {@endtemplate}
/// {@macro pulumi_certificateauthority_get_authority_get_authority_args_doc}
class GetAuthorityArgs {
  /// ID of the certificate authority.
  ///
  /// - - -
  final pulumi.Input<String>? certificateAuthorityId;
  /// The location the certificate authority exists in.
  final pulumi.Input<String>? location;
  /// The name of the pool the certificate authority belongs to.
  final pulumi.Input<String>? pool;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetAuthorityArgs].
  /// [certificateAuthorityId] ID of the certificate authority.
  /// [location] The location the certificate authority exists in.
  /// [pool] The name of the pool the certificate authority belongs to.
  /// [project] The ID of the project in which the resource belongs. If it
  GetAuthorityArgs({
    this.certificateAuthorityId,
    this.location,
    this.pool,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityId': ?certificateAuthorityId,
      'location': ?location,
      'pool': ?pool,
      'project': ?project,
    };
  }

  factory GetAuthorityArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthorityArgs(
      certificateAuthorityId: map['certificateAuthorityId'] == null ? null : (map['certificateAuthorityId']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      pool: map['pool'] == null ? null : (map['pool']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

