// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'related_url_response_containeranalysis_v1beta1.dart';

/// Specifies details on how to handle (and presumably, fix) a vulnerability.
class RemediationResponseContaineranalysisV1beta1 {
  /// Contains a comprehensive human-readable discussion of the remediation.
  final pulumi.Input<String> details;

  /// The type of remediation that can be applied.
  final pulumi.Input<String> remediationType;

  /// Contains the URL where to obtain the remediation.
  final pulumi.Input<RelatedUrlResponseContaineranalysisV1beta1> remediationUri;

  /// Creates a new [RemediationResponseContaineranalysisV1beta1].
  /// [details] Contains a comprehensive human-readable discussion of the remediation.
  /// [remediationType] The type of remediation that can be applied.
  /// [remediationUri] Contains the URL where to obtain the remediation.
  RemediationResponseContaineranalysisV1beta1({
    required this.details,
    required this.remediationType,
    required this.remediationUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': details,
      'remediationType': remediationType,
      'remediationUri':
          pulumi.Input.mapInputValue<
            RelatedUrlResponseContaineranalysisV1beta1,
            Map<String, dynamic>
          >(remediationUri, (value) => value.toMap()),
    };
  }

  factory RemediationResponseContaineranalysisV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return RemediationResponseContaineranalysisV1beta1(
      details: pulumi.Input.fromValue(map['details'] as String),
      remediationType: pulumi.Input.fromValue(map['remediationType'] as String),
      remediationUri: pulumi.Input.fromValue(
        RelatedUrlResponseContaineranalysisV1beta1.fromMap(
          (map['remediationUri']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
