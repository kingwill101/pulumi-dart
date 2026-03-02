// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AzureClient resources.
class AzureClientState {
  /// The Azure Active Directory Application ID.
  final pulumi.Input<String>? applicationId;
  /// Output only. The PEM encoded x509 certificate.
  final pulumi.Input<String>? certificate;
  /// Output only. The time at which this resource was created.
  final pulumi.Input<String>? createTime;
  /// The location for the resource
  final pulumi.Input<String>? location;
  /// The name of this resource.
  final pulumi.Input<String>? name;
  /// The project for the resource
  final pulumi.Input<String>? project;
  /// The Azure Active Directory Tenant ID.
  ///
  ///
  ///
  /// - - -
  final pulumi.Input<String>? tenantId;
  /// Output only. A globally unique identifier for the client.
  final pulumi.Input<String>? uid;

  /// Creates a new [AzureClientState].
  /// [applicationId] The Azure Active Directory Application ID.
  /// [certificate] Output only. The PEM encoded x509 certificate.
  /// [createTime] Output only. The time at which this resource was created.
  /// [location] The location for the resource
  /// [name] The name of this resource.
  /// [project] The project for the resource
  /// [tenantId] The Azure Active Directory Tenant ID.
  /// [uid] Output only. A globally unique identifier for the client.
  AzureClientState({
    this.applicationId,
    this.certificate,
    this.createTime,
    this.location,
    this.name,
    this.project,
    this.tenantId,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'certificate': ?certificate,
      'createTime': ?createTime,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'tenantId': ?tenantId,
      'uid': ?uid,
    };
  }

  factory AzureClientState.fromMap(Map<String, dynamic> map) {
    return AzureClientState(
      applicationId: map['applicationId'] == null ? null : (map['applicationId'] as String).input(),
      certificate: map['certificate'] == null ? null : (map['certificate'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
      uid: map['uid'] == null ? null : (map['uid'] as String).input(),
    );
  }
}

