// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The rest of the world group two region configuration.
class DefaultRolloutSpecificationRestOfTheWorldGroupTwoResponse {
  final pulumi.Input<List<String>>? regions;
  /// The wait duration.
  final pulumi.Input<String>? waitDuration;

  /// Creates a new [DefaultRolloutSpecificationRestOfTheWorldGroupTwoResponse].
  /// [regions] Optional.
  /// [waitDuration] The wait duration.
  DefaultRolloutSpecificationRestOfTheWorldGroupTwoResponse({
    this.regions,
    this.waitDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regions': ?regions,
      'waitDuration': ?waitDuration,
    };
  }

  factory DefaultRolloutSpecificationRestOfTheWorldGroupTwoResponse.fromMap(Map<String, dynamic> map) {
    return DefaultRolloutSpecificationRestOfTheWorldGroupTwoResponse(
      regions: map['regions'] == null ? null : ((map['regions'] as List).cast<String>()).input(),
      waitDuration: map['waitDuration'] == null ? null : (map['waitDuration'] as String).input(),
    );
  }
}

