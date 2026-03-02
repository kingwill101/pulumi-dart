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
    this.clientId,
    this.displayName,
    this.identifierUri,
    this.objectId,
  });

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
      clientId: map['clientId'] == null ? null : (map['clientId']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      identifierUri: map['identifierUri'] == null ? null : (map['identifierUri']! as String).input(),
      objectId: map['objectId'] == null ? null : (map['objectId']! as String).input(),
    );
  }
}

