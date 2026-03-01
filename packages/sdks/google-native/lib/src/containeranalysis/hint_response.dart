// ignore_for_file: unused_element, unnecessary_cast


/// This submessage provides human-readable hints about the purpose of the authority. Because the name of a note acts as its resource reference, it is important to disambiguate the canonical name of the Note (which might be a UUID for security purposes) from "readable" names more suitable for debug output. Note that these hints should not be used to look up authorities in security sensitive contexts, such as when looking up attestations to verify.
class HintResponse {
  /// The human readable name of this attestation authority, for example "qa".
  final String humanReadableName;

  /// Creates a new [HintResponse].
  /// [humanReadableName] The human readable name of this attestation authority, for example "qa".
  HintResponse({
    required this.humanReadableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'humanReadableName': humanReadableName,
    };
  }

  factory HintResponse.fromMap(Map<String, dynamic> map) {
    return HintResponse(
      humanReadableName: map['humanReadableName'] as String,
    );
  }
}

