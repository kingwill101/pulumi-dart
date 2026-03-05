// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Routing rules for ramp up testing. This rule allows to redirect static traffic % to a slot or to gradually change routing % based on performance.
class RampUpRuleResponse {
  /// Hostname of a slot to which the traffic will be redirected if decided to. E.g. myapp-stage.azurewebsites.net.
  final pulumi.Input<String>? actionHostName;
  /// Custom decision algorithm can be provided in TiPCallback site extension which URL can be specified.
  final pulumi.Input<String>? changeDecisionCallbackUrl;
  /// Specifies interval in minutes to reevaluate ReroutePercentage.
  final pulumi.Input<int>? changeIntervalInMinutes;
  /// In auto ramp up scenario this is the step to add/remove from &lt;code&gt;ReroutePercentage&lt;/code&gt; until it reaches \n&lt;code&gt;MinReroutePercentage&lt;/code&gt; or
  /// &lt;code&gt;MaxReroutePercentage&lt;/code&gt;. Site metrics are checked every N minutes specified in &lt;code&gt;ChangeIntervalInMinutes&lt;/code&gt;.\nCustom decision algorithm
  /// can be provided in TiPCallback site extension which URL can be specified in &lt;code&gt;ChangeDecisionCallbackUrl&lt;/code&gt;.
  final pulumi.Input<double>? changeStep;
  /// Specifies upper boundary below which ReroutePercentage will stay.
  final pulumi.Input<double>? maxReroutePercentage;
  /// Specifies lower boundary above which ReroutePercentage will stay.
  final pulumi.Input<double>? minReroutePercentage;
  /// Name of the routing rule. The recommended name would be to point to the slot which will receive the traffic in the experiment.
  final pulumi.Input<String>? name;
  /// Percentage of the traffic which will be redirected to &lt;code&gt;ActionHostName&lt;/code&gt;.
  final pulumi.Input<double>? reroutePercentage;

  /// Creates a new [RampUpRuleResponse].
  /// [actionHostName] Hostname of a slot to which the traffic will be redirected if decided to. E.g. myapp-stage.azurewebsites.net.
  /// [changeDecisionCallbackUrl] Custom decision algorithm can be provided in TiPCallback site extension which URL can be specified.
  /// [changeIntervalInMinutes] Specifies interval in minutes to reevaluate ReroutePercentage.
  /// [changeStep] In auto ramp up scenario this is the step to add/remove from &lt;code&gt;ReroutePercentage&lt;/code&gt; until it reaches \n&lt;code&gt;MinReroutePercentage&lt;/code&gt; or
  /// [maxReroutePercentage] Specifies upper boundary below which ReroutePercentage will stay.
  /// [minReroutePercentage] Specifies lower boundary above which ReroutePercentage will stay.
  /// [name] Name of the routing rule. The recommended name would be to point to the slot which will receive the traffic in the experiment.
  /// [reroutePercentage] Percentage of the traffic which will be redirected to &lt;code&gt;ActionHostName&lt;/code&gt;.
  RampUpRuleResponse({
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

  factory RampUpRuleResponse.fromMap(Map<String, dynamic> map) {
    return RampUpRuleResponse(
      actionHostName: (() { final guardedValue = map['actionHostName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      changeDecisionCallbackUrl: (() { final guardedValue = map['changeDecisionCallbackUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      changeIntervalInMinutes: (() { final guardedValue = map['changeIntervalInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      changeStep: (() { final guardedValue = map['changeStep']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      maxReroutePercentage: (() { final guardedValue = map['maxReroutePercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      minReroutePercentage: (() { final guardedValue = map['minReroutePercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reroutePercentage: (() { final guardedValue = map['reroutePercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

