// ignore_for_file: unused_element, unnecessary_cast


/// The user object receiver value.
class DistributionGroupListReceiverValueResponse {
  /// The list of distribution groups.
  final List<String>? distributionGroups;

  /// Creates a new [DistributionGroupListReceiverValueResponse].
  /// [distributionGroups] The list of distribution groups.
  DistributionGroupListReceiverValueResponse({
    this.distributionGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distributionGroups': ?distributionGroups,
    };
  }

  factory DistributionGroupListReceiverValueResponse.fromMap(Map<String, dynamic> map) {
    return DistributionGroupListReceiverValueResponse(
      distributionGroups: map['distributionGroups'] == null ? null : (map['distributionGroups'] as List).cast<String>(),
    );
  }
}

