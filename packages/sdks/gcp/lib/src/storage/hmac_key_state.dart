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
    pulumi.Output<String>? accessId,
    pulumi.Output<String>? project,
    pulumi.Output<String>? secret,
    pulumi.Output<String>? serviceAccountEmail,
    pulumi.Output<String>? state,
    pulumi.Output<String>? timeCreated,
    pulumi.Output<String>? updated,
  }) :
      accessId = pulumi.Input.asOptionalInput<String>(accessId),
      project = pulumi.Input.asOptionalInput<String>(project),
      secret = pulumi.Input.asOptionalInput<String>(secret),
      serviceAccountEmail = pulumi.Input.asOptionalInput<String>(serviceAccountEmail),
      state = pulumi.Input.asOptionalInput<String>(state),
      timeCreated = pulumi.Input.asOptionalInput<String>(timeCreated),
      updated = pulumi.Input.asOptionalInput<String>(updated);

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
      accessId: map['accessId'] == null ? null : pulumi.Output.create<String>(map['accessId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      secret: map['secret'] == null ? null : pulumi.Output.create<String>(map['secret'] as String),
      serviceAccountEmail: map['serviceAccountEmail'] == null ? null : pulumi.Output.create<String>(map['serviceAccountEmail'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      timeCreated: map['timeCreated'] == null ? null : pulumi.Output.create<String>(map['timeCreated'] as String),
      updated: map['updated'] == null ? null : pulumi.Output.create<String>(map['updated'] as String),
    );
  }
}

