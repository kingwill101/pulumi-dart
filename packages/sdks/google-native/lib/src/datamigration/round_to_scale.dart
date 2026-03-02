// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This allows the data to change scale, for example if the source is 2 digits after the decimal point, specify round to scale value = 2. If for example the value needs to be converted to an integer, use round to scale value = 0.
class RoundToScale {
  /// Scale value to be used
  final pulumi.Input<int> scale;

  /// Creates a new [RoundToScale].
  /// [scale] Scale value to be used
  RoundToScale({
    required this.scale,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scale': scale,
    };
  }

  factory RoundToScale.fromMap(Map<String, dynamic> map) {
    return RoundToScale(
      scale: (map['scale'] as int).input(),
    );
  }
}

