// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'non_compliant_file_response.dart';

/// An indication that the compliance checks in the associated ComplianceNote were not satisfied for particular resources or a specified reason.
class ComplianceOccurrenceResponse {
  final pulumi.Input<String> nonComplianceReason;
  final pulumi.Input<List<NonCompliantFileResponse>> nonCompliantFiles;

  /// Creates a new [ComplianceOccurrenceResponse].
  /// [nonComplianceReason] Required.
  /// [nonCompliantFiles] Required.
  const ComplianceOccurrenceResponse({
    required this.nonComplianceReason,
    required this.nonCompliantFiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nonComplianceReason': nonComplianceReason,
      'nonCompliantFiles': pulumi.Input.mapInputValue<List<NonCompliantFileResponse>, List<Map<String, dynamic>>>(nonCompliantFiles, (value) => pulumi.Input.encodeList<NonCompliantFileResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ComplianceOccurrenceResponse.fromMap(Map<String, dynamic> map) {
    return ComplianceOccurrenceResponse(
      nonComplianceReason: pulumi.Input.fromValue(map['nonComplianceReason'] as String),
      nonCompliantFiles: pulumi.Input.fromValue(pulumi.Input.decodeList<NonCompliantFileResponse>(map['nonCompliantFiles']!, (value) => NonCompliantFileResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
