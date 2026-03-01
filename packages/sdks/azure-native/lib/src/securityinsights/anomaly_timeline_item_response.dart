// ignore_for_file: unused_element, unnecessary_cast


/// Represents anomaly timeline item.
class AnomalyTimelineItemResponse {
  /// The anomaly azure resource id.
  final String azureResourceId;
  /// The anomaly description.
  final String? description;
  /// The anomaly name.
  final String displayName;
  /// The anomaly end time.
  final String endTimeUtc;
  /// The intent of the anomaly.
  final String? intent;
  /// The entity query kind
  /// Expected value is 'Anomaly'.
  final String kind;
  /// The anomaly product name.
  final String? productName;
  /// The reasons that cause the anomaly.
  final List<String>? reasons;
  /// The anomaly start time.
  final String startTimeUtc;
  /// The techniques of the anomaly.
  final List<String>? techniques;
  /// The anomaly generated time.
  final String timeGenerated;
  /// The name of the anomaly vendor.
  final String? vendor;

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
      azureResourceId: map['azureResourceId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      endTimeUtc: map['endTimeUtc'] as String,
      intent: map['intent'] == null ? null : map['intent'] as String,
      kind: map['kind'] as String,
      productName: map['productName'] == null ? null : map['productName'] as String,
      reasons: map['reasons'] == null ? null : (map['reasons'] as List).cast<String>(),
      startTimeUtc: map['startTimeUtc'] as String,
      techniques: map['techniques'] == null ? null : (map['techniques'] as List).cast<String>(),
      timeGenerated: map['timeGenerated'] as String,
      vendor: map['vendor'] == null ? null : map['vendor'] as String,
    );
  }
}

