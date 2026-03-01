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
    pulumi.Output<String>? applicationId,
    pulumi.Output<String>? certificate,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? tenantId,
    pulumi.Output<String>? uid,
  }) :
      applicationId = pulumi.Input.asOptionalInput<String>(applicationId),
      certificate = pulumi.Input.asOptionalInput<String>(certificate),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId),
      uid = pulumi.Input.asOptionalInput<String>(uid);

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
      applicationId: map['applicationId'] == null ? null : pulumi.Output.create<String>(map['applicationId'] as String),
      certificate: map['certificate'] == null ? null : pulumi.Output.create<String>(map['certificate'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
    );
  }
}

