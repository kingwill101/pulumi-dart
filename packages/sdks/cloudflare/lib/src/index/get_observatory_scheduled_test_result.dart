// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getObservatoryScheduledTest.
class GetObservatoryScheduledTestResult {
  /// The frequency of the test.
  /// Available values: "DAILY", "WEEKLY".
  final String? frequency;
  /// A test region.
  /// Available values: "asia-east1", "asia-northeast1", "asia-northeast2", "asia-south1", "asia-southeast1", "australia-southeast1", "europe-north1", "europe-southwest1", "europe-west1", "europe-west2", "europe-west3", "europe-west4", "europe-west8", "europe-west9", "me-west1", "southamerica-east1", "us-central1", "us-east1", "us-east4", "us-south1", "us-west1".
  final String? region;
  /// A URL.
  final String? url;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetObservatoryScheduledTestResult].
  /// [frequency] The frequency of the test.
  /// [region] A test region.
  /// [url] A URL.
  /// [zoneId] Identifier.
  const GetObservatoryScheduledTestResult({
    this.frequency,
    this.region,
    this.url,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': ?frequency,
      'region': ?region,
      'url': ?url,
      'zoneId': ?zoneId,
    };
  }

  factory GetObservatoryScheduledTestResult.fromMap(Map<String, dynamic> map) {
    return GetObservatoryScheduledTestResult(
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
