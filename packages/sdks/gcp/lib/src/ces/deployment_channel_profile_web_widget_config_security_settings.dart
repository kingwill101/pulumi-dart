// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentChannelProfileWebWidgetConfigSecuritySettings {
  /// The origins that are allowed to host the web widget. An origin is defined by RFC 6454. If empty, all origins are allowed. A maximum of 100 origins is allowed. Example: "https://example.com"
  final pulumi.Input<List<String>>? allowedOrigins;
  /// Indicates whether origin check for the web widget is enabled. If true, the web widget will check the origin of the website that loads the web widget and only allow it to be loaded in the same origin or any of the allowed origins.
  final pulumi.Input<bool>? enableOriginCheck;
  /// Indicates whether public access to the web widget is enabled. If true, the web widget will be publicly accessible. If false, the web widget must be integrated with your own authentication and authorization system to return valid credentials for accessing the CES agent.
  final pulumi.Input<bool>? enablePublicAccess;
  /// Indicates whether reCAPTCHA verification for the web widget is enabled.
  final pulumi.Input<bool>? enableRecaptcha;

  /// Creates a new [DeploymentChannelProfileWebWidgetConfigSecuritySettings].
  /// [allowedOrigins] The origins that are allowed to host the web widget. An origin is defined by RFC 6454. If empty, all origins are allowed. A maximum of 100 origins is allowed. Example: "https://example.com"
  /// [enableOriginCheck] Indicates whether origin check for the web widget is enabled. If true, the web widget will check the origin of the website that loads the web widget and only allow it to be loaded in the same origin or any of the allowed origins.
  /// [enablePublicAccess] Indicates whether public access to the web widget is enabled. If true, the web widget will be publicly accessible. If false, the web widget must be integrated with your own authentication and authorization system to return valid credentials for accessing the CES agent.
  /// [enableRecaptcha] Indicates whether reCAPTCHA verification for the web widget is enabled.
  const DeploymentChannelProfileWebWidgetConfigSecuritySettings({
    this.allowedOrigins,
    this.enableOriginCheck,
    this.enablePublicAccess,
    this.enableRecaptcha,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOrigins': ?allowedOrigins,
      'enableOriginCheck': ?enableOriginCheck,
      'enablePublicAccess': ?enablePublicAccess,
      'enableRecaptcha': ?enableRecaptcha,
    };
  }

  factory DeploymentChannelProfileWebWidgetConfigSecuritySettings.fromMap(Map<String, dynamic> map) {
    return DeploymentChannelProfileWebWidgetConfigSecuritySettings(
      allowedOrigins: (() { final guardedValue = map['allowedOrigins']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enableOriginCheck: (() { final guardedValue = map['enableOriginCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enablePublicAccess: (() { final guardedValue = map['enablePublicAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableRecaptcha: (() { final guardedValue = map['enableRecaptcha']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
