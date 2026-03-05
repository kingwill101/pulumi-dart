// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainFeaturesAia {
  /// Sets the value for AIA support, which may define its operational state or level of functionality.
  final pulumi.Input<String> value;

  /// Creates a new [DomainFeaturesAia].
  /// [value] Sets the value for AIA support, which may define its operational state or level of functionality.
  DomainFeaturesAia({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory DomainFeaturesAia.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesAia(
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

