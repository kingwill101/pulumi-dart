// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'failure_detail_response.dart';
import 'inconclusive_detail_response.dart';
import 'skipped_detail_response.dart';
import 'success_detail_response.dart';

/// Interprets a result so that humans and machines can act on it.
class OutcomeResponse {
  /// More information about a FAILURE outcome. Returns INVALID_ARGUMENT if this field is set but the summary is not FAILURE. Optional
  final pulumi.Input<FailureDetailResponse> failureDetail;
  /// More information about an INCONCLUSIVE outcome. Returns INVALID_ARGUMENT if this field is set but the summary is not INCONCLUSIVE. Optional
  final pulumi.Input<InconclusiveDetailResponse> inconclusiveDetail;
  /// More information about a SKIPPED outcome. Returns INVALID_ARGUMENT if this field is set but the summary is not SKIPPED. Optional
  final pulumi.Input<SkippedDetailResponse> skippedDetail;
  /// More information about a SUCCESS outcome. Returns INVALID_ARGUMENT if this field is set but the summary is not SUCCESS. Optional
  final pulumi.Input<SuccessDetailResponse> successDetail;
  /// The simplest way to interpret a result. Required
  final pulumi.Input<String> summary;

  /// Creates a new [OutcomeResponse].
  /// [failureDetail] More information about a FAILURE outcome. Returns INVALID_ARGUMENT if this field is set but the summary is not FAILURE. Optional
  /// [inconclusiveDetail] More information about an INCONCLUSIVE outcome. Returns INVALID_ARGUMENT if this field is set but the summary is not INCONCLUSIVE. Optional
  /// [skippedDetail] More information about a SKIPPED outcome. Returns INVALID_ARGUMENT if this field is set but the summary is not SKIPPED. Optional
  /// [successDetail] More information about a SUCCESS outcome. Returns INVALID_ARGUMENT if this field is set but the summary is not SUCCESS. Optional
  /// [summary] The simplest way to interpret a result. Required
  OutcomeResponse({
    required this.failureDetail,
    required this.inconclusiveDetail,
    required this.skippedDetail,
    required this.successDetail,
    required this.summary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureDetail': pulumi.Input.mapInputValue<FailureDetailResponse, Map<String, dynamic>>(failureDetail, (value) => value.toMap()),
      'inconclusiveDetail': pulumi.Input.mapInputValue<InconclusiveDetailResponse, Map<String, dynamic>>(inconclusiveDetail, (value) => value.toMap()),
      'skippedDetail': pulumi.Input.mapInputValue<SkippedDetailResponse, Map<String, dynamic>>(skippedDetail, (value) => value.toMap()),
      'successDetail': pulumi.Input.mapInputValue<SuccessDetailResponse, Map<String, dynamic>>(successDetail, (value) => value.toMap()),
      'summary': summary,
    };
  }

  factory OutcomeResponse.fromMap(Map<String, dynamic> map) {
    return OutcomeResponse(
      failureDetail: (FailureDetailResponse.fromMap((map['failureDetail'] as Map).cast<String, dynamic>())).input(),
      inconclusiveDetail: (InconclusiveDetailResponse.fromMap((map['inconclusiveDetail'] as Map).cast<String, dynamic>())).input(),
      skippedDetail: (SkippedDetailResponse.fromMap((map['skippedDetail'] as Map).cast<String, dynamic>())).input(),
      successDetail: (SuccessDetailResponse.fromMap((map['successDetail'] as Map).cast<String, dynamic>())).input(),
      summary: (map['summary'] as String).input(),
    );
  }
}

