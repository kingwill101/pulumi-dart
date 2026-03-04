// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AddonsConfigAddonsConfigMonetizationConfig {
  /// Flag that specifies whether the Monetization add-on is enabled.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [AddonsConfigAddonsConfigMonetizationConfig].
  /// [enabled] Flag that specifies whether the Monetization add-on is enabled.
  AddonsConfigAddonsConfigMonetizationConfig({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory AddonsConfigAddonsConfigMonetizationConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return AddonsConfigAddonsConfigMonetizationConfig(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
