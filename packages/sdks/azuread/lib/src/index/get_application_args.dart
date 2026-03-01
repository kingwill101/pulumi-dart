// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_application_get_application_args_doc}
/// Arguments for getApplication.
/// {@endtemplate}
/// {@macro pulumi_index_get_application_get_application_args_doc}
class GetApplicationArgs {
  /// Specifies the Client ID of the application.
  final pulumi.Input<String>? clientId;
  /// Specifies the display name of the application.
  final pulumi.Input<String>? displayName;
  /// Specifies any identifier URI of the application. See also the `identifier_uris` attribute which contains a list of all identifier URIs for the application.
  ///
  /// > One of `client_id`, `display_name`, `object_id`, or `identifier_uri` must be specified.
  final pulumi.Input<String>? identifierUri;
  /// Specifies the Object ID of the application.
  final pulumi.Input<String>? objectId;

  /// Creates a new [GetApplicationArgs].
  /// [clientId] Specifies the Client ID of the application.
  /// [displayName] Specifies the display name of the application.
  /// [identifierUri] Specifies any identifier URI of the application. See also the `identifier_uris` attribute which contains a list of all identifier URIs for the application.
  /// [objectId] Specifies the Object ID of the application.
  GetApplicationArgs({
    pulumi.Output<String>? clientId,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? identifierUri,
    pulumi.Output<String>? objectId,
  }) :
      clientId = pulumi.Input.asOptionalInput<String>(clientId),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      identifierUri = pulumi.Input.asOptionalInput<String>(identifierUri),
      objectId = pulumi.Input.asOptionalInput<String>(objectId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'displayName': ?displayName,
      'identifierUri': ?identifierUri,
      'objectId': ?objectId,
    };
  }

  factory GetApplicationArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationArgs(
      clientId: map['clientId'] == null ? null : pulumi.Output.create<String>(map['clientId'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      identifierUri: map['identifierUri'] == null ? null : pulumi.Output.create<String>(map['identifierUri'] as String),
      objectId: map['objectId'] == null ? null : pulumi.Output.create<String>(map['objectId'] as String),
    );
  }
}

