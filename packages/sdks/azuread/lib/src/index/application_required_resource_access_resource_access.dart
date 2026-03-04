// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationRequiredResourceAccessResourceAccess {
  /// The unique identifier for an app role or OAuth2 permission scope published by the resource application.
  final pulumi.Input<String> id;

  /// Specifies whether the `id` property references an app role or an OAuth2 permission scope. Possible values are `Role` or `Scope`.
  final pulumi.Input<String> type;

  /// Creates a new [ApplicationRequiredResourceAccessResourceAccess].
  /// [id] The unique identifier for an app role or OAuth2 permission scope published by the resource application.
  /// [type] Specifies whether the `id` property references an app role or an OAuth2 permission scope. Possible values are `Role` or `Scope`.
  ApplicationRequiredResourceAccessResourceAccess({
    required this.id,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'type': type};
  }

  factory ApplicationRequiredResourceAccessResourceAccess.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationRequiredResourceAccessResourceAccess(
      id: pulumi.Input.fromValue(map['id'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
