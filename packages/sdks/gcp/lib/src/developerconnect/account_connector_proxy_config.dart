// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountConnectorProxyConfig {
  /// Setting this to true allows the git and http proxies to perform actions on
  /// behalf of the user configured under the account connector.
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [AccountConnectorProxyConfig].
  /// [enabled] Setting this to true allows the git and http proxies to perform actions on
  const AccountConnectorProxyConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory AccountConnectorProxyConfig.fromMap(Map<String, dynamic> map) {
    return AccountConnectorProxyConfig(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
