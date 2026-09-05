// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeaturesPostgresqlFlexibleServer {
  final pulumi.Input<bool?>? restartServerOnConfigurationValueChange;

  /// Creates a new [FeaturesPostgresqlFlexibleServer].
  /// [restartServerOnConfigurationValueChange] Optional.
  const FeaturesPostgresqlFlexibleServer({
    this.restartServerOnConfigurationValueChange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'restartServerOnConfigurationValueChange': ?restartServerOnConfigurationValueChange,
    };
  }

  factory FeaturesPostgresqlFlexibleServer.fromMap(Map<String, dynamic> map) {
    return FeaturesPostgresqlFlexibleServer(
      restartServerOnConfigurationValueChange: (() { final guardedValue = map['restartServerOnConfigurationValueChange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
