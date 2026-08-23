// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'related_url.dart';
import 'remediation_remediation_type.dart';

/// Specifies details on how to handle (and presumably, fix) a vulnerability.
class Remediation {
  /// Contains a comprehensive human-readable discussion of the remediation.
  final pulumi.Input<String>? details;
  /// The type of remediation that can be applied.
  final pulumi.Input<RemediationRemediationType>? remediationType;
  /// Contains the URL where to obtain the remediation.
  final pulumi.Input<RelatedUrl>? remediationUri;

  /// Creates a new [Remediation].
  /// [details] Contains a comprehensive human-readable discussion of the remediation.
  /// [remediationType] The type of remediation that can be applied.
  /// [remediationUri] Contains the URL where to obtain the remediation.
  const Remediation({
    this.details,
    this.remediationType,
    this.remediationUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': ?details,
      'remediationType': ?pulumi.Input.mapOptionalInputValue<RemediationRemediationType, String>(remediationType, (value) => value.wireValue),
      'remediationUri': ?pulumi.Input.mapOptionalInputValue<RelatedUrl, Map<String, dynamic>>(remediationUri, (value) => value.toMap()),
    };
  }

  factory Remediation.fromMap(Map<String, dynamic> map) {
    return Remediation(
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remediationType: (() { final guardedValue = map['remediationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RemediationRemediationType.fromValue(guardedValue as String)); })(),
      remediationUri: (() { final guardedValue = map['remediationUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RelatedUrl.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
