// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AzureClient resources.
class AzureClientState {
  /// The Azure Active Directory Application ID.
  final pulumi.Input<String?>? applicationId;
  /// Output only. The PEM encoded x509 certificate.
  final pulumi.Input<String?>? certificate;
  /// Output only. The time at which this resource was created.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The location for the resource
  final pulumi.Input<String?>? location;
  /// The name of this resource.
  final pulumi.Input<String?>? name;
  /// The project for the resource
  final pulumi.Input<String?>? project;
  /// The Azure Active Directory Tenant ID.
  ///
  ///
  ///
  /// - - -
  final pulumi.Input<String?>? tenantId;
  /// Output only. A globally unique identifier for the client.
  final pulumi.Input<String?>? uid;

  /// Creates a new [AzureClientState].
  /// [applicationId] The Azure Active Directory Application ID.
  /// [certificate] Output only. The PEM encoded x509 certificate.
  /// [createTime] Output only. The time at which this resource was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [location] The location for the resource
  /// [name] The name of this resource.
  /// [project] The project for the resource
  /// [tenantId] The Azure Active Directory Tenant ID.
  /// [uid] Output only. A globally unique identifier for the client.
  const AzureClientState({
    this.applicationId,
    this.certificate,
    this.createTime,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'tenantId': ?tenantId,
      'uid': ?uid,
    };
  }

  factory AzureClientState.fromMap(Map<String, dynamic> map) {
    return AzureClientState(
      applicationId: (() { final guardedValue = map['applicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
