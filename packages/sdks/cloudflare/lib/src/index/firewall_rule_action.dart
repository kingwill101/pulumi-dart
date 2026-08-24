// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_rule_action_response.dart';

class FirewallRuleAction {
  /// The action to perform.
  /// Available values: "simulate", "ban", "challenge", "js*challenge", "managed*challenge".
  final pulumi.Input<String?>? mode;
  /// A custom content type and reponse to return when the threshold is exceeded. The custom response configured in this object will override the custom error for the zone. This object is optional.
  /// Notes: If you omit this object, Cloudflare will use the default HTML error page. If "mode" is "challenge", "managed*challenge", or "js*challenge", Cloudflare will use the zone challenge pages and you should not provide the "response" object.
  final pulumi.Input<FirewallRuleActionResponse?>? response;
  /// The time in seconds during which Cloudflare will perform the mitigation action. Must be an integer value greater than or equal to the period.
  /// Notes: If "mode" is "challenge", "managed*challenge", or "js*challenge", Cloudflare will use the zone's Challenge Passage time and you should not provide this value.
  final pulumi.Input<double?>? timeout;

  /// Creates a new [FirewallRuleAction].
  /// [mode] The action to perform.
  /// [response] A custom content type and reponse to return when the threshold is exceeded. The custom response configured in this object will override the custom error for the zone. This object is optional.
  /// [timeout] The time in seconds during which Cloudflare will perform the mitigation action. Must be an integer value greater than or equal to the period.
  const FirewallRuleAction({
    this.mode,
    this.response,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'response': ?pulumi.Input.mapOptionalInputValue<FirewallRuleActionResponse, Map<String, dynamic>>(response, (value) => value.toMap()),
      'timeout': ?timeout,
    };
  }

  factory FirewallRuleAction.fromMap(Map<String, dynamic> map) {
    return FirewallRuleAction(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      response: (() { final guardedValue = map['response']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirewallRuleActionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
