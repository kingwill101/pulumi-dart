// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'failure_detail.dart';
import 'inconclusive_detail.dart';
import 'outcome_summary.dart';
import 'skipped_detail.dart';
import 'success_detail.dart';

/// Interprets a result so that humans and machines can act on it.
class Outcome {
  /// More information about a FAILURE outcome. Returns INVALID_ARGUMENT if this field is set but the summary is not FAILURE. Optional
  final pulumi.Input<FailureDetail>? failureDetail;
  /// More information about an INCONCLUSIVE outcome. Returns INVALID_ARGUMENT if this field is set but the summary is not INCONCLUSIVE. Optional
  final pulumi.Input<InconclusiveDetail>? inconclusiveDetail;
  /// More information about a SKIPPED outcome. Returns INVALID_ARGUMENT if this field is set but the summary is not SKIPPED. Optional
  final pulumi.Input<SkippedDetail>? skippedDetail;
  /// More information about a SUCCESS outcome. Returns INVALID_ARGUMENT if this field is set but the summary is not SUCCESS. Optional
  final pulumi.Input<SuccessDetail>? successDetail;
  /// The simplest way to interpret a result. Required
  final pulumi.Input<OutcomeSummary>? summary;

  /// Creates a new [Outcome].
  /// [failureDetail] More information about a FAILURE outcome. Returns INVALID_ARGUMENT if this field is set but the summary is not FAILURE. Optional
  /// [inconclusiveDetail] More information about an INCONCLUSIVE outcome. Returns INVALID_ARGUMENT if this field is set but the summary is not INCONCLUSIVE. Optional
  /// [skippedDetail] More information about a SKIPPED outcome. Returns INVALID_ARGUMENT if this field is set but the summary is not SKIPPED. Optional
  /// [successDetail] More information about a SUCCESS outcome. Returns INVALID_ARGUMENT if this field is set but the summary is not SUCCESS. Optional
  /// [summary] The simplest way to interpret a result. Required
  const Outcome({
    this.failureDetail,
    this.inconclusiveDetail,
    this.skippedDetail,
    this.successDetail,
    this.summary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureDetail': ?pulumi.Input.mapOptionalInputValue<FailureDetail, Map<String, dynamic>>(failureDetail, (value) => value.toMap()),
      'inconclusiveDetail': ?pulumi.Input.mapOptionalInputValue<InconclusiveDetail, Map<String, dynamic>>(inconclusiveDetail, (value) => value.toMap()),
      'skippedDetail': ?pulumi.Input.mapOptionalInputValue<SkippedDetail, Map<String, dynamic>>(skippedDetail, (value) => value.toMap()),
      'successDetail': ?pulumi.Input.mapOptionalInputValue<SuccessDetail, Map<String, dynamic>>(successDetail, (value) => value.toMap()),
      'summary': ?pulumi.Input.mapOptionalInputValue<OutcomeSummary, String>(summary, (value) => value.wireValue),
    };
  }

  factory Outcome.fromMap(Map<String, dynamic> map) {
    return Outcome(
      failureDetail: (() { final guardedValue = map['failureDetail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FailureDetail.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inconclusiveDetail: (() { final guardedValue = map['inconclusiveDetail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InconclusiveDetail.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      skippedDetail: (() { final guardedValue = map['skippedDetail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SkippedDetail.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      successDetail: (() { final guardedValue = map['successDetail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SuccessDetail.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      summary: (() { final guardedValue = map['summary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OutcomeSummary.fromValue(guardedValue as String)); })(),
    );
  }
}
