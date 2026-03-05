// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'remediation_remediation_type_containeranalysis_v1alpha1.dart';
import 'uri.dart';

/// Specifies details on how to handle (and presumably, fix) a vulnerability.
class RemediationContaineranalysisV1alpha1 {
  /// Contains a comprehensive human-readable discussion of the remediation.
  final pulumi.Input<String>? details;
  /// The type of remediation that can be applied.
  final pulumi.Input<RemediationRemediationTypeContaineranalysisV1alpha1>? remediationType;
  /// Contains the URL where to obtain the remediation.
  final pulumi.Input<URI>? remediationUri;

  /// Creates a new [RemediationContaineranalysisV1alpha1].
  /// [details] Contains a comprehensive human-readable discussion of the remediation.
  /// [remediationType] The type of remediation that can be applied.
  /// [remediationUri] Contains the URL where to obtain the remediation.
  RemediationContaineranalysisV1alpha1({
    this.details,
    this.remediationType,
    this.remediationUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': ?details,
      'remediationType': ?pulumi.Input.mapOptionalInputValue<RemediationRemediationTypeContaineranalysisV1alpha1, String>(remediationType, (value) => value.wireValue),
      'remediationUri': ?pulumi.Input.mapOptionalInputValue<URI, Map<String, dynamic>>(remediationUri, (value) => value.toMap()),
    };
  }

  factory RemediationContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return RemediationContaineranalysisV1alpha1(
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remediationType: (() { final guardedValue = map['remediationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RemediationRemediationTypeContaineranalysisV1alpha1.fromValue(guardedValue as String)); })(),
      remediationUri: (() { final guardedValue = map['remediationUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(URI.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

