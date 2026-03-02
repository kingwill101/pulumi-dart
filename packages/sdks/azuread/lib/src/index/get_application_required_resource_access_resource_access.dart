// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationRequiredResourceAccessResourceAccess {
  /// The unique identifier for an app role or OAuth2 permission scope published by the resource application.
  final pulumi.Input<String> id;
  /// Specifies whether the `id` property references an app role or an OAuth2 permission scope. Possible values are `Role` or `Scope`.
  final pulumi.Input<String> type;

  /// Creates a new [GetApplicationRequiredResourceAccessResourceAccess].
  /// [id] The unique identifier for an app role or OAuth2 permission scope published by the resource application.
  /// [type] Specifies whether the `id` property references an app role or an OAuth2 permission scope. Possible values are `Role` or `Scope`.
  GetApplicationRequiredResourceAccessResourceAccess({
    required this.id,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'type': type,
    };
  }

  factory GetApplicationRequiredResourceAccessResourceAccess.fromMap(Map<String, dynamic> map) {
    return GetApplicationRequiredResourceAccessResourceAccess(
      id: (map['id'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

