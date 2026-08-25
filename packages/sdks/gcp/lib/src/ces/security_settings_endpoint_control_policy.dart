// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecuritySettingsEndpointControlPolicy {
  /// Optional. The allowed HTTP(s) origins that tools in the App are able to directly call.
  final pulumi.Input<List<String>?>? allowedOrigins;
  /// Optional. The scope in which this policy's allowedOrigins list is enforced.
  /// Possible values are: `ENFORCEMENT_SCOPE_UNSPECIFIED`, `VPCSC_ONLY`, `ALWAYS`.
  final pulumi.Input<String?>? enforcementScope;

  /// Creates a new [SecuritySettingsEndpointControlPolicy].
  /// [allowedOrigins] Optional. The allowed HTTP(s) origins that tools in the App are able to directly call.
  /// [enforcementScope] Optional. The scope in which this policy's allowedOrigins list is enforced.
  const SecuritySettingsEndpointControlPolicy({
    this.allowedOrigins,
    this.enforcementScope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOrigins': ?allowedOrigins,
      'enforcementScope': ?enforcementScope,
    };
  }

  factory SecuritySettingsEndpointControlPolicy.fromMap(Map<String, dynamic> map) {
    return SecuritySettingsEndpointControlPolicy(
      allowedOrigins: (() { final guardedValue = map['allowedOrigins']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enforcementScope: (() { final guardedValue = map['enforcementScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
