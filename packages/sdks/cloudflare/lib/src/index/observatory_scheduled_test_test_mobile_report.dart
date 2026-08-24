// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'observatory_scheduled_test_test_mobile_report_error.dart';

class ObservatoryScheduledTestTestMobileReport {
  /// Cumulative Layout Shift.
  final pulumi.Input<double?>? cls;
  /// The type of device.
  /// Available values: "DESKTOP", "MOBILE".
  final pulumi.Input<String?>? deviceType;
  final pulumi.Input<ObservatoryScheduledTestTestMobileReportError?>? error;
  /// First Contentful Paint.
  final pulumi.Input<double?>? fcp;
  /// The URL to the full Lighthouse JSON report.
  final pulumi.Input<String?>? jsonReportUrl;
  /// Largest Contentful Paint.
  final pulumi.Input<double?>? lcp;
  /// The Lighthouse performance score.
  final pulumi.Input<double?>? performanceScore;
  /// Speed Index.
  final pulumi.Input<double?>? si;
  /// The state of the Lighthouse report.
  /// Available values: "RUNNING", "COMPLETE", "FAILED".
  final pulumi.Input<String?>? state;
  /// Total Blocking Time.
  final pulumi.Input<double?>? tbt;
  /// Time To First Byte.
  final pulumi.Input<double?>? ttfb;
  /// Time To Interactive.
  final pulumi.Input<double?>? tti;

  /// Creates a new [ObservatoryScheduledTestTestMobileReport].
  /// [cls] Cumulative Layout Shift.
  /// [deviceType] The type of device.
  /// [error] Optional.
  /// [fcp] First Contentful Paint.
  /// [jsonReportUrl] The URL to the full Lighthouse JSON report.
  /// [lcp] Largest Contentful Paint.
  /// [performanceScore] The Lighthouse performance score.
  /// [si] Speed Index.
  /// [state] The state of the Lighthouse report.
  /// [tbt] Total Blocking Time.
  /// [ttfb] Time To First Byte.
  /// [tti] Time To Interactive.
  const ObservatoryScheduledTestTestMobileReport({
    this.cls,
    this.deviceType,
    this.error,
    this.fcp,
    this.jsonReportUrl,
    this.lcp,
    this.performanceScore,
    this.si,
    this.state,
    this.tbt,
    this.ttfb,
    this.tti,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cls': ?cls,
      'deviceType': ?deviceType,
      'error': ?pulumi.Input.mapOptionalInputValue<ObservatoryScheduledTestTestMobileReportError, Map<String, dynamic>>(error, (value) => value.toMap()),
      'fcp': ?fcp,
      'jsonReportUrl': ?jsonReportUrl,
      'lcp': ?lcp,
      'performanceScore': ?performanceScore,
      'si': ?si,
      'state': ?state,
      'tbt': ?tbt,
      'ttfb': ?ttfb,
      'tti': ?tti,
    };
  }

  factory ObservatoryScheduledTestTestMobileReport.fromMap(Map<String, dynamic> map) {
    return ObservatoryScheduledTestTestMobileReport(
      cls: (() { final guardedValue = map['cls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      deviceType: (() { final guardedValue = map['deviceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObservatoryScheduledTestTestMobileReportError.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fcp: (() { final guardedValue = map['fcp']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      jsonReportUrl: (() { final guardedValue = map['jsonReportUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lcp: (() { final guardedValue = map['lcp']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      performanceScore: (() { final guardedValue = map['performanceScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      si: (() { final guardedValue = map['si']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tbt: (() { final guardedValue = map['tbt']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      ttfb: (() { final guardedValue = map['ttfb']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      tti: (() { final guardedValue = map['tti']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
