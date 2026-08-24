// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'observatory_scheduled_test_test_desktop_report.dart';
import 'observatory_scheduled_test_test_mobile_report.dart';
import 'observatory_scheduled_test_test_region.dart';

class ObservatoryScheduledTestTest {
  final pulumi.Input<String?>? date;
  /// The Lighthouse report.
  final pulumi.Input<ObservatoryScheduledTestTestDesktopReport?>? desktopReport;
  /// UUID.
  final pulumi.Input<String?>? id;
  /// The Lighthouse report.
  final pulumi.Input<ObservatoryScheduledTestTestMobileReport?>? mobileReport;
  /// A test region with a label.
  final pulumi.Input<ObservatoryScheduledTestTestRegion?>? region;
  /// The frequency of the test.
  /// Available values: "DAILY", "WEEKLY".
  final pulumi.Input<String?>? scheduleFrequency;
  /// A URL.
  final pulumi.Input<String?>? url;

  /// Creates a new [ObservatoryScheduledTestTest].
  /// [date] Optional.
  /// [desktopReport] The Lighthouse report.
  /// [id] UUID.
  /// [mobileReport] The Lighthouse report.
  /// [region] A test region with a label.
  /// [scheduleFrequency] The frequency of the test.
  /// [url] A URL.
  const ObservatoryScheduledTestTest({
    this.date,
    this.desktopReport,
    this.id,
    this.mobileReport,
    this.region,
    this.scheduleFrequency,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': ?date,
      'desktopReport': ?pulumi.Input.mapOptionalInputValue<ObservatoryScheduledTestTestDesktopReport, Map<String, dynamic>>(desktopReport, (value) => value.toMap()),
      'id': ?id,
      'mobileReport': ?pulumi.Input.mapOptionalInputValue<ObservatoryScheduledTestTestMobileReport, Map<String, dynamic>>(mobileReport, (value) => value.toMap()),
      'region': ?pulumi.Input.mapOptionalInputValue<ObservatoryScheduledTestTestRegion, Map<String, dynamic>>(region, (value) => value.toMap()),
      'scheduleFrequency': ?scheduleFrequency,
      'url': ?url,
    };
  }

  factory ObservatoryScheduledTestTest.fromMap(Map<String, dynamic> map) {
    return ObservatoryScheduledTestTest(
      date: (() { final guardedValue = map['date']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      desktopReport: (() { final guardedValue = map['desktopReport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObservatoryScheduledTestTestDesktopReport.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mobileReport: (() { final guardedValue = map['mobileReport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObservatoryScheduledTestTestMobileReport.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObservatoryScheduledTestTestRegion.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scheduleFrequency: (() { final guardedValue = map['scheduleFrequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
