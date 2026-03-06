// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainFeaturesCfpc {
  /// Sets the specific value associated with the CFPC feature.
  final pulumi.Input<String> value;

  /// Creates a new [DomainFeaturesCfpc].
  /// [value] Sets the specific value associated with the CFPC feature.
  const DomainFeaturesCfpc({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory DomainFeaturesCfpc.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesCfpc(
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

