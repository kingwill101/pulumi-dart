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
  Outcome({
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
      'summary': ?pulumi.Input.mapOptionalInputValue<OutcomeSummary, String>(summary, (value) => value.value),
    };
  }

  factory Outcome.fromMap(Map<String, dynamic> map) {
    return Outcome(
      failureDetail: map['failureDetail'] == null ? null : (FailureDetail.fromMap((map['failureDetail'] as Map).cast<String, dynamic>())).input(),
      inconclusiveDetail: map['inconclusiveDetail'] == null ? null : (InconclusiveDetail.fromMap((map['inconclusiveDetail'] as Map).cast<String, dynamic>())).input(),
      skippedDetail: map['skippedDetail'] == null ? null : (SkippedDetail.fromMap((map['skippedDetail'] as Map).cast<String, dynamic>())).input(),
      successDetail: map['successDetail'] == null ? null : (SuccessDetail.fromMap((map['successDetail'] as Map).cast<String, dynamic>())).input(),
      summary: map['summary'] == null ? null : (OutcomeSummary.fromValue(map['summary'] as String)).input(),
    );
  }
}

