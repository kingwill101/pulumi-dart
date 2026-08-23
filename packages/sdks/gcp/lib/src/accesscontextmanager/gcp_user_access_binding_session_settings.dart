// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GcpUserAccessBindingSessionSettings {
  /// Optional. How long a user is allowed to take between actions before a new access token must be issued. Only set for Google Cloud apps.
  final pulumi.Input<String>? maxInactivity;
  /// Optional. The session length. Setting this field to zero is equal to disabling session. Also can set infinite session by flipping the enabled bit to false below. If useOidcMaxAge is true, for OIDC apps, the session length will be the minimum of this field and OIDC maxAge param.
  /// If this field is set to zero, `sessionLengthEnabled` must be set to false or left unset.
  final pulumi.Input<String>? sessionLength;
  /// Optional. This field enables or disables Google Cloud session length. When false, all fields set above will be disregarded and the session length is basically infinite.
  /// If `sessionLength` is set to zero, this field must be false.
  final pulumi.Input<bool>? sessionLengthEnabled;
  /// Optional. The session challenges proposed to users when the Google Cloud session length is up.
  /// Possible values are: `LOGIN`, `SECURITY_KEY`, `PASSWORD`.
  final pulumi.Input<String>? sessionReauthMethod;
  /// Optional. Only useful for OIDC apps. When false, the OIDC maxAge param, if passed in the authentication request will be ignored. When true, the re-auth period will be the minimum of the sessionLength field and the maxAge OIDC param.
  final pulumi.Input<bool>? useOidcMaxAge;

  /// Creates a new [GcpUserAccessBindingSessionSettings].
  /// [maxInactivity] Optional. How long a user is allowed to take between actions before a new access token must be issued. Only set for Google Cloud apps.
  /// [sessionLength] Optional. The session length. Setting this field to zero is equal to disabling session. Also can set infinite session by flipping the enabled bit to false below. If useOidcMaxAge is true, for OIDC apps, the session length will be the minimum of this field and OIDC maxAge param.
  /// [sessionLengthEnabled] Optional. This field enables or disables Google Cloud session length. When false, all fields set above will be disregarded and the session length is basically infinite.
  /// [sessionReauthMethod] Optional. The session challenges proposed to users when the Google Cloud session length is up.
  /// [useOidcMaxAge] Optional. Only useful for OIDC apps. When false, the OIDC maxAge param, if passed in the authentication request will be ignored. When true, the re-auth period will be the minimum of the sessionLength field and the maxAge OIDC param.
  const GcpUserAccessBindingSessionSettings({
    this.maxInactivity,
    this.sessionLength,
    this.sessionLengthEnabled,
    this.sessionReauthMethod,
    this.useOidcMaxAge,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxInactivity': ?maxInactivity,
      'sessionLength': ?sessionLength,
      'sessionLengthEnabled': ?sessionLengthEnabled,
      'sessionReauthMethod': ?sessionReauthMethod,
      'useOidcMaxAge': ?useOidcMaxAge,
    };
  }

  factory GcpUserAccessBindingSessionSettings.fromMap(Map<String, dynamic> map) {
    return GcpUserAccessBindingSessionSettings(
      maxInactivity: (() { final guardedValue = map['maxInactivity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionLength: (() { final guardedValue = map['sessionLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionLengthEnabled: (() { final guardedValue = map['sessionLengthEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sessionReauthMethod: (() { final guardedValue = map['sessionReauthMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useOidcMaxAge: (() { final guardedValue = map['useOidcMaxAge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
