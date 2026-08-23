// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_blocking_functions_forward_inbound_credentials.dart';
import 'config_blocking_functions_trigger.dart';

class ConfigBlockingFunctions {
  /// The user credentials to include in the JWT payload that is sent to the registered Blocking Functions.
  /// Structure is documented below.
  final pulumi.Input<ConfigBlockingFunctionsForwardInboundCredentials>? forwardInboundCredentials;
  /// Map of Trigger to event type. Key should be one of the supported event types: "beforeCreate", "beforeSignIn".
  /// Structure is documented below.
  final pulumi.Input<List<ConfigBlockingFunctionsTrigger>> triggers;

  /// Creates a new [ConfigBlockingFunctions].
  /// [forwardInboundCredentials] The user credentials to include in the JWT payload that is sent to the registered Blocking Functions.
  /// [triggers] Map of Trigger to event type. Key should be one of the supported event types: "beforeCreate", "beforeSignIn".
  const ConfigBlockingFunctions({
    this.forwardInboundCredentials,
    required this.triggers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardInboundCredentials': ?pulumi.Input.mapOptionalInputValue<ConfigBlockingFunctionsForwardInboundCredentials, Map<String, dynamic>>(forwardInboundCredentials, (value) => value.toMap()),
      'triggers': pulumi.Input.mapInputValue<List<ConfigBlockingFunctionsTrigger>, List<Map<String, dynamic>>>(triggers, (value) => pulumi.Input.encodeList<ConfigBlockingFunctionsTrigger, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ConfigBlockingFunctions.fromMap(Map<String, dynamic> map) {
    return ConfigBlockingFunctions(
      forwardInboundCredentials: (() { final guardedValue = map['forwardInboundCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigBlockingFunctionsForwardInboundCredentials.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      triggers: pulumi.Input.fromValue(pulumi.Input.decodeList<ConfigBlockingFunctionsTrigger>(map['triggers']!, (value) => ConfigBlockingFunctionsTrigger.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
