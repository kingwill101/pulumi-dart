// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The user object receiver value.
class DistributionGroupListReceiverValueResponse {
  /// The list of distribution groups.
  final pulumi.Input<List<String>>? distributionGroups;

  /// Creates a new [DistributionGroupListReceiverValueResponse].
  /// [distributionGroups] The list of distribution groups.
  DistributionGroupListReceiverValueResponse({this.distributionGroups});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'distributionGroups': ?distributionGroups};
  }

  factory DistributionGroupListReceiverValueResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return DistributionGroupListReceiverValueResponse(
      distributionGroups: (() {
        final guardedValue = map['distributionGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
