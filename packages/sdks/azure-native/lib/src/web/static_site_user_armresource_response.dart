// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Static Site User ARM resource.
class StaticSiteUserARMResourceResponse {
  /// The display name for the static site user.
  final pulumi.Input<String> displayName;
  /// Resource Id.
  final pulumi.Input<String> id;
  /// Kind of resource.
  final pulumi.Input<String?>? kind;
  /// Resource Name.
  final pulumi.Input<String> name;
  /// The identity provider for the static site user.
  final pulumi.Input<String> provider;
  /// The roles for the static site user, in free-form string format
  final pulumi.Input<String?>? roles;
  /// Resource type.
  final pulumi.Input<String> type;
  /// The user id for the static site user.
  final pulumi.Input<String> userId;

  /// Creates a new [StaticSiteUserARMResourceResponse].
  /// [displayName] The display name for the static site user.
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [provider] The identity provider for the static site user.
  /// [roles] The roles for the static site user, in free-form string format
  /// [type] Resource type.
  /// [userId] The user id for the static site user.
  const StaticSiteUserARMResourceResponse({
    required this.displayName,
    required this.id,
    this.kind,
    required this.name,
    required this.provider,
    this.roles,
    required this.type,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'id': id,
      'kind': ?kind,
      'name': name,
      'provider': provider,
      'roles': ?roles,
      'type': type,
      'userId': userId,
    };
  }

  factory StaticSiteUserARMResourceResponse.fromMap(Map<String, dynamic> map) {
    return StaticSiteUserARMResourceResponse(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      provider: pulumi.Input.fromValue(map['provider'] as String),
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userId: pulumi.Input.fromValue(map['userId'] as String),
    );
  }
}
