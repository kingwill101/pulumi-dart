// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource log category configuration of a Microsoft.SignalRService resource.
class ResourceLogCategoryResponse {
  /// Indicates whether or the resource log category is enabled.
  /// Available values: true, false.
  /// Case insensitive.
  final pulumi.Input<String>? enabled;
  /// Gets or sets the resource log category's name.
  /// Available values: ConnectivityLogs, MessagingLogs.
  /// Case insensitive.
  final pulumi.Input<String>? name;

  /// Creates a new [ResourceLogCategoryResponse].
  /// [enabled] Indicates whether or the resource log category is enabled.
  /// [name] Gets or sets the resource log category's name.
  const ResourceLogCategoryResponse({
    this.enabled,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'name': ?name,
    };
  }

  factory ResourceLogCategoryResponse.fromMap(Map<String, dynamic> map) {
    return ResourceLogCategoryResponse(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
