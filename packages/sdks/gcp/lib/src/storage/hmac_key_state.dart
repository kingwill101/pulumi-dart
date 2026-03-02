// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HmacKey resources.
class HmacKeyState {
  /// The access ID of the HMAC Key.
  final pulumi.Input<String>? accessId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// HMAC secret key material.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? secret;
  /// The email address of the key's associated service account.
  final pulumi.Input<String>? serviceAccountEmail;
  /// The state of the key. Can be set to one of ACTIVE, INACTIVE.
  /// Default value is `ACTIVE`.
  /// Possible values are: `ACTIVE`, `INACTIVE`.
  final pulumi.Input<String>? state;
  /// 'The creation time of the HMAC key in RFC 3339 format. '
  final pulumi.Input<String>? timeCreated;
  /// 'The last modification time of the HMAC key metadata in RFC 3339 format.'
  final pulumi.Input<String>? updated;

  /// Creates a new [HmacKeyState].
  /// [accessId] The access ID of the HMAC Key.
  /// [project] The ID of the project in which the resource belongs.
  /// [secret] HMAC secret key material.
  /// [serviceAccountEmail] The email address of the key's associated service account.
  /// [state] The state of the key. Can be set to one of ACTIVE, INACTIVE.
  /// [timeCreated] 'The creation time of the HMAC key in RFC 3339 format. '
  /// [updated] 'The last modification time of the HMAC key metadata in RFC 3339 format.'
  HmacKeyState({
    this.accessId,
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
      accessId: map['accessId'] == null ? null : (map['accessId']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      secret: map['secret'] == null ? null : (map['secret']! as String).input(),
      serviceAccountEmail: map['serviceAccountEmail'] == null ? null : (map['serviceAccountEmail']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      timeCreated: map['timeCreated'] == null ? null : (map['timeCreated']! as String).input(),
      updated: map['updated'] == null ? null : (map['updated']! as String).input(),
    );
  }
}

