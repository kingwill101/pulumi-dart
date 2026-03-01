// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ramp_up_rule_response.dart';

/// Routing rules in production experiments.
class ExperimentsResponse {
  /// List of ramp-up rules.
  final List<RampUpRuleResponse>? rampUpRules;

  /// Creates a new [ExperimentsResponse].
  /// [rampUpRules] List of ramp-up rules.
  ExperimentsResponse({
    this.rampUpRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rampUpRules': ?rampUpRules == null ? null : pulumi.Input.encodeList<RampUpRuleResponse, Map<String, dynamic>>(rampUpRules!, (value) => value.toMap()),
    };
  }

  factory ExperimentsResponse.fromMap(Map<String, dynamic> map) {
    return ExperimentsResponse(
      rampUpRules: map['rampUpRules'] == null ? null : pulumi.Input.decodeList<RampUpRuleResponse>(map['rampUpRules'], (value) => RampUpRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

