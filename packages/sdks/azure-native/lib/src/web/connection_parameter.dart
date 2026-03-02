// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_oauth_settings.dart';
import 'connection_parameter_type.dart';

/// Connection provider parameters
class ConnectionParameter {
  /// OAuth settings for the connection provider
  final pulumi.Input<ApiOAuthSettings>? oAuthSettings;
  /// Type of the parameter
  final pulumi.Input<ConnectionParameterType>? type;

  /// Creates a new [ConnectionParameter].
  /// [oAuthSettings] OAuth settings for the connection provider
  /// [type] Type of the parameter
  ConnectionParameter({
    this.oAuthSettings,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oAuthSettings': ?pulumi.Input.mapOptionalInputValue<ApiOAuthSettings, Map<String, dynamic>>(oAuthSettings, (value) => value.toMap()),
      'type': ?pulumi.Input.mapOptionalInputValue<ConnectionParameterType, String>(type, (value) => value.value),
    };
  }

  factory ConnectionParameter.fromMap(Map<String, dynamic> map) {
    return ConnectionParameter(
      oAuthSettings: map['oAuthSettings'] == null ? null : (ApiOAuthSettings.fromMap((map['oAuthSettings']! as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (ConnectionParameterType.fromValue(map['type']! as String)).input(),
    );
  }
}

