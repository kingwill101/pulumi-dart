// ignore_for_file: unused_element, unnecessary_cast


/// Routing rules for ramp up testing. This rule allows to redirect static traffic % to a slot or to gradually change routing % based on performance.
class RampUpRuleResponse {
  /// Hostname of a slot to which the traffic will be redirected if decided to. E.g. myapp-stage.azurewebsites.net.
  final String? actionHostName;
  /// Custom decision algorithm can be provided in TiPCallback site extension which URL can be specified.
  final String? changeDecisionCallbackUrl;
  /// Specifies interval in minutes to reevaluate ReroutePercentage.
  final int? changeIntervalInMinutes;
  /// In auto ramp up scenario this is the step to add/remove from <code>ReroutePercentage</code> until it reaches \n<code>MinReroutePercentage</code> or
  /// <code>MaxReroutePercentage</code>. Site metrics are checked every N minutes specified in <code>ChangeIntervalInMinutes</code>.\nCustom decision algorithm
  /// can be provided in TiPCallback site extension which URL can be specified in <code>ChangeDecisionCallbackUrl</code>.
  final double? changeStep;
  /// Specifies upper boundary below which ReroutePercentage will stay.
  final double? maxReroutePercentage;
  /// Specifies lower boundary above which ReroutePercentage will stay.
  final double? minReroutePercentage;
  /// Name of the routing rule. The recommended name would be to point to the slot which will receive the traffic in the experiment.
  final String? name;
  /// Percentage of the traffic which will be redirected to <code>ActionHostName</code>.
  final double? reroutePercentage;

  /// Creates a new [RampUpRuleResponse].
  /// [actionHostName] Hostname of a slot to which the traffic will be redirected if decided to. E.g. myapp-stage.azurewebsites.net.
  /// [changeDecisionCallbackUrl] Custom decision algorithm can be provided in TiPCallback site extension which URL can be specified.
  /// [changeIntervalInMinutes] Specifies interval in minutes to reevaluate ReroutePercentage.
  /// [changeStep] In auto ramp up scenario this is the step to add/remove from <code>ReroutePercentage</code> until it reaches \n<code>MinReroutePercentage</code> or
  /// [maxReroutePercentage] Specifies upper boundary below which ReroutePercentage will stay.
  /// [minReroutePercentage] Specifies lower boundary above which ReroutePercentage will stay.
  /// [name] Name of the routing rule. The recommended name would be to point to the slot which will receive the traffic in the experiment.
  /// [reroutePercentage] Percentage of the traffic which will be redirected to <code>ActionHostName</code>.
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
      actionHostName: map['actionHostName'] == null ? null : map['actionHostName'] as String,
      changeDecisionCallbackUrl: map['changeDecisionCallbackUrl'] == null ? null : map['changeDecisionCallbackUrl'] as String,
      changeIntervalInMinutes: map['changeIntervalInMinutes'] == null ? null : map['changeIntervalInMinutes'] as int,
      changeStep: map['changeStep'] == null ? null : map['changeStep'] as double,
      maxReroutePercentage: map['maxReroutePercentage'] == null ? null : map['maxReroutePercentage'] as double,
      minReroutePercentage: map['minReroutePercentage'] == null ? null : map['minReroutePercentage'] as double,
      name: map['name'] == null ? null : map['name'] as String,
      reroutePercentage: map['reroutePercentage'] == null ? null : map['reroutePercentage'] as double,
    );
  }
}

