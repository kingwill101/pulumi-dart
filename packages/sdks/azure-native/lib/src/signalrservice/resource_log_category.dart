// ignore_for_file: unused_element, unnecessary_cast


/// Resource log category configuration of a Microsoft.SignalRService resource.
class ResourceLogCategory {
  /// Indicates whether or the resource log category is enabled.
  /// Available values: true, false.
  /// Case insensitive.
  final String? enabled;
  /// Gets or sets the resource log category's name.
  /// Available values: ConnectivityLogs, MessagingLogs.
  /// Case insensitive.
  final String? name;

  /// Creates a new [ResourceLogCategory].
  /// [enabled] Indicates whether or the resource log category is enabled.
  /// [name] Gets or sets the resource log category's name.
  ResourceLogCategory({
    this.enabled,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'name': ?name,
    };
  }

  factory ResourceLogCategory.fromMap(Map<String, dynamic> map) {
    return ResourceLogCategory(
      enabled: map['enabled'] == null ? null : map['enabled'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

