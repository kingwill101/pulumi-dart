// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Required permissions for the connector resource provider that define in ResourceProviders.
/// For more information about the permissions see &lt;see href="https://docs.microsoft.com/en-us/azure/role-based-access-control/role-definitions#actions-format"&gt;here&lt;/see&gt;.
class ResourceProviderRequiredPermissionsResponse {
  /// Gets or sets a value indicating whether the permission is custom actions (POST).
  final pulumi.Input<bool>? action;
  /// Gets or sets a value indicating whether the permission is delete action (DELETE).
  final pulumi.Input<bool>? delete;
  /// Gets or sets a value indicating whether the permission is read action (GET).
  final pulumi.Input<bool>? read;
  /// Gets or sets a value indicating whether the permission is write action (PUT or PATCH).
  final pulumi.Input<bool>? write;

  /// Creates a new [ResourceProviderRequiredPermissionsResponse].
  /// [action] Gets or sets a value indicating whether the permission is custom actions (POST).
  /// [delete] Gets or sets a value indicating whether the permission is delete action (DELETE).
  /// [read] Gets or sets a value indicating whether the permission is read action (GET).
  /// [write] Gets or sets a value indicating whether the permission is write action (PUT or PATCH).
  const ResourceProviderRequiredPermissionsResponse({
    this.action,
    this.delete,
    this.read,
    this.write,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'delete': ?delete,
      'read': ?read,
      'write': ?write,
    };
  }

  factory ResourceProviderRequiredPermissionsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceProviderRequiredPermissionsResponse(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      delete: (() { final guardedValue = map['delete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      read: (() { final guardedValue = map['read']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      write: (() { final guardedValue = map['write']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
