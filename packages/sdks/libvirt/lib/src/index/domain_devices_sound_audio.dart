// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesSoundAudio {
  /// This field sets the identifier for the audio configuration in the sound device of the domain.
  final pulumi.Input<double> id;

  /// Creates a new [DomainDevicesSoundAudio].
  /// [id] This field sets the identifier for the audio configuration in the sound device of the domain.
  const DomainDevicesSoundAudio({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory DomainDevicesSoundAudio.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSoundAudio(
      id: pulumi.Input.fromValue((map['id'] as num).toDouble()),
    );
  }
}
