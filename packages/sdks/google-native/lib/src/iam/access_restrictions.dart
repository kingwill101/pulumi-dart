// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_config.dart';

/// Access related restrictions on the workforce pool.
class AccessRestrictions {
  /// Optional. Immutable. Services allowed for web sign-in with the workforce pool. If not set by default there are no restrictions.
  final pulumi.Input<List<ServiceConfig>>? allowedServices;

  /// Optional. Disable programmatic sign-in by disabling token issue via the Security Token API endpoint. See [Security Token Service API] (https://cloud.google.com/iam/docs/reference/sts/rest).
  final pulumi.Input<bool>? disableProgrammaticSignin;

  /// Creates a new [AccessRestrictions].
  /// [allowedServices] Optional. Immutable. Services allowed for web sign-in with the workforce pool. If not set by default there are no restrictions.
  /// [disableProgrammaticSignin] Optional. Disable programmatic sign-in by disabling token issue via the Security Token API endpoint. See [Security Token Service API] (https://cloud.google.com/iam/docs/reference/sts/rest).
  AccessRestrictions({this.allowedServices, this.disableProgrammaticSignin});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedServices':
          ?pulumi.Input.mapOptionalInputValue<
            List<ServiceConfig>,
            List<Map<String, dynamic>>
          >(
            allowedServices,
            (value) =>
                pulumi.Input.encodeList<ServiceConfig, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'disableProgrammaticSignin': ?disableProgrammaticSignin,
    };
  }

  factory AccessRestrictions.fromMap(Map<String, dynamic> map) {
    return AccessRestrictions(
      allowedServices: (() {
        final guardedValue = map['allowedServices'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ServiceConfig>(
            guardedValue,
            (value) =>
                ServiceConfig.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      disableProgrammaticSignin: (() {
        final guardedValue = map['disableProgrammaticSignin'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
