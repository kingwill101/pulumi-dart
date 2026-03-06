// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_service_principal_get_service_principal_args_doc}
/// Arguments for getServicePrincipal.
/// {@endtemplate}
/// {@macro pulumi_index_get_service_principal_get_service_principal_args_doc}
class GetServicePrincipalArgs {
  /// The client ID of the application associated with this service principal.
  final pulumi.Input<String>? clientId;
  /// The display name of the application associated with this service principal.
  final pulumi.Input<String>? displayName;
  /// The object ID of the service principal.
  ///
  /// &gt; One of `client_id`, `display_name` or `object_id` must be specified.
  final pulumi.Input<String>? objectId;

  /// Creates a new [GetServicePrincipalArgs].
  /// [clientId] The client ID of the application associated with this service principal.
  /// [displayName] The display name of the application associated with this service principal.
  /// [objectId] The object ID of the service principal.
  const GetServicePrincipalArgs({
    this.clientId,
    this.displayName,
    this.objectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'displayName': ?displayName,
      'objectId': ?objectId,
    };
  }

  factory GetServicePrincipalArgs.fromMap(Map<String, dynamic> map) {
    return GetServicePrincipalArgs(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

