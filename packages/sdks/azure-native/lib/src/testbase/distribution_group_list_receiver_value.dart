// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The user object receiver value.
class DistributionGroupListReceiverValue {
  /// The list of distribution groups.
  final pulumi.Input<List<String>>? distributionGroups;

  /// Creates a new [DistributionGroupListReceiverValue].
  /// [distributionGroups] The list of distribution groups.
  DistributionGroupListReceiverValue({
    this.distributionGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distributionGroups': ?distributionGroups,
    };
  }

  factory DistributionGroupListReceiverValue.fromMap(Map<String, dynamic> map) {
    return DistributionGroupListReceiverValue(
      distributionGroups: (() { final guardedValue = map['distributionGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

