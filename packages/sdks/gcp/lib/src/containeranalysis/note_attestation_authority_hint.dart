// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NoteAttestationAuthorityHint {
  /// The human readable name of this Attestation Authority, for
  /// example "qa".
  final pulumi.Input<String> humanReadableName;

  /// Creates a new [NoteAttestationAuthorityHint].
  /// [humanReadableName] The human readable name of this Attestation Authority, for
  NoteAttestationAuthorityHint({required this.humanReadableName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'humanReadableName': humanReadableName};
  }

  factory NoteAttestationAuthorityHint.fromMap(Map<String, dynamic> map) {
    return NoteAttestationAuthorityHint(
      humanReadableName: pulumi.Input.fromValue(
        map['humanReadableName'] as String,
      ),
    );
  }
}
