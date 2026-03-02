// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_v1alpha_get_app_connection_beyondcorp_v1alpha_args_doc}
/// Arguments for getAppConnection.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1alpha_get_app_connection_beyondcorp_v1alpha_args_doc}
class GetAppConnectionBeyondcorpV1alphaArgs {
  final pulumi.Input<String> appConnectionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAppConnectionBeyondcorpV1alphaArgs].
  /// [appConnectionId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetAppConnectionBeyondcorpV1alphaArgs({
    required this.appConnectionId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appConnectionId': appConnectionId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetAppConnectionBeyondcorpV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetAppConnectionBeyondcorpV1alphaArgs(
      appConnectionId: (map['appConnectionId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

