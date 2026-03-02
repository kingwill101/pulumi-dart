// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This submessage provides human-readable hints about the purpose of the AttestationAuthority. Because the name of a Note acts as its resource reference, it is important to disambiguate the canonical name of the Note (which might be a UUID for security purposes) from "readable" names more suitable for debug output. Note that these hints should NOT be used to look up AttestationAuthorities in security sensitive contexts, such as when looking up Attestations to verify.
class AttestationAuthorityHint {
  /// The human readable name of this Attestation Authority, for example "qa".
  final pulumi.Input<String>? humanReadableName;

  /// Creates a new [AttestationAuthorityHint].
  /// [humanReadableName] The human readable name of this Attestation Authority, for example "qa".
  AttestationAuthorityHint({
    this.humanReadableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'humanReadableName': ?humanReadableName,
    };
  }

  factory AttestationAuthorityHint.fromMap(Map<String, dynamic> map) {
    return AttestationAuthorityHint(
      humanReadableName: map['humanReadableName'] == null ? null : (map['humanReadableName'] as String).input(),
    );
  }
}

