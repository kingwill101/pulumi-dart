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
  /// > One of `client_id`, `display_name` or `object_id` must be specified.
  final pulumi.Input<String>? objectId;

  /// Creates a new [GetServicePrincipalArgs].
  /// [clientId] The client ID of the application associated with this service principal.
  /// [displayName] The display name of the application associated with this service principal.
  /// [objectId] The object ID of the service principal.
  GetServicePrincipalArgs({
    pulumi.Output<String>? clientId,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? objectId,
  }) :
      clientId = pulumi.Input.asOptionalInput<String>(clientId),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      objectId = pulumi.Input.asOptionalInput<String>(objectId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'displayName': ?displayName,
      'objectId': ?objectId,
    };
  }

  factory GetServicePrincipalArgs.fromMap(Map<String, dynamic> map) {
    return GetServicePrincipalArgs(
      clientId: map['clientId'] == null ? null : pulumi.Output.create<String>(map['clientId'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      objectId: map['objectId'] == null ? null : pulumi.Output.create<String>(map['objectId'] as String),
    );
  }
}

