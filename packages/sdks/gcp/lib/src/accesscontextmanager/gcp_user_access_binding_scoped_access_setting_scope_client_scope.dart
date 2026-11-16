// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gcp_user_access_binding_scoped_access_setting_scope_client_scope_restricted_client_application.dart';
import 'gcp_user_access_binding_scoped_access_setting_scope_client_scope_restricted_project.dart';

class GcpUserAccessBindingScopedAccessSettingScopeClientScope {
  /// Optional. The application that is subject to this binding's scope. Only one of clientId or name should be specified.
  /// Structure is documented below.
  final pulumi.Input<GcpUserAccessBindingScopedAccessSettingScopeClientScopeRestrictedClientApplication?>? restrictedClientApplication;
  /// Optional. The Google Cloud project that is subject to this binding's scope.
  /// Structure is documented below.
  final pulumi.Input<GcpUserAccessBindingScopedAccessSettingScopeClientScopeRestrictedProject?>? restrictedProject;

  /// Creates a new [GcpUserAccessBindingScopedAccessSettingScopeClientScope].
  /// [restrictedClientApplication] Optional. The application that is subject to this binding's scope. Only one of clientId or name should be specified.
  /// [restrictedProject] Optional. The Google Cloud project that is subject to this binding's scope.
  const GcpUserAccessBindingScopedAccessSettingScopeClientScope({
    this.restrictedClientApplication,
    this.restrictedProject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'restrictedClientApplication': ?pulumi.Input.mapOptionalInputValue<GcpUserAccessBindingScopedAccessSettingScopeClientScopeRestrictedClientApplication, Map<String, dynamic>>(restrictedClientApplication, (value) => value.toMap()),
      'restrictedProject': ?pulumi.Input.mapOptionalInputValue<GcpUserAccessBindingScopedAccessSettingScopeClientScopeRestrictedProject, Map<String, dynamic>>(restrictedProject, (value) => value.toMap()),
    };
  }

  factory GcpUserAccessBindingScopedAccessSettingScopeClientScope.fromMap(Map<String, dynamic> map) {
    return GcpUserAccessBindingScopedAccessSettingScopeClientScope(
      restrictedClientApplication: (() { final guardedValue = map['restrictedClientApplication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpUserAccessBindingScopedAccessSettingScopeClientScopeRestrictedClientApplication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      restrictedProject: (() { final guardedValue = map['restrictedProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpUserAccessBindingScopedAccessSettingScopeClientScopeRestrictedProject.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
