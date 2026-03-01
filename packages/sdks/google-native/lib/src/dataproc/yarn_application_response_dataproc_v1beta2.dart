// ignore_for_file: unused_element, unnecessary_cast


/// A YARN application created by a job. Application information is a subset of org.apache.hadoop.yarn.proto.YarnProtos.ApplicationReportProto.Beta Feature: This report is available for testing purposes only. It may be changed before final release.
class YarnApplicationResponseDataprocV1beta2 {
  /// The application name.
  final String name;
  /// The numerical progress of the application, from 1 to 100.
  final double progress;
  /// The application state.
  final String state;
  /// The HTTP URL of the ApplicationMaster, HistoryServer, or TimelineServer that provides application-specific information. The URL uses the internal hostname, and requires a proxy server for resolution and, possibly, access.
  final String trackingUrl;

  /// Creates a new [YarnApplicationResponseDataprocV1beta2].
  /// [name] The application name.
  /// [progress] The numerical progress of the application, from 1 to 100.
  /// [state] The application state.
  /// [trackingUrl] The HTTP URL of the ApplicationMaster, HistoryServer, or TimelineServer that provides application-specific information. The URL uses the internal hostname, and requires a proxy server for resolution and, possibly, access.
  YarnApplicationResponseDataprocV1beta2({
    required this.name,
    required this.progress,
    required this.state,
    required this.trackingUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'progress': progress,
      'state': state,
      'trackingUrl': trackingUrl,
    };
  }

  factory YarnApplicationResponseDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return YarnApplicationResponseDataprocV1beta2(
      name: map['name'] as String,
      progress: map['progress'] as double,
      state: map['state'] as String,
      trackingUrl: map['trackingUrl'] as String,
    );
  }
}

