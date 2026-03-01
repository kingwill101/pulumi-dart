// ignore_for_file: unused_element, unnecessary_cast


/// The Defender for Containers for JFrog Artifactory offering
class DefenderForContainersJFrogOffering {
  /// The type of the security offering.
  /// Expected value is 'DefenderForContainersJFrog'.
  final String offeringType;

  /// Creates a new [DefenderForContainersJFrogOffering].
  /// [offeringType] The type of the security offering.
  DefenderForContainersJFrogOffering({
    required this.offeringType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offeringType': offeringType,
    };
  }

  factory DefenderForContainersJFrogOffering.fromMap(Map<String, dynamic> map) {
    return DefenderForContainersJFrogOffering(
      offeringType: map['offeringType'] as String,
    );
  }
}

