// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProviderFeaturesPostgresqlFlexibleServer {
  final pulumi.Input<bool>? restartServerOnConfigurationValueChange;

  /// Creates a new [ProviderFeaturesPostgresqlFlexibleServer].
  /// [restartServerOnConfigurationValueChange] Optional.
  ProviderFeaturesPostgresqlFlexibleServer({
    this.restartServerOnConfigurationValueChange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'restartServerOnConfigurationValueChange':
          ?restartServerOnConfigurationValueChange,
    };
  }

  factory ProviderFeaturesPostgresqlFlexibleServer.fromMap(
    Map<String, dynamic> map,
  ) {
    return ProviderFeaturesPostgresqlFlexibleServer(
      restartServerOnConfigurationValueChange: (() {
        final guardedValue = map['restartServerOnConfigurationValueChange'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
