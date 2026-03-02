// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Routing rules for ramp up testing. This rule allows to redirect static traffic % to a slot or to gradually change routing % based on performance.
class RampUpRule {
  /// Hostname of a slot to which the traffic will be redirected if decided to. E.g. myapp-stage.azurewebsites.net.
  final pulumi.Input<String>? actionHostName;
  /// Custom decision algorithm can be provided in TiPCallback site extension which URL can be specified.
  final pulumi.Input<String>? changeDecisionCallbackUrl;
  /// Specifies interval in minutes to reevaluate ReroutePercentage.
  final pulumi.Input<int>? changeIntervalInMinutes;
  /// In auto ramp up scenario this is the step to add/remove from <code>ReroutePercentage</code> until it reaches \n<code>MinReroutePercentage</code> or
  /// <code>MaxReroutePercentage</code>. Site metrics are checked every N minutes specified in <code>ChangeIntervalInMinutes</code>.\nCustom decision algorithm
  /// can be provided in TiPCallback site extension which URL can be specified in <code>ChangeDecisionCallbackUrl</code>.
  final pulumi.Input<double>? changeStep;
  /// Specifies upper boundary below which ReroutePercentage will stay.
  final pulumi.Input<double>? maxReroutePercentage;
  /// Specifies lower boundary above which ReroutePercentage will stay.
  final pulumi.Input<double>? minReroutePercentage;
  /// Name of the routing rule. The recommended name would be to point to the slot which will receive the traffic in the experiment.
  final pulumi.Input<String>? name;
  /// Percentage of the traffic which will be redirected to <code>ActionHostName</code>.
  final pulumi.Input<double>? reroutePercentage;

  /// Creates a new [RampUpRule].
  /// [actionHostName] Hostname of a slot to which the traffic will be redirected if decided to. E.g. myapp-stage.azurewebsites.net.
  /// [changeDecisionCallbackUrl] Custom decision algorithm can be provided in TiPCallback site extension which URL can be specified.
  /// [changeIntervalInMinutes] Specifies interval in minutes to reevaluate ReroutePercentage.
  /// [changeStep] In auto ramp up scenario this is the step to add/remove from <code>ReroutePercentage</code> until it reaches \n<code>MinReroutePercentage</code> or
  /// [maxReroutePercentage] Specifies upper boundary below which ReroutePercentage will stay.
  /// [minReroutePercentage] Specifies lower boundary above which ReroutePercentage will stay.
  /// [name] Name of the routing rule. The recommended name would be to point to the slot which will receive the traffic in the experiment.
  /// [reroutePercentage] Percentage of the traffic which will be redirected to <code>ActionHostName</code>.
  RampUpRule({
    this.actionHostName,
    this.changeDecisionCallbackUrl,
    this.changeIntervalInMinutes,
    this.changeStep,
    this.maxReroutePercentage,
    this.minReroutePercentage,
    this.name,
    this.reroutePercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionHostName': ?actionHostName,
      'changeDecisionCallbackUrl': ?changeDecisionCallbackUrl,
      'changeIntervalInMinutes': ?changeIntervalInMinutes,
      'changeStep': ?changeStep,
      'maxReroutePercentage': ?maxReroutePercentage,
      'minReroutePercentage': ?minReroutePercentage,
      'name': ?name,
      'reroutePercentage': ?reroutePercentage,
    };
  }

  factory RampUpRule.fromMap(Map<String, dynamic> map) {
    return RampUpRule(
      actionHostName: map['actionHostName'] == null ? null : (map['actionHostName']! as String).input(),
      changeDecisionCallbackUrl: map['changeDecisionCallbackUrl'] == null ? null : (map['changeDecisionCallbackUrl']! as String).input(),
      changeIntervalInMinutes: map['changeIntervalInMinutes'] == null ? null : (map['changeIntervalInMinutes']! as int).input(),
      changeStep: map['changeStep'] == null ? null : (map['changeStep']! as double).input(),
      maxReroutePercentage: map['maxReroutePercentage'] == null ? null : (map['maxReroutePercentage']! as double).input(),
      minReroutePercentage: map['minReroutePercentage'] == null ? null : (map['minReroutePercentage']! as double).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      reroutePercentage: map['reroutePercentage'] == null ? null : (map['reroutePercentage']! as double).input(),
    );
  }
}

