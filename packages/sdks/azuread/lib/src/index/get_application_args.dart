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
  /// Specifies any identifier URI of the application. See also the `identifierUris` attribute which contains a list of all identifier URIs for the application.
  ///
  /// &gt; One of `clientId`, `displayName`, `objectId`, or `identifierUri` must be specified.
  final pulumi.Input<String>? identifierUri;
  /// Specifies the Object ID of the application.
  final pulumi.Input<String>? objectId;

  /// Creates a new [GetApplicationArgs].
  /// [clientId] Specifies the Client ID of the application.
  /// [displayName] Specifies the display name of the application.
  /// [identifierUri] Specifies any identifier URI of the application. See also the `identifierUris` attribute which contains a list of all identifier URIs for the application.
  /// [objectId] Specifies the Object ID of the application.
  const GetApplicationArgs({
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
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identifierUri: (() { final guardedValue = map['identifierUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
