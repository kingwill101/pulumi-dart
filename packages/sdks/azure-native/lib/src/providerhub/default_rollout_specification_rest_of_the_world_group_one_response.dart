// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The rest of the world group one region configuration.
class DefaultRolloutSpecificationRestOfTheWorldGroupOneResponse {
  final pulumi.Input<List<String>?>? regions;
  /// The wait duration.
  final pulumi.Input<String?>? waitDuration;

  /// Creates a new [DefaultRolloutSpecificationRestOfTheWorldGroupOneResponse].
  /// [regions] Optional.
  /// [waitDuration] The wait duration.
  const DefaultRolloutSpecificationRestOfTheWorldGroupOneResponse({
    this.regions,
    this.waitDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regions': ?regions,
      'waitDuration': ?waitDuration,
    };
  }

  factory DefaultRolloutSpecificationRestOfTheWorldGroupOneResponse.fromMap(Map<String, dynamic> map) {
    return DefaultRolloutSpecificationRestOfTheWorldGroupOneResponse(
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      waitDuration: (() { final guardedValue = map['waitDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
