// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_required_resource_access_resource_access.dart';

class GetApplicationRequiredResourceAccess {
  /// A collection of `resource_access` blocks as documented below, describing OAuth2.0 permission scopes and app roles that the application requires from the specified resource.
  final pulumi.Input<List<GetApplicationRequiredResourceAccessResourceAccess>>
  resourceAccesses;

  /// The unique identifier for the resource that the application requires access to. This is the Application ID of the target application.
  final pulumi.Input<String> resourceAppId;

  /// Creates a new [GetApplicationRequiredResourceAccess].
  /// [resourceAccesses] A collection of `resource_access` blocks as documented below, describing OAuth2.0 permission scopes and app roles that the application requires from the specified resource.
  /// [resourceAppId] The unique identifier for the resource that the application requires access to. This is the Application ID of the target application.
  GetApplicationRequiredResourceAccess({
    required this.resourceAccesses,
    required this.resourceAppId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceAccesses':
          pulumi.Input.mapInputValue<
            List<GetApplicationRequiredResourceAccessResourceAccess>,
            List<Map<String, dynamic>>
          >(
            resourceAccesses,
            (value) =>
                pulumi.Input.encodeList<
                  GetApplicationRequiredResourceAccessResourceAccess,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceAppId': resourceAppId,
    };
  }

  factory GetApplicationRequiredResourceAccess.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetApplicationRequiredResourceAccess(
      resourceAccesses: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetApplicationRequiredResourceAccessResourceAccess
        >(
          map['resourceAccesses']!,
          (value) => GetApplicationRequiredResourceAccessResourceAccess.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      resourceAppId: pulumi.Input.fromValue(map['resourceAppId'] as String),
    );
  }
}
