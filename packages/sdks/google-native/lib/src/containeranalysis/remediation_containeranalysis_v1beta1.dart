// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'related_url_containeranalysis_v1beta1.dart';
import 'remediation_remediation_type_containeranalysis_v1beta1.dart';

/// Specifies details on how to handle (and presumably, fix) a vulnerability.
class RemediationContaineranalysisV1beta1 {
  /// Contains a comprehensive human-readable discussion of the remediation.
  final pulumi.Input<String>? details;
  /// The type of remediation that can be applied.
  final pulumi.Input<RemediationRemediationTypeContaineranalysisV1beta1>? remediationType;
  /// Contains the URL where to obtain the remediation.
  final pulumi.Input<RelatedUrlContaineranalysisV1beta1>? remediationUri;

  /// Creates a new [RemediationContaineranalysisV1beta1].
  /// [details] Contains a comprehensive human-readable discussion of the remediation.
  /// [remediationType] The type of remediation that can be applied.
  /// [remediationUri] Contains the URL where to obtain the remediation.
  RemediationContaineranalysisV1beta1({
    this.details,
    this.remediationType,
    this.remediationUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': ?details,
      'remediationType': ?pulumi.Input.mapOptionalInputValue<RemediationRemediationTypeContaineranalysisV1beta1, String>(remediationType, (value) => value.wireValue),
      'remediationUri': ?pulumi.Input.mapOptionalInputValue<RelatedUrlContaineranalysisV1beta1, Map<String, dynamic>>(remediationUri, (value) => value.toMap()),
    };
  }

  factory RemediationContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return RemediationContaineranalysisV1beta1(
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remediationType: (() { final guardedValue = map['remediationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RemediationRemediationTypeContaineranalysisV1beta1.fromValue(guardedValue as String)); })(),
      remediationUri: (() { final guardedValue = map['remediationUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RelatedUrlContaineranalysisV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

