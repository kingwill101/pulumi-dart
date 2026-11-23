// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeXHybridConfigEnvironmentFilter {
  /// Indicates if this filter should match all environments or only a subset of environments.
  final pulumi.Input<bool?>? allEnvironments;
  /// If provided, only environments in this list are matched.
  final pulumi.Input<List<String>?>? environments;

  /// Creates a new [AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeXHybridConfigEnvironmentFilter].
  /// [allEnvironments] Indicates if this filter should match all environments or only a subset of environments.
  /// [environments] If provided, only environments in this list are matched.
  const AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeXHybridConfigEnvironmentFilter({
    this.allEnvironments,
    this.environments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allEnvironments': ?allEnvironments,
      'environments': ?environments,
    };
  }

  factory AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeXHybridConfigEnvironmentFilter.fromMap(Map<String, dynamic> map) {
    return AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeXHybridConfigEnvironmentFilter(
      allEnvironments: (() { final guardedValue = map['allEnvironments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      environments: (() { final guardedValue = map['environments']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
