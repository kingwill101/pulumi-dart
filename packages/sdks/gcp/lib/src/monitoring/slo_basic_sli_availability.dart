// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SloBasicSliAvailability {
  /// Whether an availability SLI is enabled or not. Must be set to `true. Defaults to `true`.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [SloBasicSliAvailability].
  /// [enabled] Whether an availability SLI is enabled or not. Must be set to `true. Defaults to `true`.
  SloBasicSliAvailability({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory SloBasicSliAvailability.fromMap(Map<String, dynamic> map) {
    return SloBasicSliAvailability(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
    );
  }
}

