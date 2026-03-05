// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents anomaly timeline item.
class AnomalyTimelineItemResponse {
  /// The anomaly azure resource id.
  final pulumi.Input<String> azureResourceId;
  /// The anomaly description.
  final pulumi.Input<String>? description;
  /// The anomaly name.
  final pulumi.Input<String> displayName;
  /// The anomaly end time.
  final pulumi.Input<String> endTimeUtc;
  /// The intent of the anomaly.
  final pulumi.Input<String>? intent;
  /// The entity query kind
  /// Expected value is 'Anomaly'.
  final pulumi.Input<String> kind;
  /// The anomaly product name.
  final pulumi.Input<String>? productName;
  /// The reasons that cause the anomaly.
  final pulumi.Input<List<String>>? reasons;
  /// The anomaly start time.
  final pulumi.Input<String> startTimeUtc;
  /// The techniques of the anomaly.
  final pulumi.Input<List<String>>? techniques;
  /// The anomaly generated time.
  final pulumi.Input<String> timeGenerated;
  /// The name of the anomaly vendor.
  final pulumi.Input<String>? vendor;

  /// Creates a new [AnomalyTimelineItemResponse].
  /// [azureResourceId] The anomaly azure resource id.
  /// [description] The anomaly description.
  /// [displayName] The anomaly name.
  /// [endTimeUtc] The anomaly end time.
  /// [intent] The intent of the anomaly.
  /// [kind] The entity query kind
  /// [productName] The anomaly product name.
  /// [reasons] The reasons that cause the anomaly.
  /// [startTimeUtc] The anomaly start time.
  /// [techniques] The techniques of the anomaly.
  /// [timeGenerated] The anomaly generated time.
  /// [vendor] The name of the anomaly vendor.
  AnomalyTimelineItemResponse({
    required this.azureResourceId,
    this.description,
    required this.displayName,
    required this.endTimeUtc,
    this.intent,
    required this.kind,
    this.productName,
    this.reasons,
    required this.startTimeUtc,
    this.techniques,
    required this.timeGenerated,
    this.vendor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureResourceId': azureResourceId,
      'description': ?description,
      'displayName': displayName,
      'endTimeUtc': endTimeUtc,
      'intent': ?intent,
      'kind': kind,
      'productName': ?productName,
      'reasons': ?reasons,
      'startTimeUtc': startTimeUtc,
      'techniques': ?techniques,
      'timeGenerated': timeGenerated,
      'vendor': ?vendor,
    };
  }

  factory AnomalyTimelineItemResponse.fromMap(Map<String, dynamic> map) {
    return AnomalyTimelineItemResponse(
      azureResourceId: pulumi.Input.fromValue(map['azureResourceId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      endTimeUtc: pulumi.Input.fromValue(map['endTimeUtc'] as String),
      intent: (() { final guardedValue = map['intent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      productName: (() { final guardedValue = map['productName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reasons: (() { final guardedValue = map['reasons']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      startTimeUtc: pulumi.Input.fromValue(map['startTimeUtc'] as String),
      techniques: (() { final guardedValue = map['techniques']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      timeGenerated: pulumi.Input.fromValue(map['timeGenerated'] as String),
      vendor: (() { final guardedValue = map['vendor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

