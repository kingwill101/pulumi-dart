// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HmacKey resources.
class HmacKeyState {
  /// The access ID of the HMAC Key.
  final pulumi.Input<String?>? accessId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// HMAC secret key material.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? secret;
  /// The email address of the key's associated service account.
  final pulumi.Input<String?>? serviceAccountEmail;
  /// The state of the key. Can be set to one of ACTIVE, INACTIVE.
  /// Default value is `ACTIVE`.
  /// Possible values are: `ACTIVE`, `INACTIVE`.
  final pulumi.Input<String?>? state;
  /// 'The creation time of the HMAC key in RFC 3339 format. '
  final pulumi.Input<String?>? timeCreated;
  /// 'The last modification time of the HMAC key metadata in RFC 3339 format.'
  final pulumi.Input<String?>? updated;

  /// Creates a new [HmacKeyState].
  /// [accessId] The access ID of the HMAC Key.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [project] The ID of the project in which the resource belongs.
  /// [secret] HMAC secret key material.
  /// [serviceAccountEmail] The email address of the key's associated service account.
  /// [state] The state of the key. Can be set to one of ACTIVE, INACTIVE.
  /// [timeCreated] 'The creation time of the HMAC key in RFC 3339 format. '
  /// [updated] 'The last modification time of the HMAC key metadata in RFC 3339 format.'
  const HmacKeyState({
    this.accessId,
    this.deletionPolicy,
    this.project,
    this.secret,
    this.serviceAccountEmail,
    this.state,
    this.timeCreated,
    this.updated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessId': ?accessId,
      'deletionPolicy': ?deletionPolicy,
      'project': ?project,
      'secret': ?secret,
      'serviceAccountEmail': ?serviceAccountEmail,
      'state': ?state,
      'timeCreated': ?timeCreated,
      'updated': ?updated,
    };
  }

  factory HmacKeyState.fromMap(Map<String, dynamic> map) {
    return HmacKeyState(
      accessId: (() { final guardedValue = map['accessId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccountEmail: (() { final guardedValue = map['serviceAccountEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeCreated: (() { final guardedValue = map['timeCreated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updated: (() { final guardedValue = map['updated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
