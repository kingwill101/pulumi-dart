// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'https_trigger_security_level.dart';

/// Describes HttpsTrigger, could be used to connect web hooks to function.
class HttpsTrigger {
  /// The security level for the function.
  final pulumi.Input<HttpsTriggerSecurityLevel>? securityLevel;

  /// Creates a new [HttpsTrigger].
  /// [securityLevel] The security level for the function.
  HttpsTrigger({
    this.securityLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityLevel': ?pulumi.Input.mapOptionalInputValue<HttpsTriggerSecurityLevel, String>(securityLevel, (value) => value.value),
    };
  }

  factory HttpsTrigger.fromMap(Map<String, dynamic> map) {
    return HttpsTrigger(
      securityLevel: map['securityLevel'] == null ? null : (HttpsTriggerSecurityLevel.fromValue(map['securityLevel'] as String)).input(),
    );
  }
}

