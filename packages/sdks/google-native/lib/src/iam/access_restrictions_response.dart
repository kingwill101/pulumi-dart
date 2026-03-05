// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_config_response.dart';

/// Access related restrictions on the workforce pool.
class AccessRestrictionsResponse {
  /// Optional. Immutable. Services allowed for web sign-in with the workforce pool. If not set by default there are no restrictions.
  final pulumi.Input<List<ServiceConfigResponse>> allowedServices;
  /// Optional. Disable programmatic sign-in by disabling token issue via the Security Token API endpoint. See [Security Token Service API] (https://cloud.google.com/iam/docs/reference/sts/rest).
  final pulumi.Input<bool> disableProgrammaticSignin;

  /// Creates a new [AccessRestrictionsResponse].
  /// [allowedServices] Optional. Immutable. Services allowed for web sign-in with the workforce pool. If not set by default there are no restrictions.
  /// [disableProgrammaticSignin] Optional. Disable programmatic sign-in by disabling token issue via the Security Token API endpoint. See [Security Token Service API] (https://cloud.google.com/iam/docs/reference/sts/rest).
  AccessRestrictionsResponse({
    required this.allowedServices,
    required this.disableProgrammaticSignin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedServices': pulumi.Input.mapInputValue<List<ServiceConfigResponse>, List<Map<String, dynamic>>>(allowedServices, (value) => pulumi.Input.encodeList<ServiceConfigResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'disableProgrammaticSignin': disableProgrammaticSignin,
    };
  }

  factory AccessRestrictionsResponse.fromMap(Map<String, dynamic> map) {
    return AccessRestrictionsResponse(
      allowedServices: pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceConfigResponse>(map['allowedServices']!, (value) => ServiceConfigResponse.fromMap((value as Map).cast<String, dynamic>()))),
      disableProgrammaticSignin: pulumi.Input.fromValue(map['disableProgrammaticSignin'] as bool),
    );
  }
}

