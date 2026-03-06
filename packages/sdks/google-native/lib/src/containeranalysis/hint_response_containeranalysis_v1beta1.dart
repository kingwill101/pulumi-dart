// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This submessage provides human-readable hints about the purpose of the authority. Because the name of a note acts as its resource reference, it is important to disambiguate the canonical name of the Note (which might be a UUID for security purposes) from "readable" names more suitable for debug output. Note that these hints should not be used to look up authorities in security sensitive contexts, such as when looking up attestations to verify.
class HintResponseContaineranalysisV1beta1 {
  /// The human readable name of this attestation authority, for example "qa".
  final pulumi.Input<String> humanReadableName;

  /// Creates a new [HintResponseContaineranalysisV1beta1].
  /// [humanReadableName] The human readable name of this attestation authority, for example "qa".
  const HintResponseContaineranalysisV1beta1({
    required this.humanReadableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'humanReadableName': humanReadableName,
    };
  }

  factory HintResponseContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return HintResponseContaineranalysisV1beta1(
      humanReadableName: pulumi.Input.fromValue(map['humanReadableName'] as String),
    );
  }
}

