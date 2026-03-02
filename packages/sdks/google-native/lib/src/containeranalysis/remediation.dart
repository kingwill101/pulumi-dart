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
  Remediation({
    this.details,
    this.remediationType,
    this.remediationUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': ?details,
      'remediationType': ?pulumi.Input.mapOptionalInputValue<RemediationRemediationType, String>(remediationType, (value) => value.value),
      'remediationUri': ?pulumi.Input.mapOptionalInputValue<RelatedUrl, Map<String, dynamic>>(remediationUri, (value) => value.toMap()),
    };
  }

  factory Remediation.fromMap(Map<String, dynamic> map) {
    return Remediation(
      details: map['details'] == null ? null : (map['details']! as String).input(),
      remediationType: map['remediationType'] == null ? null : (RemediationRemediationType.fromValue(map['remediationType']! as String)).input(),
      remediationUri: map['remediationUri'] == null ? null : (RelatedUrl.fromMap((map['remediationUri']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

