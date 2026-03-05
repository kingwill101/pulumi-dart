// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GcpUserAccessBindingScopedAccessSettingScopeClientScopeRestrictedClientApplication {
  /// The OAuth client ID of the application.
  final pulumi.Input<String>? clientId;
  /// The name of the application. Example: "Cloud Console"
  final pulumi.Input<String>? name;

  /// Creates a new [GcpUserAccessBindingScopedAccessSettingScopeClientScopeRestrictedClientApplication].
  /// [clientId] The OAuth client ID of the application.
  /// [name] The name of the application. Example: "Cloud Console"
  GcpUserAccessBindingScopedAccessSettingScopeClientScopeRestrictedClientApplication({
    this.clientId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'name': ?name,
    };
  }

  factory GcpUserAccessBindingScopedAccessSettingScopeClientScopeRestrictedClientApplication.fromMap(Map<String, dynamic> map) {
    return GcpUserAccessBindingScopedAccessSettingScopeClientScopeRestrictedClientApplication(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

