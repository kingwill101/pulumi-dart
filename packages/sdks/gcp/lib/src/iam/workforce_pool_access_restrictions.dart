// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workforce_pool_access_restrictions_allowed_service.dart';

class WorkforcePoolAccessRestrictions {
  /// Services allowed for web sign-in with the workforce pool.
  /// If not set by default there are no restrictions.
  /// Structure is documented below.
  final pulumi.Input<List<WorkforcePoolAccessRestrictionsAllowedService>>? allowedServices;
  /// Disable programmatic sign-in by disabling token issue via the Security Token API endpoint.
  /// See [Security Token Service API](https://cloud.google.com/iam/docs/reference/sts/rest).
  final pulumi.Input<bool>? disableProgrammaticSignin;

  /// Creates a new [WorkforcePoolAccessRestrictions].
  /// [allowedServices] Services allowed for web sign-in with the workforce pool.
  /// [disableProgrammaticSignin] Disable programmatic sign-in by disabling token issue via the Security Token API endpoint.
  WorkforcePoolAccessRestrictions({
    this.allowedServices,
    this.disableProgrammaticSignin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedServices': ?pulumi.Input.mapOptionalInputValue<List<WorkforcePoolAccessRestrictionsAllowedService>, List<Map<String, dynamic>>>(allowedServices, (value) => pulumi.Input.encodeList<WorkforcePoolAccessRestrictionsAllowedService, Map<String, dynamic>>(value, (value) => value.toMap())),
      'disableProgrammaticSignin': ?disableProgrammaticSignin,
    };
  }

  factory WorkforcePoolAccessRestrictions.fromMap(Map<String, dynamic> map) {
    return WorkforcePoolAccessRestrictions(
      allowedServices: (() { final guardedValue = map['allowedServices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkforcePoolAccessRestrictionsAllowedService>(guardedValue, (value) => WorkforcePoolAccessRestrictionsAllowedService.fromMap((value as Map).cast<String, dynamic>()))); })(),
      disableProgrammaticSignin: (() { final guardedValue = map['disableProgrammaticSignin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

