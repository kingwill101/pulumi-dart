// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_oauth_settings.dart';
import 'connection_parameter_type.dart';

/// Connection provider parameters
class ConnectionParameter {
  /// OAuth settings for the connection provider
  final pulumi.Input<ApiOAuthSettings?>? oAuthSettings;
  /// Type of the parameter
  final pulumi.Input<ConnectionParameterType?>? type;

  /// Creates a new [ConnectionParameter].
  /// [oAuthSettings] OAuth settings for the connection provider
  /// [type] Type of the parameter
  const ConnectionParameter({
    this.oAuthSettings,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oAuthSettings': ?pulumi.Input.mapOptionalInputValue<ApiOAuthSettings, Map<String, dynamic>>(oAuthSettings, (value) => value.toMap()),
      'type': ?pulumi.Input.mapOptionalInputValue<ConnectionParameterType, String>(type, (value) => value.wireValue),
    };
  }

  factory ConnectionParameter.fromMap(Map<String, dynamic> map) {
    return ConnectionParameter(
      oAuthSettings: (() { final guardedValue = map['oAuthSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiOAuthSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionParameterType.fromValue(guardedValue as String)); })(),
    );
  }
}
