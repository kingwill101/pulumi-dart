// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'related_url_response.dart';

/// Specifies details on how to handle (and presumably, fix) a vulnerability.
class RemediationResponse {
  /// Contains a comprehensive human-readable discussion of the remediation.
  final pulumi.Input<String> details;
  /// The type of remediation that can be applied.
  final pulumi.Input<String> remediationType;
  /// Contains the URL where to obtain the remediation.
  final pulumi.Input<RelatedUrlResponse> remediationUri;

  /// Creates a new [RemediationResponse].
  /// [details] Contains a comprehensive human-readable discussion of the remediation.
  /// [remediationType] The type of remediation that can be applied.
  /// [remediationUri] Contains the URL where to obtain the remediation.
  const RemediationResponse({
    required this.details,
    required this.remediationType,
    required this.remediationUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': details,
      'remediationType': remediationType,
      'remediationUri': pulumi.Input.mapInputValue<RelatedUrlResponse, Map<String, dynamic>>(remediationUri, (value) => value.toMap()),
    };
  }

  factory RemediationResponse.fromMap(Map<String, dynamic> map) {
    return RemediationResponse(
      details: pulumi.Input.fromValue(map['details'] as String),
      remediationType: pulumi.Input.fromValue(map['remediationType'] as String),
      remediationUri: pulumi.Input.fromValue(RelatedUrlResponse.fromMap((map['remediationUri']! as Map).cast<String, dynamic>())),
    );
  }
}
