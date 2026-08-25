// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gcp_user_access_binding_scoped_access_setting_scope_client_scope.dart';

class GcpUserAccessBindingScopedAccessSettingScope {
  /// Optional. Client scope for this access scope.
  /// Structure is documented below.
  final pulumi.Input<GcpUserAccessBindingScopedAccessSettingScopeClientScope?>? clientScope;

  /// Creates a new [GcpUserAccessBindingScopedAccessSettingScope].
  /// [clientScope] Optional. Client scope for this access scope.
  const GcpUserAccessBindingScopedAccessSettingScope({
    this.clientScope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientScope': ?pulumi.Input.mapOptionalInputValue<GcpUserAccessBindingScopedAccessSettingScopeClientScope, Map<String, dynamic>>(clientScope, (value) => value.toMap()),
    };
  }

  factory GcpUserAccessBindingScopedAccessSettingScope.fromMap(Map<String, dynamic> map) {
    return GcpUserAccessBindingScopedAccessSettingScope(
      clientScope: (() { final guardedValue = map['clientScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpUserAccessBindingScopedAccessSettingScopeClientScope.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
