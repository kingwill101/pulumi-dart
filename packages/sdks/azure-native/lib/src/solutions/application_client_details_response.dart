// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The application client details to track the entity creating/updating the managed app resource.
class ApplicationClientDetailsResponse {
  /// The client application Id.
  final pulumi.Input<String>? applicationId;
  /// The client Oid.
  final pulumi.Input<String>? oid;
  /// The client Puid
  final pulumi.Input<String>? puid;

  /// Creates a new [ApplicationClientDetailsResponse].
  /// [applicationId] The client application Id.
  /// [oid] The client Oid.
  /// [puid] The client Puid
  ApplicationClientDetailsResponse({
    this.applicationId,
    this.oid,
    this.puid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'oid': ?oid,
      'puid': ?puid,
    };
  }

  factory ApplicationClientDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationClientDetailsResponse(
      applicationId: map['applicationId'] == null ? null : (map['applicationId'] as String).input(),
      oid: map['oid'] == null ? null : (map['oid'] as String).input(),
      puid: map['puid'] == null ? null : (map['puid'] as String).input(),
    );
  }
}

