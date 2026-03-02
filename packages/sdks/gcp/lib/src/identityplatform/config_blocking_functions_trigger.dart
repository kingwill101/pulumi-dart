// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigBlockingFunctionsTrigger {
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> eventType;
  /// HTTP URI trigger for the Cloud Function.
  final pulumi.Input<String> functionUri;
  /// (Output)
  /// When the trigger was changed.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ConfigBlockingFunctionsTrigger].
  /// [eventType] The identifier for this object. Format specified above.
  /// [functionUri] HTTP URI trigger for the Cloud Function.
  /// [updateTime] (Output)
  ConfigBlockingFunctionsTrigger({
    required this.eventType,
    required this.functionUri,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventType': eventType,
      'functionUri': functionUri,
      'updateTime': ?updateTime,
    };
  }

  factory ConfigBlockingFunctionsTrigger.fromMap(Map<String, dynamic> map) {
    return ConfigBlockingFunctionsTrigger(
      eventType: (map['eventType'] as String).input(),
      functionUri: (map['functionUri'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

