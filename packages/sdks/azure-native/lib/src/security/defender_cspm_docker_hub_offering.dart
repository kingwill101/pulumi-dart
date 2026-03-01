// ignore_for_file: unused_element, unnecessary_cast


/// The Defender for CSPM Docker Hub offering configurations
class DefenderCspmDockerHubOffering {
  /// The type of the security offering.
  /// Expected value is 'DefenderCspmDockerHub'.
  final String offeringType;

  /// Creates a new [DefenderCspmDockerHubOffering].
  /// [offeringType] The type of the security offering.
  DefenderCspmDockerHubOffering({
    required this.offeringType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offeringType': offeringType,
    };
  }

  factory DefenderCspmDockerHubOffering.fromMap(Map<String, dynamic> map) {
    return DefenderCspmDockerHubOffering(
      offeringType: map['offeringType'] as String,
    );
  }
}

