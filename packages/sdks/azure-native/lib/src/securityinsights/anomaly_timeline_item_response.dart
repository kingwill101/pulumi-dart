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
      azureResourceId: (map['azureResourceId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      endTimeUtc: (map['endTimeUtc'] as String).input(),
      intent: map['intent'] == null ? null : (map['intent'] as String).input(),
      kind: (map['kind'] as String).input(),
      productName: map['productName'] == null ? null : (map['productName'] as String).input(),
      reasons: map['reasons'] == null ? null : ((map['reasons'] as List).cast<String>()).input(),
      startTimeUtc: (map['startTimeUtc'] as String).input(),
      techniques: map['techniques'] == null ? null : ((map['techniques'] as List).cast<String>()).input(),
      timeGenerated: (map['timeGenerated'] as String).input(),
      vendor: map['vendor'] == null ? null : (map['vendor'] as String).input(),
    );
  }
}

