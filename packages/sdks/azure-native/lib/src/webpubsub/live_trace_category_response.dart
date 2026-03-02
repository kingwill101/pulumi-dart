// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Live trace category configuration of a Microsoft.SignalRService resource.
class LiveTraceCategoryResponse {
  /// Indicates whether or the live trace category is enabled.
  /// Available values: true, false.
  /// Case insensitive.
  final pulumi.Input<String>? enabled;
  /// Gets or sets the live trace category's name.
  /// Available values: ConnectivityLogs, MessagingLogs.
  /// Case insensitive.
  final pulumi.Input<String>? name;

  /// Creates a new [LiveTraceCategoryResponse].
  /// [enabled] Indicates whether or the live trace category is enabled.
  /// [name] Gets or sets the live trace category's name.
  LiveTraceCategoryResponse({
    this.enabled,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'name': ?name,
    };
  }

  factory LiveTraceCategoryResponse.fromMap(Map<String, dynamic> map) {
    return LiveTraceCategoryResponse(
      enabled: map['enabled'] == null ? null : (map['enabled'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

